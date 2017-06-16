using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Webs_guanzhu : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string type = Request.QueryString["type"].ToString();
        string parms = Request.QueryString["parms"].ToString();
        Response.Write(operate(type,parms));
        Response.End();
    }
    guanzhu oper = new guanzhu();
    private string operate(string type, string parms)
    {
        //userid|houseid
        string[] str = parms.Split('|');
        if (type == "1")
        {
            if (oper.check(str))
            {
                return "1";
            }
            else
                return "-1";
        }
        if (type == "2")
        {
            if (oper.insert(str))
            {
                return "1";
            }
            else if (oper.flag == -1)
            {
                return "0";
            }
            else
                return "-1";
        }
        else
            return "0";
    }
}