using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class frmchangepassword : System.Web.UI.Page
{
    General_Function gf = new General_Function();

    db_conn cn = new db_conn();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
   
    protected void btnupdate_Click1(object sender, EventArgs e)
    {
        DataSet ds = new DataSet();
        ds=cn.select("select * from Login where Email='" +Session["Email"].ToString() + "' and Password='"+ txtoldpassword.Text +"'");
        if (ds.Tables[0].Rows.Count > 0)
        {
            cn.modify("update Login set Password='" + txtnewpassword.Text + "' where Email='" + Session["Email"].ToString() + "' and Password='" + txtoldpassword.Text + "'");
            Response.Write("<script>alert('Your Password Changed')</script>");
        }
        else
        {
            Response.Write("<script>alert('Old Password Not Match')</script>");
        }

    }
}