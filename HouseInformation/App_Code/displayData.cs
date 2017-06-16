using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// displayData 的摘要说明....作为display页面的ajax响应的逻辑层
/// </summary>
public class displayData
{
    public displayData()
    {
        //
        // TODO: 在此处添加构造函数逻辑
        //
    }
    public bool Data(string[] str)
    {
        string where = "";
        string tableName = "";
        for (int i = 0; i < str.Length - 2; i++)
        {
            switch (str[i])
            {
                case "1":
                    tableName = "newhouseinformation";
                    break;
                case "2":
                    tableName = "secondhouseinformation";
                    break;
                case "3":
                    tableName = "renthouseinformation";
                    break;
                case "4":
                    where += " "+"adress='金水' "+"and";
                    break;
                case "5":
                    where += " " + "adress='二七' " + "and";
                    break;
                case "6":
                    where += " " + "adress='郑东新区' " + "and";
                    break;
                case "7":
                    where += " " + "adress='管城' " + "and";
                    break;
                case "8":
                    where += " " + "adress='adress='惠济' " + "and";
                    break;
                case "9":
                    where += " " + "adress='中原' " + "and";
                    break;
            }
        }

        return false;
    }
}