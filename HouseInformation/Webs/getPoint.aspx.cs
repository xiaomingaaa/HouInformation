using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Webs_getPoint : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            string groupid = Request.QueryString["groupid"].ToString();
            Response.Write(getPoint(groupid));
            Response.End();
        }
        catch (Exception ex)
        {
            Response.Write("-1");
            Response.End();
        }
        
    }
    private string getPoint(string groupid)
    {
        string str = "";
        string sqlText = "select startpoi,endpoi from groups where groupid="+groupid;
        DataTable table = new DataTable();
        getData data = new getData(table,sqlText);
        if (data.Run())
        {
            foreach (DataRow dr in table.Rows)
            {
                str += dr["startpoi"].ToString() + "|" + dr["endpoi"].ToString();
            }
            return str;
        }
        return "-1";
    }
}