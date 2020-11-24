using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


public partial class frmCar_M : System.Web.UI.Page
{
    General_Function gf = new General_Function();

    db_conn cn = new db_conn();
    protected void Page_Load(object sender, EventArgs e)
    {
        btncancel.Enabled = true;
        btnsave.Enabled = true;
        btnupdate.Enabled = false;
        btndelete.Enabled = false;
        if (!IsPostBack)
        {
            bindgrid();
        }
    }
   
   
    void bindgrid()
    {
        DataSet ds = new DataSet();
        ds = cn.select("select Car_M.Car_Id ,Car_Details,Fuel_Type,Car_Name,Car_Registrationnumber from Car_M");
        gf.fill_grid(ds, grdcar_m);
    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        Response.Write("<script>alert('Record Cleared ')</script");
        clearall();
    }
    public void clearall()
    {
       ddldetails.SelectedValue = "";
       ddlfueltype.SelectedValue = "";
       txtname.Text = "";
       txtregistrationnumber.Text = "";
    }


    protected void btnsave_Click1(object sender, EventArgs e)
    {
        string qry = "insert into Car_M values('" + ddldetails.SelectedItem + "','" + ddlfueltype.SelectedItem + "','" + txtname.Text + "','" + txtregistrationnumber.Text + "')";
        cn.modify(qry);
        bindgrid();
        Response.Write("<script>alert('Record inserted ')</script");
        clearall();
    }
    protected void grd2_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        try
        {
            if (e.CommandName == "Car_Id")
            {
                string ecode = e.CommandArgument.ToString();
                carid.Value = ecode.ToString();
                string str3 = "select * from  Car_M WHERE Car_Id ='" + ecode + "' ";
                DataSet ds = new DataSet();
                ds = cn.select(str3);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    btncancel.Enabled = false;
                    btnsave.Enabled = false;
                    btnupdate.Enabled = true;
                    btndelete.Enabled = true;
                    ddldetails.SelectedValue= ds.Tables[0].Rows[0]["Car_Details"].ToString();
                    ddlfueltype.SelectedValue= ds.Tables[0].Rows[0]["Fuel_Type"].ToString();
                    txtname.Text = ds.Tables[0].Rows[0]["Car_Name"].ToString();
                    txtregistrationnumber.Text = ds.Tables[0].Rows[0]["Car_Registrationnumber"].ToString();
                    
                   


                }


            }
        }
        catch
        {
        }

    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        string qry = "update Car_M set Car_Details='" +ddldetails.SelectedValue + "',Fuel_Type='" +ddlfueltype.SelectedValue + "', Car_Name='" + txtname.Text + "',Car_Registrationnumber='" +txtregistrationnumber.Text + "' where Car_Id='" + carid.Value + "' ";
        cn.modify(qry);
        bindgrid();
        Response.Write("<script>alert('Record Updated ')</script");
        clearall();
    }
    protected void btndelete_Click(object sender, EventArgs e)
    {
        string qry = "delete from Car_M where Car_Id='" + carid.Value + "' ";
        cn.modify(qry);
        bindgrid();
        Response.Write("<script>alert('Record Deleted ')</script");
        clearall();
        
    }
}