using System.Configuration;
/// <summary>
/// Config 的摘要说明
/// </summary>
public class Config
{
    public Config()
    {
        //
        // TODO: 在此处添加构造函数逻辑
        //
    }
    private static string connect;
   
    public static string getConnectionString()
    {
        connect = ConfigurationManager.ConnectionStrings["connectionString"].ToString();
        return connect;
    }

}