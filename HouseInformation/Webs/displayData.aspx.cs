using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Webs_displayData : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string get = Request.QueryString["parms"].ToString();
        string[] str = get.Split('|');
         Response.Write( getResponse(str));
        Response.End();
    }
    private string getResponse(string[] str)
    {

        return "找不到数据";
    }

}