using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
/// <summary>
/// admin 的摘要说明
/// </summary>
public class admin
{
    public string ErrorMessage = "";
    public admin()
    {
        //
        // TODO: 在此处添加构造函数逻辑
        //
    }

    public DataTable getDataTable(string tableName)
    {
        DataTable table = new DataTable();
        getData data = new getData(table,"select * from  "+tableName );
        if (data.Run())
            return table;
        else { return null; }
    }
    public void delete(int id,string tableName)
    {
        string sqlText =string.Format( "delete from {0} where houseid={1}",tableName,id);
        getData data = new getData(sqlText);
        if (data.Run())
            return;
        else
            ErrorMessage = data.ErrorMessage;
    }

}