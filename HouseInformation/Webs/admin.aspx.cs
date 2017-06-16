using System;
using System.Web.UI.WebControls;
using System.Data;
public partial class Webs_admin : System.Web.UI.Page
{
    admin admin = new admin();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void submit_ServerClick(object sender, EventArgs e)
    {
        Response.Write("sdasdasdsad");
    }
    private string salenum;
    private double price;
    private string area;
    private string decorate;
    private string content;
    private int housetype;
    private string imageUrl;
    protected void Button1_Click(object sender, EventArgs e)
    {
        init();
        UpLoad();
        try
        {
            string sqlText = string.Format("insert into renthouseinformation values(1,1,'{0}',{1},'{2}','{3}','{4}','{6}',{5},'金水区')", salenum,
           price, area, decorate, content, housetype, imageUrl);
            getData data = new getData(sqlText);
            bool flag = data.Run();
            if (flag)
                Response.Write("<script>alert('插入成功')</script>");
            else
                Response.Write("<script>alert('插入失败')</script>");
        }
        catch (Exception ex)
        {
            Log.WriteError(ex.Message + ":插入出租房源的时候:" + DateTime.Now.ToString());
            Response.Write("<script>alert('录入出错，请重新录入')</script>");
        }

    }
    private void init()
    {
        salenum = id1_4.Value.ToString().Trim();
        price = Convert.ToDouble(id1_2.Value.ToString().Trim());
        area = id1_3.Value.ToString().Trim();
        decorate = id1_5.Value.ToString().Trim();
        content = id1_6.Value.ToString().Trim();
        housetype = 1;
    }
    private void UpLoad()
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
                }
                catch (Exception e)
                {
                    Response.Write("<script>alert('上传图片出错,请重新上传" + e.Message + "')</script>");
                }
            }
        }
        catch (Exception ex)
        {
            Log.WriteError(ex.Message + "上传图片时出错！" + ":" + DateTime.Now.ToString());
        }

    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        try
        {
            rentData.Style.Add("display", "block");
            concern.Style.Add("display","none");
            DataTable table = new DataTable();
            //大作业需要
            //string sqlText = " select * from renthouseinformation where userid="+Session["userid"].ToString();
            string sqlText = " select * from renthouseinformation " ;
            getData data = new getData(table, sqlText);
            bool flag = data.Run();
            if (flag)
            {
                if (table == null)
                {
                    Response.Write("<script>alert('没有此数据')</script>");
                    return;
                }
                GridView1.DataSource = table;
                GridView1.DataBind();
            }
            else
            {
                Response.Write("<script>alert('查询不到此数据')</script>");
            }


            // Response.Write("<script>alert('chucuo1+"+data.ErrorMessage+"')</script>");
        }
        catch (Exception ex)
        {
            Log.WriteError(ex.Message + ":admin.aspx页面管理出租房源按钮出错：" + DateTime.Now.ToString());
        }

    }

    private void bind(string tableName)
    {
        DataTable table = new DataTable();

        table = admin.getDataTable(tableName);

        GridView1.DataSource = table;
        GridView1.DataKeyNames = new string[] { "houseid" };
        GridView1.DataBind();
        table.Dispose();
    }


    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        this.bind("renthouseinformation");
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        try
        {
            int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
            admin.delete(id, "renthouseinformation");
            this.bind("renthouseinformation");
        }
        catch (Exception ex)
        {
            Log.WriteError(ex.Message + "删除房源信息时出错：" + DateTime.Now.ToString());
        }


    }

    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {

    }

    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());

    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        try
        {
            concern.Style.Add("display", "block");
            rentData.Style.Add("display","none");
            DataTable table = new DataTable();
            string sqlText = " select houseid from concern where userid="+Session["userid"].ToString();
            DataSet ds = new DataSet();
           
            getData data = new getData(table, sqlText);
            foreach (DataRow dr in table.Rows)
            {
                DataTable a = new DataTable();
                data = new getData(a,"select * from newhouseinformation where houseid="+dr["houseid"].ToString());
                ds.Tables.Add(a);
            }
            bool flag = data.Run();
            if (flag)
            {
                if (table == null)
                {
                    Response.Write("<script>alert('没有此数据')</script>");
                    return;
                }
                GridView2.DataSource =ds;
                GridView2.DataBind();
            }
            else
            {
                Response.Write("<script>alert('查询不到此数据')</script>");
            }


            // Response.Write("<script>alert('chucuo1+"+data.ErrorMessage+"')</script>");
        }
        catch (Exception ex)
        {
            Log.WriteError(ex.Message + ":admin.aspx页面管理出租房源按钮出错：" + DateTime.Now.ToString());
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        if (init2())
        {
            UpLoad1();

            string sqlText = string.Format("insert into newhouseinformation values(1,{0},1,'{1}',"+
                "'{2}','{3}',{4},'{5}',{6},'暂无','{7}','{8}',1,to_date('{9}','yyyy-mm-dd'),to_date('{10}','yyyy-mm-dd'),'{11}','{12}'" +
                "'{13}','{14}','{15}','{16}','{17}','{18}','{19}','{20}','{21}','{22}'"+")"
                ,"1",new_content,new_adress,new_builder,new_price,new_phone,new_year
                ,new_decorate,new_location,starttime,saletime,"暂无",new_adress1,new_salenum,new_taffic,new_senery,new_bussinewss,new_park
                ,new_school,new_hospital,new_self,new_area,new_imageurl);


            getData data = new getData(sqlText);
            if (data.Run())
            {
                Response.Write("<script>alert('发布成功')</script>");

            }
            else Response.Write("<script>alert('发布失败"+data.ErrorMessage+"')</script>");

        }
    }
    string new_adress = "";
    string new_price = "";
    string new_area = "";
    string new_phone = "";
    string new_decorate = "";
    string new_builder1 = "";
    string new_builder = "";
    string new_year = "";
    string new_location = "";
    string new_salestatus = "";
    string starttime = "";
    string saletime = "";
    string policy = "";
    string new_adress1 = "";
    string new_around = "";
    string new_taffic = "";
    string new_senery = "";
    string new_park = "";
    string new_bussinewss = "";
    string new_hospital = "";
    string new_school = "";
    string new_self = "";
    string new_leixing = "";
    string new_salenum = "";
    string new_content = "";
    string new_imageurl = "";
    private bool init2()
    {
        bool flag = true;
        try
        {
            new_adress = id2_1.Value.ToString().Trim();
            new_price = id2_2.Value.ToString().Trim();
            new_area = id2_3.Value.ToString().Trim();
            new_phone = id2_4.Value.ToString().Trim();
            new_decorate = id2_5.Value.ToString().Trim();
            new_builder1 = id2_6.Value.ToString().Trim();
            new_builder = id2_7.Value.ToString().Trim();
            new_year = id2_8.Value.ToString().Trim();
             new_location = id2_9.Value.ToString().Trim();
             new_salestatus = id2_10.Value.ToString().Trim();
             starttime = id2_11.Value.ToString().Trim();
             saletime = id2_12.Value.ToString().Trim();
             policy = id2_13.Value.ToString().Trim();
             new_adress1 = id2_14.Value.ToString().Trim();
             new_around = id2_15.Value.ToString().Trim();
             new_taffic = id2_16.Value.ToString().Trim();
             new_senery = id2_17.Value.ToString().Trim();
             new_park = id2_18.Value.ToString().Trim();
             new_bussinewss = id2_19.Value.ToString().Trim();
             new_hospital = id2_20.Value.ToString().Trim();
             new_school = id2_21.Value.ToString().Trim();
             new_self = id2_22.Value.ToString().Trim();
             new_leixing =id2_23.Value.ToString().Trim();
             new_salenum = id2_24.Value.ToString().Trim();
             new_content = id2_25.Value.ToString().Trim();
             
        }
        catch (Exception e)
        {
            flag = false;
        }
        return flag;
    }

    private void UpLoad1()
    {
        try
        {
            if (this.FileUpload2.HasFile)
            {
                string fileExtension = System.IO.Path.GetExtension(this.FileUpload2.FileName).ToLower();
                try
                {
                    this.FileUpload2.SaveAs(Server.MapPath("/upLoadImages/") + FileUpload2.FileName);
                    new_imageurl = "../upLoadImages/" + FileUpload2.FileName;
                }
                catch (Exception e)
                {
                    Response.Write("<script>alert('上传图片出错,请重新上传" + e.Message + "')</script>");
                }
            }
        }
        catch (Exception ex)
        {
            Log.WriteError(ex.Message + "上传图片时出错！" + ":" + DateTime.Now.ToString());
        }

    }



    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        //try
        //{
        //    rentData.Style.Add("display", "block");

        //    DataTable table = new DataTable();
        //    string sqlText = " select * from renthouseinformation";
        //    getData data = new getData(table, sqlText);
        //    bool flag = data.Run();
        //    if (flag)
        //    {
        //        if (table == null)
        //        {
        //            Response.Write("<script>alert('没有此数据')</script>");
        //            return;
        //        }
        //        GridView1.DataSource = table;
        //        GridView1.DataBind();
        //    }
        //    else
        //    {
        //        Response.Write("<script>alert('查询不到此数据')</script>");
        //    }


        //    // Response.Write("<script>alert('chucuo1+"+data.ErrorMessage+"')</script>");
        //}
        //catch (Exception ex)
        //{
        //    Log.WriteError(ex.Message + ":admin.aspx页面管理出租房源按钮出错：" + DateTime.Now.ToString());
        //}
    }
}