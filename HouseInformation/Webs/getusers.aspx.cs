using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Webs_getusers : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string responseText = getusers();
        Response.Write(responseText);
        Response.End();
    }
    private string getusers()
    {
        string str = "";
        DataTable table = new DataTable();
        string sqlText = "select email,passwd from users";
        getData data = new getData(table,sqlText);
        if (data.Run())
        {
            foreach (DataRow dr in table.Rows)
            {
                str = str + dr["email"].ToString().Trim() + "|" + dr["passwd"].ToString().Trim() + "*";

            }
        }
        else
            str = "";
        return str;
    }
}