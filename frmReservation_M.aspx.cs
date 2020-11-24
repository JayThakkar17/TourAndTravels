﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class frmReservation_M : System.Web.UI.Page
{
    General_Function gf = new General_Function();

    db_conn cn = new db_conn();
    protected void Page_Load(object sender, EventArgs e)
    {
        btncancel.Enabled = true;
        btnconfirm.Enabled = true;
        txtreservationdate.Text=System.DateTime.Today.ToString();
       
        if (!IsPostBack)
        {
            binddropdown();
            bindgrid();
            tr1.Visible = false;
            tr2.Visible = false;
            tr3.Visible = false;
            tr4.Visible = false;
            tr5.Visible = false;
            tr6.Visible = false;

            tr7.Visible = false;
            tr8.Visible = false;
            tr9.Visible = false;
            tr10.Visible = false;
            tr11.Visible = false;
            tr12.Visible = false;

        }

    }
    void bindgrid()
    {
        DataSet ds = new DataSet();
        ds = cn.select("select * from Reservation_M where customer_id=(select customer_id from customer_M where  email='" + Session["Email"].ToString() + "' )");
        gf.fill_grid(ds, grdreservation_m);
    }

    void binddropdown()
    {
        try
        {

            General_Function gf = new General_Function();

            db_conn cn = new db_conn();
            gf.fillcombo("select Customer_Id,First_Name from Customer_M where email = '" + Session["Email"].ToString() + "'", ddlcustomerid, "First_Name", "Customer_Id", "select");
            gf.fillcombo("select Package_Id,Package_Name from Package_M", ddlpackageid, "Package_Name", "Package_Id", "select");
            DataSet ds = new DataSet();
            ds = cn.select("select * from Package_M where Package_Id='" + ddlpackageid.SelectedValue + "'");
            Double amt = Convert.ToDouble(ds.Tables[0].Rows[0]["Price"].ToString());


            lblamt.Text = amt.ToString();

          //  gf.fillcombo("select Tpid,RatePerSeat from TravelPackage_M", ddltpid, "RatePerSeat", "Tpid", "select");
        }
        catch
        {
        }



    }

    protected void btnpay_click(object sender, EventArgs e)
    {
        lblpay.Text = (Convert.ToDouble(txtnoofpersons.Text) * Convert.ToDouble(lblamount.Text)).ToString();
    }
    
    protected void btncancel_Click(object sender, EventArgs e)
    {
        clearall();
    }
    public void clearall()
    {
        txtreservationdate.Text = "";
        txtstartingdate.Text = "";
        txtendingdate.Text = "";
        txtnoofpersons.Text = "";
        txtstatus.Text = "";

    }
    
    
    
    protected void btnconfirm_Click(object sender, EventArgs e)
    {
        // reservation M
        string qry = " insert into Reservation_M(Reservation_date,Starting_Date,Ending_Date,Customer_Id,NumberOfPerson,Package_Id,Amount,Status) values('" + txtreservationdate.Text + "','" + txtstartingdate.Text + "','" + txtendingdate.Text + "','" + ddlcustomerid.SelectedValue + "'," + txtnoofpersons.Text + "," + ddlpackageid.SelectedValue + "," + txtamount.Text + ",'" + txtstatus.Text + "'); select @@IDENTITY;";
        DataSet ds = new DataSet();
        ds = cn.select(qry);
        cn.modify(qry);

        // customer travel T
        qry = " insert into customer_Travel_t(Reservation_id,NumberofSeats,Travel_DateTime, TourFrom,Tourto) values('" + ds.Tables[0].Rows[0][0].ToString() + "','" + txtnoofpersons.Text + "','" +  txtstartingdate.Text + "','" + txtfrom.Text + "','" + txtto.Text  + "')";
        cn.select (qry);

        //PAYMENT
        if (ddlpaymenttype.SelectedValue=="CASH")
        {
            txtbankname.Text="";
            txtcardno.Text="";
            txtchequeno.Text="";
        }
        else   if (ddlpaymenttype.SelectedValue=="CHEQUE" && txtchequeno.Text=="")
        {
           Response.Write("<script>alert('Input Cheque Number')</script");
        }
        else   if (ddlpaymenttype.SelectedValue != "" && txtcardno.Text=="")
        {
             Response.Write("<script>alert('Input Card Number ')</script");
        }
        // reservation T
        string qryp = "insert into Payment_T(Reservation_Id,Payment_Type,Payment_Date,BankName,Card_No,Cheque_No) values('"+ds.Tables[0].Rows[0][0].ToString()+"','" + ddlpaymenttype.SelectedValue + "','" + txtpaymentdate.Text + "','" + txtbankname.Text + "','" +txtcardno.Text + "','" +txtchequeno.Text +"')"; 
        cn.modify(qryp);
        Response.Write("<script>alert('Record of Reservation + Tour detail + Payment Data inserted ')</script");
    }
    protected void btnpay_Click(object sender, EventArgs e)
    {
        try
        {
            lblpay.Text = (Convert.ToDouble(txtnoofpersons.Text) * Convert.ToDouble(lblamt.Text)).ToString();
            txtamount.Text = (Convert.ToDouble(txtnoofpersons.Text) * Convert.ToDouble(lblamt.Text)).ToString();
            txtfinalamount.Text = (Convert.ToDouble(txtnoofpersons.Text) * Convert.ToDouble(lblamt.Text)).ToString();

            if (txtnoofpersons.Text == "1")
            {
                tr1.Visible = true;
                tr2.Visible = true;
                tr3.Visible = true;
                tr4.Visible = true;
                tr5.Visible = true;
                tr6.Visible = true;

                tr7.Visible = false;
                tr8.Visible = false;
                tr9.Visible = false;
                tr10.Visible = false;
                tr11.Visible = false;
                tr12.Visible = false;
            }
            else if (Convert.ToInt16(txtnoofpersons.Text) > 1)
            {
                tr1.Visible = true;
                tr2.Visible = true;
                tr3.Visible = true;
                tr4.Visible = true;
                tr5.Visible = true;
                tr6.Visible = true;

                tr7.Visible = true;
                tr8.Visible = true;
                tr9.Visible = true;
                tr10.Visible = true;
                tr11.Visible = true;
                tr12.Visible = true;

            }
            else
            {
                tr1.Visible = false;
                tr2.Visible = false;
                tr3.Visible = false;
                tr4.Visible = false;
                tr5.Visible = false;
                tr6.Visible = false;

                tr7.Visible = false;
                tr8.Visible = false;
                tr9.Visible = false;
                tr10.Visible = false;
                tr11.Visible = false;
                tr12.Visible = false;

            }

        }
        catch(Exception ex)
        {
               lblpay.Text = "0";
            txtamount.Text = "0";
            txtfinalamount.Text = "0";
        }
    
    }
    protected void ddlpaymenttype_SelectedIndexChanged(object sender, EventArgs e)
    {
       
        if (ddlpaymenttype.SelectedValue=="CASH")
        {
            txtbankname.Text="";
            txtcardno.Text="";
            txtchequeno.Text="";
        }
        else   if (ddlpaymenttype.SelectedValue=="CHEQUE")
        {
            txtcardno.Text="";
        }
        else   if (ddlpaymenttype.SelectedValue != "")
        {
             txtchequeno.Text="";
        }
       

    }
    protected void ddlpackageid_SelectedIndexChanged(object sender, EventArgs e)
    {
        DataSet ds = new DataSet();
        ds = cn.select("select * from Package_M where Package_Id='" + ddlpackageid.SelectedValue + "'");
        Double amt = Convert.ToDouble(ds.Tables[0].Rows[0]["Price"].ToString());
       

        lblamt.Text = amt.ToString();

  
    }
}