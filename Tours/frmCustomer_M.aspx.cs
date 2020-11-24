using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class frmCustomer_M : System.Web.UI.Page
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

        string qry1 = "insert into Login(Email,Password,Security_Question,Security_Answer,Type) values('" + txtemail.Text + "','" + txtpassword.Text + "','" + ddlquestionid.SelectedValue + "','" + txtsecurityanswer.Text + "','C')";
        cn.modify(qry1);

        string qry = "insert into Customer_M(First_Name,Middle_Name,Last_Name,Address_Line1,Address_Line2,Address_Line3,City,Pincode,Contact_No1,Contact_No2,Email,BirthDate,Gender,Aadhar_No,Password,Confirm_Password,Questionid,Securityanswer) values('" + txtfirstname.Text + "','" + txtmiddlename.Text + "','" + txtlastname.Text + "','" + txtaddressline1.Text + "','" + txtaddressline2.Text + "','" + txtaddressline3.Text + "','" + ddlcity.SelectedItem + "'," + txtpincode.Text + "," + txtcontactno1.Text + "," + txtcontactno2.Text + ",'" + txtemail.Text + "','" + txtbirthdate.Text + "','" + ddlgender.SelectedValue + "'," + txtaadharno.Text + ",'" + txtpassword.Text + "','" + txtconfirmpassword.Text + "','" + ddlquestionid.SelectedValue + "','" + txtsecurityanswer.Text + "')";
        cn.modify(qry);
        bindgrid();
        Response.Write("<script>alert('Record inserted ')</script");
        clearall();
        Response.Redirect("frmLogin.aspx");
    }
    void binddropdown()
    {
        try
        {

           
            gf.fillcombo("select  City_Id,City_Name from City_M", ddlcity , "City_Name", "City_Id", "select");
            gf.fillcombo("select securityqueid,securitytext from Securityque_M", ddlquestionid , "securitytext", "securityqueid", "select");
        }
        catch
        {
        }



    }
    void bindgrid()
    {
        DataSet ds = new DataSet();
        if (Session["Type"].ToString() == "A")
        ds = cn.select("select Customer_M.Customer_Id,First_Name, Middle_Name,Last_Name,Address_Line1,Address_Line2,Address_Line3,City,Pincode,Contact_No1,Contact_No2,Email,BirthDate,Gender,Aadhar_No,Password,Confirm_Password,Questionid,Securityanswer from Customer_M");
        else if(Session["Type"].ToString() == "C")
        ds = cn.select("select Customer_M.Customer_Id,First_Name, Middle_Name,Last_Name,Address_Line1,Address_Line2,Address_Line3,City,Pincode,Contact_No1,Contact_No2,Email,BirthDate,Gender,Aadhar_No,Password,Confirm_Password,Questionid,Securityanswer from Customer_M where Email='"+ Session["Email"].ToString()+"'");

        else ds = cn.select("select Customer_M.Customer_Id,First_Name, Middle_Name,Last_Name,Address_Line1,Address_Line2,Address_Line3,City,Pincode,Contact_No1,Contact_No2,Email,BirthDate,Gender,Aadhar_No,Password,Confirm_Password,Questionid,Securityanswer from Customer_M where 1=2"); 
        gf.fill_grid(ds, grdcustomer_m);
    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        Response.Write("<script>alert('Record cleared ')</script");
        clearall();
    }
    public void clearall()
    {
        txtfirstname.Text = "";
        txtmiddlename.Text = "";
        txtlastname.Text = "";
        txtaddressline1.Text = "";
        txtaddressline2.Text = "";
        txtaddressline3.Text = "";
        txtpincode.Text = "";
        txtcontactno1.Text = "";
        txtcontactno2.Text = "";
        txtemail.Text = "";
        txtaadharno.Text = "";
        txtpassword.Text = "";
        txtconfirmpassword.Text = "";
        txtsecurityanswer.Text = "";
       


    }
      protected void grd2_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        try
        {
            if (e.CommandName == "Customer_Id")
            {
                string ecode = e.CommandArgument.ToString();
                customerid.Value = ecode.ToString();
                string str3 = "select * from Customer_M WHERE Customer_Id ='" + ecode + "' ";
                DataSet ds = new DataSet();
                ds = cn.select(str3);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    btncancel.Enabled = false;
                    btnsave.Enabled = false;
                    btnupdate.Enabled = true;
                    btndelete.Enabled = true;
                    txtfirstname.Text = ds.Tables[0].Rows[0]["First_Name"].ToString(); 
                    txtmiddlename.Text = ds.Tables[0].Rows[0]["Middle_Name"].ToString();
                    txtlastname.Text = ds.Tables[0].Rows[0]["Last_Name"].ToString();
                    txtaddressline1.Text = ds.Tables[0].Rows[0]["Address_line1"].ToString();
                    txtaddressline2.Text = ds.Tables[0].Rows[0]["Address_line2"].ToString();
                    txtaddressline3.Text = ds.Tables[0].Rows[0]["Address_line3"].ToString();
                    txtpincode.Text = ds.Tables[0].Rows[0]["Pincode"].ToString();
                    txtcontactno1.Text = ds.Tables[0].Rows[0]["Contact_No1"].ToString();
                    txtcontactno2.Text = ds.Tables[0].Rows[0]["Contact_No2"].ToString();
                    txtemail.Text = ds.Tables[0].Rows[0]["Email"].ToString();
                    txtbirthdate.Text = ds.Tables[0].Rows[0]["BirthDate"].ToString();
                    txtaadharno.Text = ds.Tables[0].Rows[0]["Aadhar_No"].ToString();
                    txtpassword.Text = ds.Tables[0].Rows[0]["Password"].ToString();
                    txtconfirmpassword.Text = ds.Tables[0].Rows[0]["Confirm_Password"].ToString();
                    ddlquestionid.SelectedValue = ds.Tables[0].Rows[0]["Questionid"].ToString();
                    txtsecurityanswer.Text = ds.Tables[0].Rows[0]["Securityanswer"].ToString();

                   


                }


            }
        }
        catch
        {
        }

    }



      protected void btnupdate_Click(object sender, EventArgs e)
      {
          string qry = "update Customer_M set First_Name='" + txtfirstname.Text + "',Middle_Name='" + txtmiddlename.Text + "',Last_Name='" + txtlastname.Text + "',Address_Line1='" + txtaddressline1.Text + "',Address_Line2='" + txtaddressline2.Text + "',Address_Line3='" + txtaddressline3.Text + "',City='" + ddlcity.SelectedValue +"' where Customer_Id='" + customerid.Value + "' ";
          cn.modify(qry);
          bindgrid();
          Response.Write("<script>alert('Record update ')</script");
          clearall();
      }
      protected void btndelete_Click(object sender, EventArgs e)
      {
          string qry = "delete from Customer_M where Customer_Id='" + customerid.Value + "' ";
          cn.modify(qry);
          bindgrid();
          Response.Write("<script>alert('Record deleted ')</script");
          clearall();
      }
}