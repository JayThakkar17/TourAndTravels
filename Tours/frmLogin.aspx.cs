using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class frmLogin : System.Web.UI.Page
{
    General_Function gf = new General_Function();

    db_conn cn = new db_conn();
    protected void Page_Load(object sender, EventArgs e)
    {
       
       
        if (!IsPostBack)
        {
           
            //bindgrid();

        }
    }
    protected void btnsave_Click(object sender, EventArgs e)
    {

        Session["Type"] = "";
        Session["Email"] = "";
       
        DataSet ds = new DataSet();
        ds = cn.select("select * from Login where Email='" + txtemail.Text + "' and Password= '" + txtpassword.Text + "' ");
        if (ds.Tables[0].Rows.Count > 0)
        {
           
            Session["Type"] = ds.Tables[0].Rows[0]["Type"].ToString();
            Session["Email"] = ds.Tables[0].Rows[0]["Email"].ToString();
            Response.Write("<script>alert('Login Successful')</script>");


            if (Session["Type"].ToString() == "A")
            {
                
                Response.Redirect("frmReservation_M.aspx");

            }

            else if (Session["Type"].ToString() == "C")
            {
               
                Response.Redirect("frmReservation_M.aspx");
            }

            else if (Session["Type"].ToString() == "TM")
            {
               
                Response.Redirect("frmPackage_M.aspx");
            }

            else if (Session["Type"].ToString() == "TR")
            {
               
                Response.Redirect("frmTravelPackage_M.aspx");
            }


        }
        else
        {
            Response.Write("<script>alert('Login UnSuccessful')</script>");
        }

    }
    

    protected void btncancel_Click(object sender, EventArgs e)
    {
        clearall();
    }
    public void clearall()
    {
        txtemail.Text = "";
        txtpassword.Text = "";
       
        

    }

   
    protected void btnforgetpassword_Click(object sender, EventArgs e)
    {
        Response.Redirect("frmforgotpass.aspx");
    }
    protected void btnchangepassword_Click(object sender, EventArgs e)
    {
        Response.Redirect("frmcustomer_m.aspx");
    }
    protected void loginid_ValueChanged(object sender, EventArgs e)
    {

    }
}