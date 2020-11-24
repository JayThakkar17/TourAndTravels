using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TravelsMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!IsPostBack)
            {
                string ty = Session["Type"].ToString();
            }
        }

        catch
        { 
            Session["Type"] = "V";
            Session["Email"]="";
        }
    }
}
