using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class frmTrain_M : System.Web.UI.Page
{
    General_Function gf = new General_Function();

    db_conn cn = new db_conn();
    protected void Page_Load(object sender, EventArgs e)
    {
        btncancel.Enabled = true;
        btnsave.Enabled = true;
        btnupdate.Enabled = false;
        btndelete.Enabled = false;
        bindgrid();
    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        string qry = " insert into Train_M(Train_Type,Train_Time,Train_No) values('" + txttype.Text + "','" + txttraintime.Text + "','" + txttrainno.Text + "' )";
        cn.modify(qry);
        bindgrid();
        Response.Write("<script>alert('Record inserted ')</script");
        clearall();
    }
    void bindgrid()
    {
        DataSet ds = new DataSet();
        ds = cn.select("select Train_M.Train_Id,Train_Type,Train_Time,Train_No from Train_M");
        gf.fill_grid(ds, grdtrain_m);
    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        Response.Write("<script>alert('Record Cleared ')</script");
        clearall();
    }
    public void clearall()
    {
        txttype.Text = "";
        txttraintime.Text = "";
        txttrainno.Text = "";

    }
    protected void grd2_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        try
        {
            if (e.CommandName == "Train_Id")
            {
                string ecode = e.CommandArgument.ToString();
                trainid.Value = ecode.ToString();
                string str3 = "select * from Train_M WHERE Train_Id ='" + ecode + "' ";
                DataSet ds = new DataSet();
                ds = cn.select(str3);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    txttype.Text = ds.Tables[0].Rows[0]["Train_Type"].ToString();
                    txttraintime.Text = ds.Tables[0].Rows[0]["Train_Time"].ToString();
                    txttrainno.Text = ds.Tables[0].Rows[0]["Train_No"].ToString();


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
        string qry = "update Train_M set Train_No ='" + txttrainno.Text + "',Train_Type = '" + txttype.Text + "',Train_Time = '" + txttraintime.Text + "' where Train_Id='" + trainid.Value + "' ";
        cn.modify(qry);
        bindgrid();
        Response.Write("<script>alert('Record Updated ')</script");
        clearall();
    }
    protected void btndelete_Click(object sender, EventArgs e)
    {
        string qry = "delete from Train_M where Train_Id='" + trainid.Value + "' ";
        cn.modify(qry);
        bindgrid();
        Response.Write("<script>alert('Record Deleted ')</script");
        clearall();
    }
}