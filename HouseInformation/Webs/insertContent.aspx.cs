using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Webs_insertContent : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string parms = Request.QueryString["parms"].ToString();
        string[] parm = parms.Split('|');
        string content = Request.QueryString["content"].ToString();
        if (Content(parm, content))
            Response.Write("评论成功");
        else
            Response.Write("评论失败");
        Response.End();
    }
    private bool Content(string[] parms,string content)
    {
        insertContent con = new insertContent();

        return con.istContent(parms,content);
    }


}