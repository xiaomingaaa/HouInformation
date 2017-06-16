using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Webs_register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login1.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (passwd.Value != confirmpd.Value)
        {
            // Response.Write("<script>alert('用户名密码不一致，请重新输入')</script>");

            passwd.Value = "";
            confirmpd.Value = "";
            passwd.Focus();
            k.Style.Add("display", "block");
            neirong.InnerText = "密码不一致请重新输入";
            return;
        }
        string[] str =new string[]{passwd.Value.ToString().Trim(),
            username.Value.ToString().Trim(),
            email.Value.ToString().Trim(),
            phone.Value.ToString().Trim()
        };
        Login regiest = new Login();
        bool flag= regiest.register(str);
       // Response.Write("+"+regiest.ErrorMessage);
        if (flag)
        {
            Response.Write("<script>alert('注册成功！快去登录吧')</script>");
            Response.Redirect("Login1.aspx");
        }
        else
        {
            Response.Write("<script>alert('注册失败，重新注册')</script>");
           
            Response.Redirect("register.aspx");
        }
    }

}