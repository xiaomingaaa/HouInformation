using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using Oracle.ManagedDataAccess.Client;
/// <summary>
/// getData 的摘要说明
/// 获取自己需要的数据
/// </summary>
public class getData
{
    public string ErrorMessage = "";
    oracleHelper helper = null;
    //判断语句执行是否成功
    int flag = 0;
    /// <summary>
    /// 执行单条sql语句，不带参数------update,insert,delete
    /// </summary>
    /// <param name="sqlText">单条sql语句</param>
    public getData(string sqlText)
    {
        helper = new oracleHelper();
        flag=helper.Run(sqlText);
        this.ErrorMessage = helper.ErrorMessage;
    }
    /// <summary>
    /// 执行带参数的sql语句不带返回值-------update,delete,insert
    /// </summary>
    /// <param name="sqlText">参数化的sql语句</param>
    /// <param name="parms">参数</param>
    public getData(string sqlText,OracleParameter[] parms)
    {
        helper = new oracleHelper();
        flag = helper.Run(sqlText,parms,CommandType.Text);
        this.ErrorMessage = helper.ErrorMessage;
    }
    /// <summary>
    /// 带有返回值的命令过程----查询--select
    /// </summary>
    /// <param name="table"></param>
    /// <param name="sqlText"></param>
    /// <param name="prams"></param>
    public getData(DataTable table, string sqlText,OracleParameter[] prams)
    {
        helper = new oracleHelper();
        flag=helper.Run(table,sqlText,prams,CommandType.Text);
        this.ErrorMessage = helper.ErrorMessage;
    }
    /// <summary>
    /// 具有返回值的sql语句---非参数化的---update,insert,delete
    /// </summary>
    /// <param name="table"></param>
    /// <param name="sqlText"></param>
    public getData(DataTable table, string sqlText)
    {
        helper = new oracleHelper();
        flag = helper.Run(table,sqlText);
        this.ErrorMessage = helper.ErrorMessage;
    }
    /// <summary>
    /// 
    /// </summary>
    /// <returns></returns>
    public bool Run()
    {
        //if (helper == null)
        //    return false;
        if (flag == 1)
            return true;
        else
            return false;
    }
    public int test()
    {
        return flag;
    }
}