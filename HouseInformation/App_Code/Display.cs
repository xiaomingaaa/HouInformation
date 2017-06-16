// File:    Display.cs
// Author:  a
// Created: 2017年5月11日 21:15:17
// Purpose: Definition of Class Display

using System;
using System.Data;

public class Display
{
    public int GetData()
    {
        throw new NotImplementedException();
    }

    public string Click(string type1)
    {
        //switch (id)
        //{
        //    case "1":

        //}
        // TODO: implement
        DataTable table = new DataTable();
        string sqlText = "";
        if (type1 == "1")
        {
            sqlText = "select * from newhouseinformation where housetype=1 order by houseid desc";
        }
        else
            if (type1 == "2")
        {
            sqlText = "select * from RENTHOUSEINFORMATION order by houseid desc";
        }
        else if (type1 == "3")
        {
            sqlText = "select * from RENTHOUSEINFORMATION";
        }
        else
        if (type1 == "4")
        {
            sqlText = "select * from newhouseinformation where location like '%金水%'";
        }
        else if(type1=="5")
            sqlText = "select * from newhouseinformation where location like '%二七%'";
        else if (type1 == "6")
            sqlText = "select * from newhouseinformation where location like '%郑东新区%'";
        else if (type1 == "7")
            sqlText = "select * from newhouseinformation where location like '%管城%'";
        else if (type1 == "8")
            sqlText = "select * from newhouseinformation where location like '%惠济%'";
        else if (type1 == "9")
            sqlText = "select * from newhouseinformation where location like '%中原%'";
        else if (type1 == "10")
            sqlText = "select * from newhouseinformation where price<5000";
        else if (type1 == "11")
            sqlText = "select * from newhouseinformation where price>=5000 and price<=7000";
        else if (type1 == "12")
            sqlText = "select * from newhouseinformation where price>=7000 and price<=8000";
        else if (type1 == "13")
            sqlText = "select * from newhouseinformation where price>=8000 and price<=10000";

        else if (type1 == "14")
            sqlText = "select * from newhouseinformation where price>=10000";
        getData get1 = new getData(table,sqlText);


        //查询返回数据时使用
        // getData get = new getData(table,"select * from tableName where id="+id);
        bool flag = get1.Run();
        if (!flag||table.Rows.Count<=0)
        {
           // Log.WriteError(get1.ErrorMessage);
            return "暂时没有数据，快去发布吧" ;
        }
       
        string houseid = "";
        string userid = "";
        string imageurl = "";
        string content = "";//房主有话说
        string adress = "";
        string location = "";
        string html = "";
        string saletime = "";
        string policy = "";
        string price = "";
        string area = "";//面积
        string tafficcondition = "";
        string salenum = "";
        string type;
        Random r = new Random();
        if (type1 == "3"||type1=="2")
        {
           
            foreach (DataRow dr in table.Rows)
            {
                int random = r.Next(1, 4);
                switch (random)
                {
                    case 1:
                        type = "品牌产地";
                        break;
                    case 2:
                        type = "景观产地";
                        break;
                    case 3:
                        type = "公园产地";
                        break;
                    default:
                        type = "复合产地";
                        break;
                }
                html += string.Format("<div class='div_k'>" +
       "<div class='div_m'>" +
        "<div class='div_s'>" +
            "<div class='div_pic'><a href='XiangQing.aspx?houseid={9}'><img src='{10}' class='img_pic'/></a></div>" +
            "<div class='div_t'>" +
                "<div class='div_zi'><a href='XiangQing.aspx?houseid={11}'>{0}</a></div>" +
                "<span>待售</span>" +
                "<div class='div_zi'>{1}</div>" +
                "<div class='div_zi'>{2}</div>" +
                "<div class='div_zi'>{3}</div></div>" +

            "<div class='div_r'>" +
                "<div class='div-l1'>参考均价 ：</div>" +
                "<span class='div_sp0'>{4}</span>" +
                "<div class='div-l1'>元 / ㎡</div><div>" +

                "<div class='div-pic2'></div>" +
                "<span class='div-sp'>{5}</span>" +
                 "<span class='div-sp'>转</span>" +
                "<span class='div-sp'>{6}</span></div></div></div>" +
               "<div class='div_x'>" + "<div style='float:left;width:70px;margin-top:15px;'>" +
            "<span>动 态</span></div><div style='text-align:left;'>{7}-{8}</div></div></div></div>", dr["adress"].ToString().Trim(), dr["area"].ToString().Trim(),
            dr["adress"].ToString().Trim(),type,dr["price"].ToString(), dr["salenum"].ToString().Trim()
            , dr["salenum"].ToString().Trim(),"2017-05-09 00:00:00", dr["adress"].ToString(), dr["houseid"].ToString(), dr["imageurl"].ToString().Trim(), dr["houseid"].ToString());
            }
        }
        else
        foreach (DataRow dr in table.Rows)
        {
            int random = r.Next(1,4);
            switch (random)
            {
                case 1:
                    type = "品牌产地";
                    break;
                case 2:
                    type = "景观产地";
                    break;
                case 3:
                    type = "公园产地";
                    break;
                default:
                    type = "复合产地";
                    break;
            }
            houseid = dr["houseid"].ToString();
            userid = dr["userid"].ToString();
            imageurl = dr["imageurl"].ToString();
            area = dr["area"].ToString();
            policy = dr["policy"].ToString();
            tafficcondition = dr["tafficcondition"].ToString();
            price = dr["price"].ToString();
            salenum = dr["pnum"].ToString();
            location = dr["location"].ToString();
            adress = dr["adress"].ToString();
            content = dr["content"].ToString();
            saletime = dr["saletime"].ToString();
            // html += "<tr><td><a href='XiangQing.aspx?houseid=" + houseid + "'><img src=" + imageurl + " class='p' /></a></td></tr>";
            



            html += string.Format("<div class='div_k'>" +
       "<div class='div_m'>" +
        "<div class='div_s'>" +
            "<div class='div_pic'><a href='XiangQing.aspx?houseid={9}'><img src='{10}' class='img_pic'/></a></div>" +
            "<div class='div_t'>" +
                "<div class='div_zi'><a href='XiangQing.aspx?houseid={11}'>{0}</a></div>" +
                "<span>待售</span>" +
                "<div class='div_zi'>{1}</div>" +
                "<div class='div_zi'>{2}</div>" +
                "<div class='div_zi'>{3}</div></div>" +

            "<div class='div_r'>" +
                "<div class='div-l1'>参考均价 ：</div>" +
                "<span class='div_sp0'>{4}</span>" +
                "<div class='div-l1'>元 / ㎡</div><div>" +

                "<div class='div-pic2'></div>" +
                "<span class='div-sp'>{5}</span>" +
                 "<span class='div-sp'>转</span>" +
                "<span class='div-sp'>{6}</span></div></div></div>" +
               "<div class='div_x'>" + "<div style='float:left;width:70px;margin-top:15px;'>"+
            "<span>动 态</span></div><div style='text-align:left;'>{7}-{8}</div></div></div></div>", location, area, adress,type,price,salenum
            ,salenum,saletime,adress,houseid,imageurl,houseid);



        }
       
        return html;
    }








    public bool flag;
    public DataTable showDetail(string id)
    {
        DataTable table = new DataTable();
        getData data = new getData(table, "select * from newhouseinformation where houseid=" + id);
        flag = data.Run();
        if (flag)
            return table;
        else
            return null;
    }


}
