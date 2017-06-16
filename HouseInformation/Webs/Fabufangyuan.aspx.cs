using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Webs_Fabufangyuan : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    /*public void F(string houseid)
    {
        Test tes = new Test();
        //html数据
         Label.Text= tes.F();
    }*/
    private string getString()
    {
        loadData data = new loadData();
        string html = data.getHtml();
        if (html != null)
        {
            return html;
        }
        return null;
    }
    //出租房源信息：
    public string imageUrl = "";
    public string adress = "暂无";
    public string price = "";
    public string area = "";
    public string phone = "";
    public int housetype = 3;
    public string content = "暂无数据";
    public string decorate = "";

    protected void Button1_Click(object sender, EventArgs e)
    {
        try {
            if (UpLoad_1())
            {
                init();
                string sqlText = string.Format("insert into renthouseinformation(adress,price,area,salenum,housetype,content,decorate,imageurl,userid) values('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}')"
                    , adress, price, area, phone, housetype, content, decorate, imageUrl, Session["userid"].ToString()
                    );
                getData data = new getData(sqlText);
                if (data.Run())
                {
                    id1_1.Value = "";
                    id1_2.Value = "";
                    id1_3.Value = "";
                    id1_4.Value = "";
                    id1_5.Value = "";
                    id1_6.Value = "";
                    Response.Write("<script>alert('发布成功')</script>");
                }
                else
                {
                    Response.Write("发布失败，请重试");
                }

            }
            else
            {
                Response.Write("<script>alert('别忘了上传图片哦')</script>");
                return;
            } }
        catch (Exception ex)
        {
            Response.Write("出错："+ex.Message);
        }
    }
    private void init()
    {
        adress = id1_1.Value.ToString().Trim();
        price = id1_2.Value.ToString().Trim();
        area = id1_3.Value.ToString().Trim();
        phone = id1_4.Value.ToString().Trim();
        decorate = id1_5.Value.ToString().Trim();
        content = id1_6.Value.ToString().Trim();
    }

    private bool UpLoad_1()
    {
        try
        {
            if (this.FileUpload1.HasFile)
            {
                string fileExtension = System.IO.Path.GetExtension(this.FileUpload1.FileName).ToLower();
                try
                {
                    this.FileUpload1.SaveAs(Server.MapPath("/upLoadImages/") + FileUpload1.FileName);
                    imageUrl = "../upLoadImages/" + FileUpload1.FileName;
                    return true;
                }
                catch (Exception e)
                {
                    Response.Write("<script>alert('上传图片出错,请重新上传" + e.Message + "')</script>");
                    return false;
                }
                

            }
            else
            return false;
        }
        catch (Exception ex)
        {
            Log.WriteError(ex.Message + "上传图片时出错！" + ":" + DateTime.Now.ToString());
            return false;
        }

    }
}