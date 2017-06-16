using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using Oracle.ManagedDataAccess.Client;
/// <summary>
/// oracleHelper 的摘要说明
/// </summary>
public class oracleHelper
{
    public string ErrorMessage = "";
    public oracleHelper()
    {
        //
        // TODO: 在此处添加构造函数逻辑
        //
    }
    /// <summary>
    /// 执行数据库的sql语句
    /// </summary>
    /// <param name="sqlText"></param>
    /// <returns></returns>
    public int Run(string sqlText)
    {
        StoredProcedure sproc = new StoredProcedure(sqlText);
        int flag=sproc.Run();
        this.ErrorMessage = sproc.ErrorMessage;
        sproc.Dispose();
        return flag;
    }
    /// <summary>
    /// 单纯的执行sql语句
    /// </summary>
    /// <param name="table">执行sql语句之后填充的表格</param>
    /// <param name="sql"></param>
    /// <returns></returns>
    public int Run(DataTable table,string sql)
    {
        StoredProcedure sproc = new StoredProcedure(sql);
        int flag= sproc.Run(table);
        this.ErrorMessage = sproc.ErrorMessage;//将错误信息传过来
        sproc.Dispose();
        return flag;
    }
    /// <summary>
    /// 不返回数据表的带参数命令
    /// </summary>
    /// <param name="commdText">sql命令</param>
    /// <param name="parms">命令参数</param>
    /// <returns></returns>
    public int Run(string commdText, OracleParameter[] parms)
    {
        StoredProcedure sproc = new StoredProcedure(commdText,parms);
        int flag = sproc.Run();//不返回数据表
        this.ErrorMessage = sproc.ErrorMessage;
        sproc.Dispose();
        return flag;
    }
    /// <summary>
    /// 带有返回值的sql命令-----带参数--存储过程
    /// </summary>
    /// <param name="table">返回的数据表</param>
    /// <param name="commdText">sql命令</param>
    /// <param name="prams">参数列表</param>
    /// <returns></returns>
    public int Run(DataTable table,string commdText,OracleParameter[] prams)
    {
        StoredProcedure sproc = new StoredProcedure(commdText,prams);
        int flag = sproc.Run(table);
        this.ErrorMessage = sproc.ErrorMessage;
        sproc.Dispose();
        return flag;
    }
    /// <summary>
    /// 使用通用的执行过程
    /// </summary>
    /// <param name="table">返回的数据表</param>
    /// <param name="commdText">sql命令</param>
    /// <param name="parms">sql命令的参数</param>
    /// <param name="type">sql命令的类型</param>
    /// <returns></returns>
    public int Run(DataTable table, string commdText, OracleParameter[] parms,CommandType type)
    {
        StoredProcedure sproc = new StoredProcedure(commdText,type,  parms);
        int flag = sproc.Run(table);
        this.ErrorMessage = sproc.ErrorMessage;
        sproc.Dispose();
        return flag;
    }
    /// <summary>
    /// 使用没有返回值的通用的执行方法
    /// </summary>
    /// <param name="commdText">sql命令</param>
    /// <param name="parms">sql命令之中的参数</param>
    /// <param name="type">sql命令的类型</param>
    /// <returns></returns>
    public int Run(string commdText, OracleParameter[] parms, CommandType type)
    {
        StoredProcedure sproc = new StoredProcedure(commdText,type,parms);
        int flag=sproc.Run();
        this.ErrorMessage = sproc.ErrorMessage;
        sproc.Dispose();
        return flag;
    }
}