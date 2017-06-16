using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
/// <summary>
/// insertContent 的摘要说明
/// </summary>
public class insertContent
{
    public insertContent()
    {
        //
        // TODO: 在此处添加构造函数逻辑
        //
    }
    public bool istContent(string[] parms,string content)
    {
        content = content.Trim();
        string username = "";
        DataTable table = new DataTable();
        string sql = "select username from users where userid="+parms[0];
        getData data = new getData(table,sql);
        if (data.Run())
            username = table.Rows[0]["username"].ToString().Trim();
        else
            return false;
        string sqlText = string.Format("insert into returncontent(poitime,userid,houseid,username,content) values(to_date('{0}','YYYY-MM-DD HH24:MI:SS'),{1},{2},'{3}','{4}')"
            , DateTime.Now.ToString(),parms[0]
            ,parms[1],username,content);
        data = new getData(sqlText);
        if (data.Run())
        {
            return true;
        }
        
        return false;
    }
}