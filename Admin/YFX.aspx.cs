using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using WebChart;
using System.Drawing;

public partial class Admin_YFX : System.Web.UI.Page
{
    protected MapChart Chart1;

    //定义一个颜色数组,供循环时为不同的记录填充不同的颜色  
    private string[] myColor = new string[]  
    {      "Tomato",
        //西红柿    
        "Black",    
        "Gold",     
        "Blue",    
        "Green",   
        "Orange",    
        "Pink",
        //粉红    
        "Violet",
        //紫罗兰  
        "Orchid",
        //淡紫色  
        "Lime",
        //亮绿    
        "Tan",
        //茶色   
        "Red",  
        "Navy"
        //橘红 
    };  


    protected void Page_Load(object sender, EventArgs e) 
    {
        if (!IsPostBack)
        {
            MapView();

        }
    }

    private void MapView()
    {
        int iCount = 0;
        string strWhere = "";

        string mysql1 = "select sum(数量) as 销售数量 ,货物名称 from V_销售  where 销售日期 like '" + this.txtDD.Text + "%'  group by 货物名称 ";
        DataTable dt =DataControl.GetData(mysql1);
        if (dt.Rows.Count <= 0)
        {
            return;
        }
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            ColumnChart mychart = new ColumnChart();
            mychart.MaxColumnWidth = 24;
            mychart.Fill.Color = Color.FromName(this.myColor[i]);
            mychart.DataLabels.Visible = true;
            mychart.DataLabels.Font = new Font("Verdana", 14);
            mychart.Data.Add(new ChartPoint("", Convert.ToInt32(dt.Rows[i]["销售数量"].ToString())));
            mychart.Legend = dt.Rows[i]["货物名称"].ToString();
            this.ChartControl1.Charts.Add(mychart);

        }
        ChartControl1.Background.Color = Color.FromArgb(165, 0, 16);
        ChartControl1.YAxisFont.ForeColor = Color.FromArgb(165, 0, 16);
        ChartControl1.XAxisFont.ForeColor = Color.FromArgb(165, 0, 16);
        ChartControl1.Border.Color = Color.FromArgb(200, 200, 200);
        ChartControl1.BorderStyle = BorderStyle.None;
        double max = int.Parse(dt.Compute("MAX(销售数量)", "").ToString());
        int intv = 2;
        //数量小于16的情况   
        if (max < 16)
        {
            max = 16;
        }        //大于16的情况       
        else
        {
            int intintv = int.Parse(Math.Ceiling(max / 8).ToString());
            max += intv;
        }
        //设置Y轴终点值  
        ChartControl1.YCustomEnd = int.Parse(max.ToString());
        ChartControl1.YValuesFormat = "{0:0}";
        ChartControl1.YTitle.Text = "销售量";
        ChartControl1.XTitle.Text = "货物信息";
        //y递增值 
        ChartControl1.YValuesInterval = 5;
        //生成
        this.ChartControl1.RedrawChart();


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        MapView();
    }
}
