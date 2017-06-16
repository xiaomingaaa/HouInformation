using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// baoming 的摘要说明
/// </summary>
public class baoming
{
    
    public baoming()
    {
        //
        // TODO: 在此处添加构造函数逻辑
        //
    }
    public bool regiest(string[] str)
    {
        string sqlText = string.Format("insert into groupuser values({0},{1})",str);
        getData data = new getData(sqlText);
        if (data.Run())
        {
            return true;
        }
        return false;
    }
}