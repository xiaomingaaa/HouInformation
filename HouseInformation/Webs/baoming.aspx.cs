using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Webs_baoming : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string[] str = new string[2];
        str[0] = Session["userid"].ToString();
        str[1] = Request.QueryString["groupid"].ToString();

        Response.Write(getResponse(str));
        Response.End();
    }
    public string getResponse(string[] str)
    {
        baoming a = new baoming();
       bool flag= a.regiest(str);
        if (flag)
        {
            return "报名成功！";
        }
        return "报名失败！";
    }
}