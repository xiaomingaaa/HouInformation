using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
/// <summary>
/// guanzhu 的摘要说明
/// </summary>
public class guanzhu
{
    public string ErrorMessage = "";
   public  int flag = 1;
    public guanzhu()
    {
        //
        // TODO: 在此处添加构造函数逻辑
        //
    }
    public bool check(string[] str)
    {
        string sqlText = string.Format("select * from concern where userid={0} and houseid={1}", str);
        DataTable table =new DataTable();
        
        getData data = new getData(table, sqlText);
        
       
        if (data.Run())
        {
            if (table.Rows.Count>0)
            {
                return true;
            }
            else
            {

                ErrorMessage = data.ErrorMessage;
                Log.WriteError(ErrorMessage+"测试关注功能:"+DateTime.Now.ToString());
                return false;

            }
        }
        else
        {
            ErrorMessage = data.ErrorMessage;
            return false;
        }
    }
    public bool insert(string[] str)
    {
        if (!check(str))
        {
            string sqlText = string.Format("insert into concern values({0},{1})", str);
            getData data = new getData(sqlText);
            if (data.Run())
            {
                return true;
            }
            else
            {
                ErrorMessage = data.ErrorMessage;
                Log.WriteError(ErrorMessage + ":在进行关注时出现插入的错误：" + DateTime.Now.ToString());
                return false;
            }
        }
        else
        {
            flag = -1;
            return false;
        }
    }
}