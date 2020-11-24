using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class frmPackage_M : System.Web.UI.Page
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
            binddropdown();
            bindgrid();
           
        }
    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        string qry = " insert into Package_M(Package_Name,Price,No_Of_Days,City_Id,Type,Travel_Mode) values('" + txtpackagename.Text + "'," + txtprice.Text + ",'" + txtnoofdays.Text + "','" + ddlcityid.SelectedValue + "','" + txtpackagetype.Text + "','" + ddltravelmode.SelectedItem  + "')";
        cn.modify(qry);
        bindgrid();
        Response.Write("<script>alert('Record inserted ')</script");
        clearall();
    }
    void binddropdown()
    {
        try
        {

            General_Function gf = new General_Function();

            db_conn cn = new db_conn();
            gf.fillcombo("select City_Id,City_Name from City_M", ddlcityid, "City_Name", "City_Id", "select");
            gf.fillcombo("select Hotel_Id,Hotel_Name from Hotel_M", ddlhotelid, "Hotel_Name", "Hotel_Id", "select");
            
        }
        catch
        {
        }



    }
    void bindgrid()
    {
        DataSet ds = new DataSet();
        ds = cn.select("select Package_M.Package_Id,Package_Name,Price,No_Of_Days,City_Id,Type,Travel_Mode,Hotel_id from Package_M");
        gf.fill_grid(ds, grdpackage_m);
    }

    protected void btncancel_Click(object sender, EventArgs e)
    {
        Response.Write("<script>alert('Record Cleared ')</script");
        clearall();
    }
    public void clearall()
    {
        txtpackagename.Text = "";
        txtprice.Text = "";
        txtnoofdays.Text = "";
        txtpackagetype.Text = "";
        
    }

    protected void grd2_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        try
        {
            if (e.CommandName == "Package_Id")
            {
                string ecode = e.CommandArgument.ToString();
                packageid.Value = ecode.ToString();
                string str3 = "select * from Package_M WHERE Package_Id ='" + ecode + "' ";
                DataSet ds = new DataSet();
                ds = cn.select(str3);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    btncancel.Enabled = false;
                    btnsave.Enabled = false;
                    btnupdate.Enabled = true;
                    btndelete.Enabled = true;
                    txtpackagename.Text = ds.Tables[0].Rows[0]["Package_Name"].ToString();
                    txtprice.Text = ds.Tables[0].Rows[0]["Price"].ToString();
                    txtnoofdays.Text = ds.Tables[0].Rows[0]["No_Of_Days"].ToString();
                    ddlcityid.SelectedValue = ds.Tables[0].Rows[0]["City_Id"].ToString();
                    txtpackagetype.Text = ds.Tables[0].Rows[0]["Type"].ToString();
                    ddltravelmode.SelectedValue = ds.Tables[0].Rows[0]["Travel_Mode"].ToString();
                    ddlhotelid.SelectedValue = ds.Tables[0].Rows[0]["Hotel_id"].ToString();
                    


                }


            }
        }
        catch
        {
        }

    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        string qry = "update Package_M set Package_Name='" + txtpackagename.Text + "',Price=" +txtprice.Text + ",No_Of_Days=" + txtnoofdays.Text+ ",City_Id='" + ddlcityid.SelectedValue + "',Type='" + txtpackagetype.Text + "',Travel_Mode='" + ddltravelmode.SelectedValue + "',Hotel_id='" + ddlhotelid.SelectedValue + "' where Package_Id='" + packageid.Value + "' ";
        cn.modify(qry);
        bindgrid();
        Response.Write("<script>alert('Record Udated ')</script");
        clearall();
    }
    protected void btndelete_Click(object sender, EventArgs e)
    {
        string qry = "delete from Package_M where Package_Id='" + packageid.Value + "' ";
        cn.modify(qry);
        bindgrid();
        Response.Write("<script>alert('Record Deleted ')</script");
        clearall();
    }
}