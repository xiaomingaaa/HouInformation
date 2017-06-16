using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Oracle.ManagedDataAccess.Client;
using System.Data;
using System.Configuration;
/// <summary>
/// StoredProcedure 的摘要说明
/// 执行存储过程以及一些sql语句
/// </summary>
public class StoredProcedure:IDisposable
{
    public  string ErrorMessage = "";
    private OracleCommand command;
    /// <summary>
    /// 执行传入的sql语句------操作1
    /// </summary>
    /// <param name="sqlText">sql语句</param>
    public StoredProcedure(string sqlText)
    {
        command = new OracleCommand(sqlText,new OracleConnection(Config.getConnectionString()));
        command.CommandType = CommandType.Text;
        command.Connection.Open();
    }
    /// <summary>
    /// 执行存储过程---------操作2
    /// </summary>
    /// <param name="procName">存储过程名</param>
    /// <param name="parms">参数数组</param>
    public StoredProcedure(string procName,OracleParameter[] parms)
    {
        command = new OracleCommand(procName,new OracleConnection(Config.getConnectionString()));
        command.CommandType = CommandType.StoredProcedure;
        command.Parameters.AddRange(parms);
        command.Connection.Open();
    }
    /// <summary>
    /// 通用的数据库访问（既可以是存储过程哟偶可以是单纯1的Sql语句）
    /// </summary>---------操作3
    /// <param name="commdText">sql命令</param>
    /// <param name="type">执行的命令的类型</param>
    /// <param name="parms">参数列表</param>
    /// 使用参数暂时出现了问题
    public StoredProcedure(string commdText,CommandType type,OracleParameter[] parms)
    {
        command = new OracleCommand(commdText,new OracleConnection(Config.getConnectionString()));
        command.CommandType = type;
        command.Parameters.AddRange(parms);

        command.Connection.Open();//打开连接
    }
    /// <summary>
    /// 执行命令返回是否成功
    /// </summary>
    /// <returns></returns>
    public int Run()
    {
        if (command == null)
        {
            return -1;
        }
        try
        {
            command.ExecuteNonQuery();
            return 1;
        }
        catch (Exception e)
        {
            ErrorMessage = e.Message + "####" + command.CommandText;
            //记入日志
            Log.WriteError(ErrorMessage + ":" + DateTime.Now.ToString());
            return -1;
        }
        finally
        {
            command.Dispose();
            command.Connection.Close();
        }
    }
    public int Run(DataTable table)
    {
       
        if (command == null)
        {
            //记入日志
            Log.WriteError("未知错误，command对象为空"+":"+DateTime.Now.ToString());
            return -1;
        }
        try
        {
            OracleDataAdapter da = new OracleDataAdapter(command);
            da.Fill(table);
            return 1;
        }
        catch (Exception e)
        {
            ErrorMessage = e.Message + "####" + command.CommandText ;
            //记入日志
            Log.WriteError(ErrorMessage+":"+DateTime.Now.ToString());
            return -1;
        }
        finally
        {
            command.Dispose();
            command.Connection.Close();
        }

    }


    /// <summary>
    /// 释放掉资源
    /// </summary>
    public void Dispose()
    {
        if (command != null)
        {
            command.Dispose();
            command.Connection.Dispose();
            command = null;
        }
    }
}