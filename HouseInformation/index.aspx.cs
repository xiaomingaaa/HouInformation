using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Oracle.ManagedDataAccess.Client;
using System.Data;
public partial class index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //OracleConnection conn = null;
        //Response.Write(Config.getConnectionString());
        //try
        //{
        //    conn = new OracleConnection(Config.getConnectionString());
        //    conn.Open();
        //    Response.Write("连接成功！");
        //    conn.Close();
        //}
        //catch (Exception ex)
        //{
        //    Response.Write("连接失败:"+ex.Message);
        //}
        //finally
        //{
        //    conn.Close();
        //}
        Test();
    }
    public void Test()
    {
        //string str1 = "insert into testtable values('sha',1)";
        string str = "select * from test where id=:id";
        oracleHelper helper = new oracleHelper();
        DataTable table = new DataTable();
        OracleParameter[] parms = new OracleParameter[1];

        parms[0] = new OracleParameter(":id", OracleDbType.Char);
        parms[0].Value = "1";
        int s = helper.Run(table, str, parms, CommandType.Text);
        GridView1.DataSource = table;
        GridView1.DataBind();
        Response.Write("" + s + "+++++" + helper.ErrorMessage);
    }

    protected void button1_ServerClick(object sender, EventArgs e)
    {

    }
}