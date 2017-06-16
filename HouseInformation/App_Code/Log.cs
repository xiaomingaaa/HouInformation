using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.IO;
/// <summary>
/// Log 的摘要说明
/// </summary>
public class Log
{
    public Log()
    {
        //
        // TODO: 在此处添加构造函数逻辑
        //
    }
    public static string path = HttpContext.Current.Request.PhysicalApplicationPath + "log/";
    //FileStream s = new FileStream(,FileMode.OpenOrCreate);
    //static StreamWriter logWrite;//new StreamWriter(HttpContext.Current.Server.MapPath("~/log/") + DateTime.Today.ToString() + ".log");
    public static void WriteError(string error)
    {
        if (!Directory.Exists(path))
        {
            Directory.CreateDirectory(path);
        }
      StreamWriter  logWrite = File.AppendText(path + DateTime.Now.ToString("yyyy-MM-dd") + ".log");
        logWrite.WriteLine(error);
        logWrite.Close();
    }
}