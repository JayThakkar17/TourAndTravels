using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class frmfeedback : System.Web.UI.Page
{
    General_Function gf = new General_Function();

    db_conn cn = new db_conn();
        protected void Page_Load(object sender, EventArgs e)
    {
        btncancel.Enabled = true;
        btnsave.Enabled = true;
        btnupdate.Enabled = false;
        btndelete.Enabled = false;
        txtdate.Text = System.DateTime.Today.ToString();
        if (!IsPostBack)
        {
          bindgrid();
        }

    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        string qry = "insert into feedback(email,Feedback_description,date) values('" + txtemail.Text + "','" +  txtfeedbackdescription.Text + "','" + txtdate.Text + "')";
        
        cn.modify(qry);
        bindgrid();
        Response.Write("<script>alert('Feedback Inserted  ')</script");
        clearall();
    }
    void bindgrid()
    {
        DataSet ds = new DataSet();
        ds = cn.select("select feedback.email,Feedback_description,date from feedback");
        gf.fill_grid(ds, grdfeedback);
    }
    public void clearall()
    {
        txtfeedbackdescription.Text = "";
        txtdate.Text="";

    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        Response.Write("<script>alert('Record cleared ')</script");
        clearall();
    }
    protected void grd2_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        try
        {
        }
        catch
        {
        }

    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        //string qry = "update feedback set Feedback_description ='" + txtfeedbackdescription.Text + "' where Customer_Id='" + feedbackid.Value + "' ";
        //cn.modify(qry);
        //bindgrid();
        //Response.Write("<script>alert('Record update ')</script");
        //clearall();
    }
    protected void btndelete_Click(object sender, EventArgs e)
    {
        //string qry = "delete from feedback where Customer_Id='" + feedbackid.Value + "' ";
        //cn.modify(qry);
        //bindgrid();
        //Response.Write("<script>alert('Record deleted ')</script");
        //clearall();
    }
}