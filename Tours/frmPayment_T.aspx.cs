using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class frmPayment_T : System.Web.UI.Page
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
           bindgrid();

        }
    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        string qry = "insert into Payment_T(Payment_Type,Payment_Date,Amount,BankName) values('" + ddlpaymenttype.SelectedValue + "','" + txtpaymentdate.Text + "','" + txtbankname.Text + "')";
        cn.modify(qry);
        clearall();
    }
    void bindgrid()
    {
        DataSet ds = new DataSet();
        ds = cn.select("select Payment_T.Reservation_Id,Payment_Type,Payment_Date,Amount,BankName from Payment_T,Customer_Travel_T where Customer_Travel_T.Reservation_Id=Payment_T.Reservation_Id and Payment_T.reservation_id in(select reservation_id from reservation_M where customer_id = (select customer_id from customer_M where email='" + Session["Email"].ToString() + "'))");
        gf.fill_grid(ds, grdpayment_t);
    }
    protected void btncancel_Click(object sender, EventArgs e)
    { 
        clearall();
    }
    public void clearall()
    {
        txtpaymentdate.Text = "";
        
        txtbankname.Text = "";
        

    }
    protected void grd2_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        try
        {
            if (e.CommandName == "Reservation_Id")
            {
                string ecode = e.CommandArgument.ToString();
                paymentid.Value = ecode.ToString();
                string str3 = "select * from Payment_T WHERE Reservatio_Id ='" + ecode + "' ";
                DataSet ds = new DataSet();
                ds = cn.select(str3);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    btncancel.Enabled = false;
                    btnsave.Enabled = false;
                    btnupdate.Enabled = true;
                    btndelete.Enabled = true;
                    ddlpaymenttype.SelectedValue = ds.Tables[0].Rows[0]["Payment_Type"].ToString();
                    txtpaymentdate.Text= ds.Tables[0].Rows[0]["Payment_Date"].ToString();
                   
                    txtbankname.Text= ds.Tables[0].Rows[0]["BankName"].ToString();
                    


                }


            }
        }
        catch
        {
        }

    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        string qry = "update Payment_T set Payment_Type='" + ddlpaymenttype.SelectedValue  + "',Payment_Date='" + txtpaymentdate.Text  + ",BankName='" +txtbankname.Text + "' where Reservation_Id='" + paymentid.Value + "' ";
        cn.modify(qry);
        bindgrid();
        clearall();
    }
    protected void btndelete_Click(object sender, EventArgs e)
    {
        string qry = "delete from Payment_T where Reservation_Id='" + paymentid.Value + "' ";
        cn.modify(qry);
        bindgrid();
        clearall();
    }
}