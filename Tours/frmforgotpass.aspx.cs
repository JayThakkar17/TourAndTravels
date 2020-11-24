using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class frmforgotpass : System.Web.UI.Page
{
    clsEmail mail = new clsEmail();
    db_conn conn = new db_conn();
    protected void Page_Load(object sender, EventArgs e)
    {
        

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {

        string email = txtemail.Text.ToLower();
        DataSet ds = new DataSet();
        ds = conn.select("Select * from Login where Email='"+ txtemail.Text +"'");
        if (ds.Tables[0].Rows[0][0].ToString() != "0")
        {
            mail.sendEMail(email, "Your Password : " + ds.Tables[0].Rows[0]["Password"].ToString());
            Response.Write("<script>alert('Password has been emailed')</script>");
        }
        else {
            Response.Write("<script>alert('Email not found')</script>");
        }
    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("frmLogin.aspx");
    }
}