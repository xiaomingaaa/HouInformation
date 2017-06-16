using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Kanfangtuan : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (!IsPostBack)
        //{
        //    loadData data = new loadData();
        //    string html = data.getHtml();
        //    if (html != null)
        //    {
        //        showcontent.InnerHtml = html;
        //    }

        //}
        Session["userid"] = "1";
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("XiangQing.aspx");
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Write("DisplayPage.aspx");
    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Write("DisplayPage.aspx");
    }

    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Write("DisplayPage.aspx");
    }

    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Response.Write("DisplayPage.aspx");
    }

    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Response.Write("DisplayPage.aspx");
    }
}