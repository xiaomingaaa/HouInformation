using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Webs_Login1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        

        //string userid = Request.QueryString["userid"].ToString();
        //string pwd = Request.QueryString["pwd"].ToString();
       
        //CheckUser(userid,pwd);
    }
    public void CheckUser(string userid,string pwd)
    {
        Login login = new Login();
        string[] str = new string[] {username.Value.ToString().Trim(),TextBox2.Text.ToString().Trim()
        };
       bool flag= login.login(str);
        if (flag)
        {
            //Response.Cookies["username"].Value = login.userName;
            //Response.Cookies["username"].Expires = DateTime.Now.AddDays(1);
            //Response.Cookies["userid"].Value = login.userid;
            //Response.Cookies["userid"].Expires = DateTime.Now.AddDays(1);
            //Response.Cookies["login"].Value = "true";
            // TimeSpan ts = new TimeSpan(0,20,0);
            //Response.Cookies["login"].Expires = DateTime.Now.AddDays(1);
            Session["username"] = login.userName;
            Session["userid"] = login.userid;
            Session["login"] = "true";
            Session.Timeout = 60;
            Response.Redirect("DisplayPage.aspx");

        }
        else
        {
            //Response.Write(login.ErrorMessage);
            //Response.Write("<script>alert('登录失败！"+login.ErrorMessage+"')</script>");
            username.Value = "";
            TextBox2.Text = "";
            username.Focus();
            k.Style.Add("display","block");
            neirong.InnerText = "用户名或密码错误" ;
        }
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
       //bool legal= Check.CheckInput(username.Value);
       // if (legal)
       // {
       //     Response.Write("<script>alert('请不要包含特殊字符！')</script>");
       // }
        
        
            CheckUser(username.Value.ToString().Trim(),TextBox2.Text.ToString().Trim());
       
    }

    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
}