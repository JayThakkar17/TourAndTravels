using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;
using System.Data;


public class General_Function
{
    db_conn obj = new db_conn();

    public  void fillcombo(string  query, DropDownList drpList, string drpTextField, string drpValueField, string selectText)
    {
        db_conn obj = new db_conn();
        DataSet ds = new DataSet();
        
        ds = obj.select(query);
        if (ds.Tables[0].Rows.Count > 0)
        {

            drpList.DataSource = ds.Tables[0];
            drpList.DataTextField = drpTextField;
            drpList.DataValueField = drpValueField;
            drpList.DataBind();

        }


    }
    public void fill_grid(DataSet ds, GridView dg)
    {
        db_conn obj = new db_conn();
       
        
            if (ds.Tables[0].Rows.Count > 0)
            {
                dg.DataSource = ds.Tables[0];
                dg.DataBind();
            }
            else
                dg.DataSource = null;
        }

    
}