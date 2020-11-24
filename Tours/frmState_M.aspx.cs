using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class frmState_M : System.Web.UI.Page
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
    protected void btnsave_Click(object sender, EventArgs e)
    {
        string qry = "insert into State_M(State_Name) values('" + txtname.Text + "')";
        cn.modify(qry);
        bindgrid();
        Response.Write("<script>alert('Record inserted ')</script");
        clearall();
    }
    void bindgrid()
    {
        DataSet ds = new DataSet();
        ds = cn.select("select State_M.State_Id 'State_Id',State_Name 'State_Name' from State_M");
        gf.fill_grid(ds,grdstate_m);
    }

    protected void btncancel_Click(object sender, EventArgs e)
    {
        Response.Write("<script>alert('Record Cleared ')</script");
        clearall();
    }
    public void clearall()
    {
        txtname.Text = "";
    }
    protected void grd2_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        try
        {
            if (e.CommandName == "State_Id")
            {
                string ecode = e.CommandArgument.ToString();
                Stateid.Value = ecode.ToString();
                string str3 = "select * from State_M WHERE State_Id ='" + ecode + "' ";
                DataSet ds = new DataSet();
                ds = cn.select(str3);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    btncancel.Enabled = false;
                    btnsave.Enabled = false;
                    btnupdate.Enabled = true;
                    btndelete.Enabled = true;
                    txtname.Text = ds.Tables[0].Rows[0]["State_Name"].ToString();
                   


                }


            }
        }
        catch
        {
        }

    }



    protected void btnupdate_Click(object sender, EventArgs e)
    {
        string qry = "update State_M set State_Name='" + txtname.Text + "' where State_Id='" + Stateid.Value + "' ";
        cn.modify(qry);
        bindgrid();
        Response.Write("<script>alert('Record Updated ')</script");
        clearall();
    }
    protected void btndelete_Click(object sender, EventArgs e)
    {
        string qry = "delete from State_M where State_Id='" + Stateid.Value + "' ";
        cn.modify(qry);
        bindgrid();
        Response.Write("<script>alert('Record Deleted ')</script");
        clearall();

    }
    
}
