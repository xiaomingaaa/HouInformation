using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Webs_XiangQing : System.Web.UI.Page
{
    Display test = new Display();
    public string userid ="";
    public string houseid = "";
    protected void Page_Load(object sender, EventArgs e)
    {

       // Session["houseid"] = "";
        //Session["userid"] = "1";
      
            
            string houseid = "";
            try
            {
                //正式发布时，取消注释
                houseid = Request.QueryString["houseid"].ToString().Trim();
                this.houseid = houseid;
                userid = Session["userid"].ToString();
                getContent g = new getContent();

               string html = g.content(houseid);

                if (html != "-1")
                {
                    pinglun.InnerHtml = html;
                }
                else
                    pinglun.InnerText = "暂无评论，快来抢占沙发吧";
            }
            catch (Exception ex)
            {
                Log.WriteError(ex.Message + "+没有以正确的方式进入详情页面+" + DateTime.Now.ToString());
                //Response.Write("<script>alert('操作不当造成此错误，可以尝试从展示页面进入此页面')</script>");
                //Response.End();
                Response.Redirect("Login1.aspx");
                return;
            }
           
       
        DataTable table = test.showDetail(houseid);
        if (table != null)
            init(table);
        else
            Response.Write("没有数据");
    }
  
    
   
    public void Click(string id)
    {
       test.Click(id);
        
    }
    public string price="暂无";
    public string builder = "XXXXX";
    public string phone = "暂无";
    public string buildtype = "住宅";
    public string useYear = "70";
    public string decorate = "";
    public string address = "暂无";
    public string location = "XXX";
    public string starttime = "";
    public string saletime = "";
    public string special = "";
    public string policy = "";
    public string status = "待售";
    public string traffic = "暂无";
    public string bussiness = "";
    public string school = "";
    public string hospital = "";
    public string park = "";
    public string self = "";
    public string imageUrl = "";
    public string sencery = "";

    private void init(DataTable table)
    {
        foreach (DataRow dr in table.Rows)
        {
           // Response.Write("<script>alert('"+dr["houseid"].ToString()+"')</script>");
            price = dr["price"].ToString().Trim();
            builder = dr["builder"].ToString().Trim();
            phone = dr["salenum"].ToString().Trim();
            buildtype = dr["housetype"].ToString().Trim();
            useYear = dr["usetime"].ToString().Trim();
            decorate = dr["decorate"].ToString().Trim();
            address = dr["adress"].ToString().Trim();
            location = dr["location"].ToString().Trim();
            starttime = dr["starttime"].ToString().Trim();
            saletime = dr["saletime"].ToString().Trim();
            special = dr["specialpoi"].ToString().Trim();
            policy = dr["policy"].ToString().Trim();
            // status = dr["salestatus"].ToString().Trim();
            traffic = dr["tafficcondition"].ToString().Trim();
            bussiness = dr["bussiness"].ToString().Trim();
            school = dr["school"].ToString().Trim();
            hospital = dr["hospital"].ToString().Trim();
            park = dr["park"].ToString().Trim();
            self = dr["self"].ToString();
            imageUrl = dr["imageurl"].ToString().Trim();
            sencery = dr["sencery"].ToString().Trim();

        }
    }
}