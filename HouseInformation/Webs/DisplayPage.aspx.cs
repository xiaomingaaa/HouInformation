using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data;
public partial class Webs_DisplayPage : System.Web.UI.Page
{
    public string userName = "用户";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            try
            {
                if (Session["login"].ToString() == "true")
                {
                    if (Session["username"] != null)
                    {
                        userName = Session["username"].ToString();
                    }
                    init();
                }
                else
                {
                    Response.Redirect("Login1.aspx");
                }
            }
            catch (Exception ex)
            {
                Response.Redirect("Login1.aspx");
            }


        }
    }

   
    protected void LinkButton1_Click(object sender, EventArgs e)
    {

        //新房
        

        Display display=new Display();
      
    }
    public void init()
    {
        Display display = new Display();
       
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        //Label1.Text = "二手房";
        Display display = new Display();
      
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        //首页
        init();
    }
    public void region()
    {
        Display display = new Display();
       
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        //金水区
        Display display = new Display();
      

    }
   
    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        region();
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        region();
    }
    protected void LinkButton7_Click(object sender, EventArgs e)
    {
        region();
    }
    protected void LinkButton8_Click(object sender, EventArgs e)
    {
        region();
    }
    protected void LinkButton9_Click(object sender, EventArgs e)
    {
        region();
    }
    public void price()
    {
        Display display = new Display();
      //  Label1.Text = display.Click("3");
      

    }
    protected void LinkButton10_Click(object sender, EventArgs e)
    {
        price();
    }
    protected void LinkButton11_Click(object sender, EventArgs e)
    {
        price();
    }
    protected void LinkButton12_Click(object sender, EventArgs e)
    {
        price();
    }
    protected void LinkButton13_Click(object sender, EventArgs e)
    {
        price();
    }
    protected void LinkButton14_Click(object sender, EventArgs e)
    {
        price();
    }
}