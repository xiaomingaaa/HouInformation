using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
/// <summary>
/// loadData 的摘要说明
/// </summary>
public class loadData
{
    public string ErrorMessage = "";
    public loadData()
    {
        //
        // TODO: 在此处添加构造函数逻辑
        //
    }
    public string getHtml()
    {



        string html = "";


        string sqlText = "select * from groups ";
        DataTable table = new DataTable();
        getData data = new getData(table,sqlText);
        int count = 0;
        if (data.Run())
        {
            foreach (DataRow dr in table.Rows)
            {
               html+= string.Format("<div class='mm'><div class='groupid{0}' onclick='showDiv(this)'>" +
             "<img src='../images/看房团路线.png' />" +

              "</div>" +

              "<div id='groupid{1}' style='display:none;'>" + "{2}" + "</div>" + "<br/>" +
              "<span>楼盘优惠：{3}</span><br/>" + "<span>承诺服务：{6}</span><br />" +
                " <span>集合信息：{4}</span>" + " <a class='button1' href='XiangQing.aspx?houseid={5}'  >查看详情</a>" +
                " <input type='button' class='button' id='{7}' value='免费报名' onclick='baoming(this)'  />" 
          + "</div>", count,count,dr["startpoi"].ToString().Trim()+"|"+dr["endpoi"].ToString().Trim()
              ,dr["policy"].ToString().Trim(),dr["togather"].ToString().Trim(),dr["houseid"].ToString().Trim(),dr["serivice"].ToString().Trim(),
              dr["groupid"].ToString().Trim());
               
                count++;
            }
            html += "<script type='text/javascript'> function showDiv(str)" +


                "{ var div = document.getElementById('show');"+
                "div.style.display = 'block'; }"+ "</script >";





            return html;
        }
        else
        {
            ErrorMessage = data.ErrorMessage;
            return null;
        }

       // return null;
    }
}