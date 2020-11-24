using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class frmBus_M : System.Web.UI.Page
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
        string qry = "insert into  Bus_M(Bus_Details,Fuel_Type,Bus_Name,Registration_No,Seats_Appears) values('" + txtbusdetails.Text + "','" + ddlfueltype.SelectedItem + "','" + txtbusname.Text + "','" + txtregistationnumber.Text + "','" + txtseatsappear.Text + "')";
        cn.modify(qry);
           bindgrid();
           Response.Write("<script>alert('Record inserted ')</script");
           clearall();
    }

    void bindgrid()
    {
        DataSet ds = new DataSet();
        ds = cn.select("select Bus_M.Bus_Id,Bus_Details ,Fuel_Type , Bus_Name ,Registration_No ,Seats_Appears  from Bus_M");
        gf.fill_grid(ds, grdbus_m);
    }
    
    protected void grd2_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        try
        {
            if (e.CommandName == "Bus_Id")
            {
                string ecode = e.CommandArgument.ToString();
                busid.Value = ecode.ToString();
                string str3 = "select * from Bus_M WHERE Bus_Id ='" + ecode + "' ";
                DataSet ds = new DataSet();
                ds = cn.select(str3);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    btncancel.Enabled = false;
                    btnsave.Enabled = false;
                    btnupdate.Enabled = true;
                    btndelete.Enabled = true;
                    txtbusdetails.Text = ds.Tables[0].Rows[0]["Bus_Details"].ToString();
                    ddlfueltype.SelectedValue = ds.Tables[0].Rows[0]["Fuel_Type"].ToString();
                    txtbusname.Text = ds.Tables[0].Rows[0]["Bus_Name"].ToString();
                    txtregistationnumber.Text = ds.Tables[0].Rows[0]["Registration_No"].ToString();
                    txtseatsappear.Text = ds.Tables[0].Rows[0]["Seats_Appears"].ToString();
                    


                }


            }
        }
        catch
        {
        }

    }



    protected void btnupdate_Click(object sender, EventArgs e)
    {
        string qry = "update Bus_M set  Bus_Details = '" + txtbusdetails.Text + "',Fuel_Type='" + ddlfueltype.SelectedValue + "',Bus_Name='" + txtbusname.Text + "',Registration_No ='" + txtregistationnumber.Text + "',Seats_Appears=" + txtseatsappear.Text+ " where Bus_Id='" + busid.Value + "' ";
        cn.modify(qry);
        bindgrid();
        Response.Write("<script>alert('Record Updated ')</script");
    }
    protected void btncancel_Click1(object sender, EventArgs e)
    {
        Response.Write("<script>alert('Record Cleared ')</script");
        clearall();
    }

    public void clearall()
    {
        txtbusdetails.Text = "";
        txtbusname.Text = "";
        txtregistationnumber.Text = "";
        txtseatsappear.Text = "";
    }
    protected void btndelete_Click(object sender, EventArgs e)
    {
        string qry = "delete from Bus_M where Bus_Id='" + busid.Value + "' ";
        cn.modify(qry);
        bindgrid();
        Response.Write("<script>alert('Record Deleted ')</script");
        clearall();
    }
    protected void btnreport_Click(object sender, EventArgs e)
    {

    }
}