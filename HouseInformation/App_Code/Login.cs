using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
/// <summary>
/// Login 的摘要说明
/// </summary>
public class Login
{
    public string ErrorMessage = "";
    public string userName = "用户";
    public string userid = "";
    
    public Login()
    {
        //
        // TODO: 在此处添加构造函数逻辑
        //
    }
    //注册逻辑
    public bool register(string[] str)
    {
        string sqlText = string.Format("insert into users values(1,'{0}','{1}','{2}','{3}',1)",str);
        getData data = new getData(sqlText);
        if (data.Run())
            return true;
        else
        {
            ErrorMessage = data.ErrorMessage;
            return false;
            
        }

    }
    public bool login(string[] str)
    {
        DataTable table = new DataTable();
        string sqlText = string.Format("select * from users where email='{0}' and passwd='{1}'",str);
        getData data = new getData(table,sqlText);
        if (data.Run())
        {
            if (table.Rows.Count<=0)
            {
                ErrorMessage = data.ErrorMessage;
                return false;
            }
            else
            {
                foreach (DataRow dr in table.Rows)
                {
                    userName = dr["username"].ToString().Trim();
                    userid = dr["userid"].ToString();
                }
                return true;
            }
                
        }
        ErrorMessage = data.ErrorMessage;
        return false;
    }

}