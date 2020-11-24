using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class frmHotel_M : System.Web.UI.Page
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
        string qry = " insert into Hotel_M values('" + txthotelname.Text + "','" + txtstar.Text + "','" + txtaddressline1.Text + "','" + txtaddressline2.Text + "','" + txtaddressline3.Text + "','" + ddlcity.SelectedItem  + "'," + txtpincode.Text + "," + txtcontactno1.Text + "," + txtcontactno2.Text + ",'" + txtemail.Text + "' )";
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
            gf.fillcombo("select City_Id,City_Name from City_M", ddlcity, "City_Name", "City_Id", "select");
        }
        catch
        {
        }



    }
     void bindgrid()
     {
         DataSet ds = new DataSet();
         ds = cn.select("select Hotel_M.Hotel_Id ,Hotel_Name ,Star,Address_Line1,Address_Line2,Address_Line3,City,Pincode,ContactNumber1,ContactNumber2,Email from Hotel_M");
         gf.fill_grid(ds, grdhotel_m);
     }

     protected void btncancel_Click(object sender, EventArgs e)
     {
         Response.Write("<script>alert('Record Cleared ')</script");
         clearall();
     }
     public void clearall()
     {
         txthotelname.Text = "";
         txtstar.Text = "";
         txtaddressline1.Text = "";
         txtaddressline2 .Text = "";
         txtaddressline3.Text = "";
         txtpincode.Text = "";
         txtcontactno1.Text = "";
         txtcontactno2.Text = "";
         txtemail.Text = "";

     }
     protected void grd2_RowCommand(object sender, GridViewCommandEventArgs e)
     {
         try
         {
             if (e.CommandName == "Hotel_Id")
             {
                 string ecode = e.CommandArgument.ToString();
                 hotelid.Value = ecode.ToString();
                 string str3 = "select * from Hotel_M WHERE Hotel_Id ='" + ecode + "' ";
                 DataSet ds = new DataSet();
                 ds = cn.select(str3);
                 if (ds.Tables[0].Rows.Count > 0)
                 {
                     btncancel.Enabled = false;
                     btnsave.Enabled = false;
                     btnupdate.Enabled = true;
                     btndelete.Enabled = true;
                     txthotelname.Text = ds.Tables[0].Rows[0]["Hotel_Name"].ToString();
                     txtstar.Text = ds.Tables[0].Rows[0]["Star"].ToString();
                     txtaddressline1.Text = ds.Tables[0].Rows[0]["Address_Line1"].ToString();
                     txtaddressline2.Text = ds.Tables[0].Rows[0]["Address_Line2"].ToString();
                     txtaddressline3.Text = ds.Tables[0].Rows[0]["Address_Line3"].ToString();
                     
                     txtpincode.Text= ds.Tables[0].Rows[0]["Pincode"].ToString();
                     txtcontactno1.Text = ds.Tables[0].Rows[0]["ContactNumber1"].ToString();
                     txtcontactno2.Text = ds.Tables[0].Rows[0]["ContactNumber2"].ToString();
                     txtemail.Text = ds.Tables[0].Rows[0]["Email"].ToString(); 
                    


                 }


             }
         }
         catch
         {
         }

     }
     protected void btnupdate_Click(object sender, EventArgs e)
     {
         string qry = "update Hotel_M set Hotel_Name='" + txthotelname.Text + "',star='" + txtstar.Text + "',Address_Line1='" + txtaddressline1.Text + "',Address_Line2='" + txtaddressline2.Text + "',Address_Line3='" + txtaddressline3.Text + "',City ='" + ddlcity.SelectedValue + "',Pincode =" + txtpincode.Text + ",ContactNumber1 = " + txtcontactno1.Text + ",ContactNumber2 = " + txtcontactno2.Text + ",Email = '" +txtemail.Text + "' where Hotel_Id='" + hotelid.Value + "' ";
         cn.modify(qry);
         bindgrid();
         Response.Write("<script>alert('Record Updated ')</script");
         clearall();
     }
     protected void btndelete_Click(object sender, EventArgs e)
     {
         string qry = "delete from Hotel_M where Hotel_Id='" + hotelid.Value + "' ";
         cn.modify(qry);
         bindgrid();
         Response.Write("<script>alert('Record Deleted ')</script");
         clearall();
     }
}