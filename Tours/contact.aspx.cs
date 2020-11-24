using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class contact : System.Web.UI.Page
{
    General_Function gf = new General_Function();

    db_conn cn = new db_conn();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        { }
    }
   
    protected void btna_Click(object sender, EventArgs e)
    {
        string qry = "insert into feedback(email,Feedback_description,date,name,subject) values('" + email.Text + "','" + message.Text + "','" + System.DateTime.Now.ToString() + "','" + name.Text + "','" + subject.Text + "')";

        cn.modify(qry);

        Response.Write("<script>alert('Feedback Inserted  ')</script");
    }
}