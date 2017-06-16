<%@ WebHandler Language="C#" Class="Handler" %>

using System;
using System.Web;

public class Handler : IHttpHandler
{
    string imageurl = "暂无";
    string Errormessage = "请选择图片";
    public void ProcessRequest(HttpContext context)
    {

        context.Response.ContentType = "text/plain";
        //string parms= context.Request["parms"].ToString();
        //string type = context.Request["type"].ToString();
        //context.Response.Write("Hello World");
        HttpFileCollection files = context.Request.Files;
        try
        {
            if (files.Count > 0)
            {
                for (int i = 0; i < files.Count; i++)
                {
                    HttpPostedFile file = files[i];
                    if (file.ContentLength > 0)
                    {
                        //数据文件的全路径
                        string fullName = file.FileName;
                        //获取图片的名称
                        string fileName = fullName.Substring(fullName.LastIndexOf("\\") + 1);
                        string path = "/upLoadImages/";
                        //保存图片在服务器
                        file.SaveAs(HttpContext.Current.Server.MapPath(path) + fileName);
                        imageurl = "../upLoadImages/" + fileName;
                        Errormessage = "图片上传成功，房源信息插入成功！";
                        // insert(type,parms);
                        //context.Response.Write(Errormessage);
                        //context.ApplicationInstance.CompleteRequest();
                    }
                }
            }
        }
        catch (Exception e)
        {
            Errormessage = "插入失败" + e.Message;
        }



        context.Response.Write(Errormessage);
        //终止发送信息
        context.ApplicationInstance.CompleteRequest();
    }
 
    public bool IsReusable
    {
        get
        {
            return false;
        }
    }

}