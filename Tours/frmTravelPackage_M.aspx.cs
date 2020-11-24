using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class frmTravelPackage_M : System.Web.UI.Page
{
    General_Function gf = new General_Function();

    db_conn cn = new db_conn();
    protected void Page_Load(object sender, EventArgs e)
    {
        btncancel.Enabled = true;
        btnsave.Enabled = true;
        btnupdate.Enabled = false ;
        btndelete.Enabled = false ;
        if (!IsPostBack)
        {
            binddropdown();
            bindgrid();
            
        }
        
    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        string qry = "insert into TravelPackage_M(Package_Id,Bus_Id,Train_Id,Plane_Id,car_id,RatePerSeat) values(" + ddlpackageid.SelectedValue + "," + ddlbusid.SelectedValue  + "," + ddltrainid.SelectedValue + "," + ddlplaneid.SelectedValue + ",'" + ddlcarid.SelectedValue + "','" + txtrateperseat.Text + "')";
        cn.modify(qry);
        bindgrid();
        Response.Write("<script>alert('Record inserted ')</script");
        clearall();
    }
    void binddropdown()
    {
        try
        {

            General_Function gf = new General_Function();

            db_conn cn = new db_conn();
            gf.fillcombo("select Package_Id,Package_Name from Package_M", ddlpackageid, "Package_Name", "Package_Id", "select");
            gf.fillcombo("select Bus_Id,Bus_Name from Bus_M", ddlbusid, "Bus_Name", "Bus_Id", "select");
            gf.fillcombo("select Train_Id,Train_No from Train_M",ddltrainid, "Train_No", "Train_Id", "select");
            gf.fillcombo("select Plane_Id,Plane_Name from Plane_M", ddlplaneid, "Plane_Name", "Plane_Id", "select");
            gf.fillcombo("select Car_Id,Car_Name from Car_M", ddlcarid, "Car_Name", "Car_Id", "select");
        }
        catch
        {
        }



    }
    void bindgrid()
    {
        DataSet ds = new DataSet();
        ds = cn.select("select TravelPackage_M.Tpid,Package_Id,Bus_Id,Train_Id,Plane_Id,car_id,RatePerSeat from TravelPackage_M");
        gf.fill_grid(ds, grdtravelpackage_m);
    }

    protected void btncancel_Click(object sender, EventArgs e)
    {
        Response.Write("<script>alert('Record Cleared ')</script");
        clearall();
    }
    public void clearall()
    {
       txtrateperseat.Text  = "";
    }
    protected void grd2_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        try
        {
            if (e.CommandName == "Tpid")
            {
                string ecode = e.CommandArgument.ToString();
                travelpackageid.Value = ecode.ToString();
                string str3 = "select * from TravelPackage_M WHERE Tpid ='" + ecode + "' ";
                DataSet ds = new DataSet();
                ds = cn.select(str3);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    //btncancel.Enabled = false ;
                    //btnsave.Enabled = false ;
                    //btnupdate.Enabled = true;
                    //btndelete.Enabled = true;

                    ddlpackageid.SelectedValue = ds.Tables[0].Rows[0]["Package_Id"].ToString();
                    ddlbusid.SelectedValue = ds.Tables[0].Rows[0]["Bus_Id"].ToString();
                    ddltrainid.SelectedValue = ds.Tables[0].Rows[0]["Train_Id"].ToString();
                    ddlplaneid.SelectedValue = ds.Tables[0].Rows[0]["Plane_Id"].ToString();
                    ddlcarid.SelectedValue = ds.Tables[0].Rows[0]["car_id"].ToString();
                    txtrateperseat.Text = ds.Tables[0].Rows[0]["RatePerSeat"].ToString();

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
    protected void btndelete_Click(object sender, EventArgs e)
    {
        string qry = "delete from TravelPackage_M where Tpid='" + travelpackageid.Value + "' ";
        cn.modify(qry);
        bindgrid();
        Response.Write("<script>alert('Record Deleted ')</script");
        clearall();

    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        string qry = "update TravelPackage_M set Package_Id ='" + ddlpackageid.SelectedValue + "',Bus_Id = '" + ddlbusid.SelectedValue  + "',Train_Id = '" + ddltrainid.SelectedValue  + "',Plane_Id ='" + ddlplaneid.SelectedValue + "',car_id='" +ddlcarid.SelectedValue + "',RatePerSeat=" + txtrateperseat.Text + " where Tpid='" + travelpackageid.Value + "' ";
        cn.modify(qry);
        bindgrid();
        Response.Write("<script>alert('Record Updated ')</script");
        clearall();
    }
}