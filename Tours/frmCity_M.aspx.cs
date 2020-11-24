using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class frmCity_M : System.Web.UI.Page
{
    General_Function gf = new General_Function();

    db_conn cn = new db_conn();
    protected void Page_Load(object sender, EventArgs e)
    {
        btncancel.Enabled = true;
        btnsave.Enabled = true;
        btnupdate.Style.Add("enabled", "false");

        btndelete.Style.Add("enabled", "false");
        //btnupdate.Enabled = false;
        //btndelete.Enabled = false;
        if (!IsPostBack)
        {
            binddropdown();
            bindgrid();
        }
    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        string qry = "insert into City_M values('" + txtname.Text + "','" + ddlstatename.SelectedValue + "')";
        cn.modify(qry);
        bindgrid();
        Response.Write("<script>alert('Record inserted ')</script");
        clearall();
    }

    void binddropdown()
    {
        try
        {


            gf.fillcombo("select State_Id,State_Name from State_M", ddlstatename, "State_Name", "State_Id", "select");
        }

        catch
        {
        }
    }
    void bindgrid()
    {
        DataSet ds = new DataSet();
        ds = cn.select("select City_M.City_Id 'City Id',City_Name 'City Name', State_Name 'State Name' from City_M,State_M where City_M.State_Id=State_M.State_Id");
        gf.fill_grid(ds, grdcity_m);
    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        Response.Write("<script>alert('Record cleared ')</script");
         clearall();
    }

    public  void clearall()
    {
        txtname.Text="";
    }
    protected void grd2_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        try
        {
            if (e.CommandName == "City_Id")
            {
                string ecode = e.CommandArgument.ToString();
                cityid.Value = ecode.ToString();
                string str3 = "select * from City_M WHERE City_Id ='" + ecode + "' ";
                DataSet ds = new DataSet();
                ds = cn.select(str3);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    btncancel.Enabled = false;
                    btnsave.Enabled = false;
                    btnupdate.Enabled = true;
                    btndelete.Enabled = true;
                    txtname.Text = ds.Tables[0].Rows[0]["City_Name"].ToString();
                    ddlstatename.SelectedValue = ds.Tables[0].Rows[0]["State_Id"].ToString();

                    


                }


            }
        }
        catch
        {
        }

    }


    protected void btnupdate_Click(object sender, EventArgs e)
    {
        string qry = "update City_M set City_Name='" + txtname.Text + "',State_Id='" + ddlstatename.SelectedValue + "' where City_Id='" + cityid.Value + "' ";
        cn.modify(qry);
        bindgrid();
        Response.Write("<script>alert('Record Updated ')</script");
        clearall();
    }
    protected void btndelete_Click(object sender, EventArgs e)
    {
        string qry = "delete from City_M where City_Id='" + cityid.Value + "' ";
        cn.modify(qry);
        bindgrid();
        Response.Write("<script>alert('Record deleted ')</script");
        clearall();

    }
}