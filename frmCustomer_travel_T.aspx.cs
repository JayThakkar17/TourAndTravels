using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class frmCustomer_travel_T : System.Web.UI.Page
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
        string qry = "insert into Customer_Travel_T values(" + txtnoofseats.Text + ",'" + txttraveldatetime.Text + "','" + txtfrom.Text + "','" + txtto.Text + "'," + ddltpid.SelectedValue + ")";
        cn.modify(qry);
        bindgrid();
        clearall();
    }
    void binddropdown()
    {
        try
        {

            General_Function gf = new General_Function();

            db_conn cn = new db_conn();
            gf.fillcombo("select Tpid,RatePerSeat from TravelPackage_M",ddltpid, "RatePerSeat", "Tpid", "select");
        }
        catch
        {
        }



    }
    void bindgrid()
    {
        DataSet ds = new DataSet();
        ds = cn.select("select Customer_Travel_T.Reservation_Id,NumberOfSeats,Travel_DateTime,TourFrom,TourTo,Tpid from Customer_Travel_T where reservation_id in(select reservation_id from reservation_M where customer_id = (select customer_id from customer_M where email='" + Session["Email"].ToString() + "'))");
        gf.fill_grid(ds,grdcustomertravelt);
    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        clearall();
    }
    public void clearall()
    {
        txtnoofseats.Text = "";
        txtfrom.Text = "";
        txtto.Text = "";
    }
    protected void grd2_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        try
        {
            if (e.CommandName == "Reservation_Id")
            {
                string ecode = e.CommandArgument.ToString();
                customertraveltid.Value = ecode.ToString();
                string str3 = "select * from Customer_Travel_T WHERE Reservation_Id ='" + ecode + "' ";
                DataSet ds = new DataSet();
                ds = cn.select(str3);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    txtnoofseats.Text = ds.Tables[0].Rows[0]["NumberOfSeats"].ToString();
                    txttraveldatetime.Text = ds.Tables[0].Rows[0]["Travel_DateTime"].ToString();
                    txtfrom.Text = ds.Tables[0].Rows[0]["TourFrom"].ToString();
                    txtto.Text = ds.Tables[0].Rows[0]["TourTo"].ToString();
                    ddltpid.SelectedValue = ds.Tables[0].Rows[0]["Tpid"].ToString();
                    
                    btncancel.Enabled = false;
                    btnsave.Enabled = false;
                    btnupdate.Enabled = true;
                    btndelete.Enabled = true;


                }


            }
        }
        catch
        {
        }

    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        string qry = "update Customer_Travel_T set NumberOfSeats='" + txtnoofseats.Text + "',Travel_DateTime='" +txttraveldatetime.Text + "',TourFrom ='" +txtfrom.Text + "',TourTo ='" + txtto.Text + "',Tpid='" + ddltpid.SelectedValue + "' where Hotel_Id='" + customertraveltid.Value + "' ";
        cn.modify(qry);
        bindgrid();
        clearall();
    }
    protected void btndelete_Click(object sender, EventArgs e)
    {
        string qry = "delete from Customer_Travel_T where Reservation_Id='" + customertraveltid .Value + "' ";
        cn.modify(qry);
        clearall();
    }
}