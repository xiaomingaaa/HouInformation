using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Text.RegularExpressions;
/// <summary>
/// Check 的摘要说明
/// 检查用户输入，各种检查问题
/// </summary>
public class Check
{
    public Check()
    {
        //
        // TODO: 在此处添加构造函数逻辑
        //
    }
    public static bool CheckInput(string input)
    {
        Regex match = new Regex("[`~!#$^&*()=|{}':;',\\[\\].<>/?~！#￥……&*（）——|{}【】‘；：”“'。，、？]");
        return match.IsMatch(input);
    }
}