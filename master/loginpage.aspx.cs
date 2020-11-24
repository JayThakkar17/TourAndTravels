using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data;
using MySql.Data.MySqlClient;

public partial class loginpage : System.Web.UI.Page
{
    DbConn conn = new DbConn();

    protected void Page_Load(object sender, EventArgs e)
    {
        //BinddrpVisa();
        //try
        //{

        //}
        //catch (Exception ex)
        //{
        //    Session["Type"] = "V";
        //}


    }
    //private void BinddrpVisa()
    //{
    //    try
    //    {
    //        DataSet ds = new DataSet();
    //        ds = conn.select("select * from visa_cafe_m");
    //        drpVisa.DataSource = ds.Tables[0];
    //        drpVisa.DataTextField = "visa_cafe_name";
    //        drpVisa.DataValueField = "visa_cafe_id";
    //        drpVisa.DataBind();

    //    }
    //    catch (MySqlException ex)
    //    {
    //        ShowMessage(ex.Message);
    //    }

    //}
    protected void Button1_Click(object sender, EventArgs e)
    {
        DataSet ds = new DataSet();
        ds = conn.select("select * from login_m where Email='" + txtemail.Text + "' and password= '" + txtpassword.Text + "' ");
        if (ds.Tables[0].Rows.Count > 0)
        {
            ShowMessage("Login Successfull");
            Session["Type"] = ds.Tables[0].Rows[0]["Type"].ToString();
            Session["Email"] = ds.Tables[0].Rows[0]["Email"].ToString();
            //Session["User_id"] = ds.Tables[0].Rows[0]["User_id"].ToString();

            if (Session["Type"].ToString() == "A-Admin")
            {
                Response.Redirect("temp1.aspx");
                ShowMessage("You Are Loged In As Admin!");
            }
            else if (Session["type"].ToString() == "U-User")
            {
                Response.Redirect("temp1.aspx");
                ShowMessage("You Are Loged In As User!");
            }
            else if (Session["type"].ToString() == "C-Consultant")
            {
                Response.Redirect("temp1.aspx");
                ShowMessage("You Are Loged In As Consultant!");
            }
            else if (Session["type"].ToString() == "F-Faculty")
            {
                Response.Redirect("temp1.aspx");
                ShowMessage("You Are Loged In As Faculty!");
            }
            else
            {
                Response.Redirect("temp1.aspx");
            }
        }
        else
        {
            ShowMessage("Email or Password Not Match..... Please enter Proper!");
        }

    }
    void ShowMessage(string msg)
    {
        ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('" + msg + "');</script>");
    }


    protected void btnsubmit_Click(object sender, System.EventArgs e)
    {
        conn.CRUD("Insert into user_m (First_Name,Middle_Name,Last_Name,Address_Line1,Address_Line2,Address_Line3,City_id,Pincode,Phone1,Phone2,Email,Password,Confirm_Password) values('" + txtfname.Text + "','" + txtmname.Text + "', '" + txtlname.Text + "', '" + txtaddone.Text + "','" + txtaddtwo.Text + "','" + txtaddthree.Text + "','" + txtcid.Text + "','" + txtpin.Text + "','" + txtphoneone.Text + "','" + txtphonetwo.Text + "','" + txtremail.Text + "','" + txtrpassword.Text + "' ,'" + txtcpassword.Text + "')");
        ShowMessage("You Are Register With Visa Cafe!");

        conn.CRUD("Insert into login_m (Email,Password) values('" + txtremail.Text + "','" + txtrpassword.Text + "' )");

        ShowMessage("Login generated");

        txtaddone.Text = String.Empty ;
        txtaddtwo.Text = String.Empty ;
        txtaddthree.Text = String.Empty;
        txtcid.Text = String.Empty;
        txtcpassword.Text = String.Empty;
        txtfname.Text = String.Empty;
        txtmname.Text = String.Empty;
        txtlname.Text = String.Empty;
        txtremail.Text = String.Empty;
        txtrpassword.Text = String.Empty;
        txtcid.Text = String.Empty;
        txtstate.Text = String.Empty;
       



    }
}