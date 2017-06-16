using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

/// <summary>
/// getContent 的摘要说明
/// </summary>
public class getContent
{
    public getContent()
    {
        //
        // TODO: 在此处添加构造函数逻辑
        //
    }
    /// <summary>
    /// 返回评论列表的HTML字符串
    /// </summary>
    /// <param name="parms">userid|houseid</param>
    /// <returns></returns>
    public string content(string  houseid)
    {
        string sqlText =string.Format( "select * from returncontent where  houseid={0}",houseid);
        DataTable table = new DataTable();
        getData data = new getData(table,sqlText);
        string html = "";
        int count = 1;
        if (data.Run())
        {
            if (table.Rows.Count > 0)
            {
                html = "<div id = 'pinglun' class='pinglun'>" +
            "<div class='daohang'>" +
                "<span class='count'>网友评论("+table.Rows.Count+")</span>" +
                "<a class='fa' href='#ccc'>发表评论</a>" +
                "<hr style= 'background-color:green' />" +
            "</div>";
                foreach (DataRow dr in table.Rows)
                {
                    html += string.Format("" +
            "<div class='mycontent' id='contentArea'>" +
               "<div style = 'width:500px;'>" +
                  "<span style='color:darkgray'>{0}楼:{1}发表于{2}</span>" +
                   //"<a class='fa'  href='#ccc' id='{4}'>回复评论</a><br/>" +
                   "<br/><br/><span>{3}</span><br/><br/>" + "</div></div>" 
                 ,        count,dr["username"].ToString().Trim(),dr["poitime"].ToString().Trim(),dr["content"].ToString(),dr["id"].ToString()); 
    
             
        count++;
                }

                return html+"</div>";
            }
            else
                return "-1";
        }
        else
            return "-1";
    }
}