using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Webs_getContent : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //string parms = Request.QueryString["parms"].ToString();
        //string[] parm = parms.Split('|');
        //Response.Write(get(parm));
        //Response.End();
    }
    //private string get(string[] parms)
    //{
    //    getContent g = new getContent();
    //    string html = g.content(parms);
    //    if (html != "-1")
    //        return html;
    //    else
    //        return "暂时还没有评论！快来评论吧！";
    //}
}