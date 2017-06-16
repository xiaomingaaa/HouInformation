using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Webs_loadData : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        loadData data = new loadData();
        string str = data.getHtml();
        if (str != null)
        {
            Response.Write(str);
            Response.End();
                
        }
    }
    
}