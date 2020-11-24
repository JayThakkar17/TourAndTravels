using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class frmPlane_M : System.Web.UI.Page
{
    General_Function gf = new General_Function();

    db_conn cn = new db_conn();

    protected void Page_Load(object sender, EventArgs e)
    {
        btncancel.Enabled = true;
        btnsave.Enabled = true;
        btnupdate.Enabled = false;
        btndelete.Enabled = false;
        
        
           
            bindgrid();
           
            
    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        string qry = " insert into Plane_M values ('" + txtname.Text + "','" + txtbusineesseat.Text + "','" + txteconomyseat.Text + "')";
        cn.modify(qry);
        bindgrid();
        Response.Write("<script>alert('Record inserted ')</script");
        clearall();
    }
    void bindgrid()
    {
        DataSet ds = new DataSet();
        ds = cn.select("select Plane_M.Plane_Id,Plane_Name,Business_Seat,Economy_Seat from Plane_M");
        gf.fill_grid(ds, grdplane_m);
    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        Response.Write("<script>alert('Record Cleared ')</script");
        clearall();
    }
    public void clearall()
    {
        txtname.Text="";
        txtbusineesseat.Text = "";
        txteconomyseat.Text = "";
    }
    protected void grd2_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        try
        {
            if (e.CommandName == "Plane_Id")
            {
                string ecode = e.CommandArgument.ToString();
                planeid.Value = ecode.ToString();
                string str3 = "select * from Plane_M WHERE Plane_Id ='" + ecode + "' ";
                DataSet ds = new DataSet();
                ds = cn.select(str3);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    txtname.Text = ds.Tables[0].Rows[0]["Plane_Name"].ToString();
                    txtbusineesseat.Text = ds.Tables[0].Rows[0]["Business_Seat"].ToString();
                    txteconomyseat.Text = ds.Tables[0].Rows[0]["Economy_Seat"].ToString();
                    btncancel.Enabled = false;
                    btnsave.Enabled = false;
                    btnupdate.Enabled = true;
                    btndelete.Enabled = true;


                }


            }
        }
        catch
        {
        }

    }

    protected void btnupdate_Click(object sender, EventArgs e)
    {
        string qry = "update Plane_M set Plane_Name='" + txtname.Text + "' where Plane_Id='" + planeid.Value + "' ";
        cn.modify(qry);
        bindgrid();
        Response.Write("<script>alert('Record Upadated ')</script");
        

    }
    protected void btndelete_Click(object sender, EventArgs e)
    {
        string qry = "delete from Plane_M where Plane_Id='" + planeid.Value + "' ";
        cn.modify(qry);
        bindgrid();
        Response.Write("<script>alert('Record Deleted ')</script");
        clearall();
    }
}