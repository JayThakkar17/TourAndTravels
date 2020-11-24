using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class frmReservation_T : System.Web.UI.Page
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
        string qry= "insert into Reservation_T(First_Name,Middle_Name,Last_Name,BirthDate,AadharNo,Gender) values('" + txtfirstname.Text + "','" + txtmiddlename.Text + "','" + txtlastname.Text + "','" + txtbirthdate.Text + "'," + txtaadharno.Text + ",'" +ddlmalefemale.SelectedValue +"' ) ";
        cn.modify(qry);
        clearall();
    }
    void bindgrid()
    {
        DataSet ds = new DataSet();
       ds = cn.select("select Reservation_T.Reservation_Id,First_Name,Middle_Name,Last_Name,BirthDate,AadharNo,Gender from Reservation_T,Reservation_M where Reservation_T.Reservation_id=Reservation_M.Reservation_id and customer_id=(select customer_id from customer_M where  email='" + Session["Email"].ToString() + "' )");
        gf.fill_grid(ds, grdreservation_t);
    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        clearall();
    }
    public void clearall()
    {
        txtfirstname.Text = "";
        txtmiddlename.Text = "";
        txtlastname.Text = "";
        txtbirthdate.Text = "";
        txtaadharno.Text = "";
        

    }
    protected void grd2_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        try
        {
            if (e.CommandName == "Reservation_Id")
            {
                string ecode = e.CommandArgument.ToString();
                reservationid.Value = ecode.ToString();
                string str3 = "select * from Reservation_T WHERE Reservation_Id ='" + ecode + "' ";
                DataSet ds = new DataSet();
                ds = cn.select(str3);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    txtfirstname.Text = ds.Tables[0].Rows[0]["First_Name"].ToString();
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
        string qry = "update Reservation_T set First_Name ='" + txtfirstname.Text + "',Middle_Name='" +txtmiddlename.Text + "',Last_Name='" + txtlastname.Text +"',BirthDate='" + txtbirthdate.Text + "',AadharNo='" + txtaadharno.Text +"',Gender='" + ddlmalefemale.SelectedIndex + "' where Reservation_Id='" + reservationid.Value + "' ";
        cn.modify(qry);
        bindgrid();
    }
    protected void btndelete_Click(object sender, EventArgs e)
    {
        string qry = "delete from Reservation_T where Reservation_Id='" + reservationid.Value + "' ";
        cn.modify(qry);
    }
}