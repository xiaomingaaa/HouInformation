using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Webs_getshowData : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string type = Request.QueryString["type"].ToString();
        Response.Write(getHtml(type)) ;
        Response.End();
    }
    private string getHtml(string type)
    {
        Display d = new Display();
        string html = d.Click(type);
        Log.WriteError(html);
       return  html;
    }
}