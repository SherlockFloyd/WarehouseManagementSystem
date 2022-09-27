using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;


public partial class FramePage_Top : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {
      
        if (!Page.IsPostBack)
        {

            string date = DateTime.Now.ToShortDateString();
            string today = Convert.ToDateTime(date).ToString("yyyy年MM月dd日");//今天年月日

            string week = GetWeedNumber(Convert.ToDateTime(date).DayOfWeek.ToString());//星期
            int hour = int.Parse(Convert.ToDateTime(date).ToString("HH"));
            string apm = string.Empty;
            if (hour > 12)
            {
                apm = "下午";
            }
            else
            {
                apm = "上午";
            }

            this.Label1.Text = string.Format("您好：{0}　今天是{1}　星期{2}　{3}{4} ", "操作员", today, week, "", "");
 
        }
    }


    /// <summary>
    /// 星期转换
    /// </summary>
    /// <param name="week"></param>
    /// <returns></returns>
    public static string GetWeedNumber(string week)
    {
        string weeknumber = string.Empty;
        switch (week)
        {
            case "Monday":
                weeknumber = "一";
                break;
            case "Tuesday":
                weeknumber = "二";
                break;
            case "Wednesday":
                weeknumber = "三";
                break;
            case "Thursday":
                weeknumber = "四";
                break;
            case "Friday":
                weeknumber = "五";
                break;
            case "Saturday":
                weeknumber = "六";
                break;
            case "Sunday":
                weeknumber = "日";
                break;

        }
        return weeknumber;
    }

     
}
