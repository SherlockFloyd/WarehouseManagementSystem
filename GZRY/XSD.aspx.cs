using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class GZRY_XSD : System.Web.UI.Page
{
	
		protected void Page_Load(object sender, EventArgs e)
    {
        // 在此处放置用户代码以初始化页面
        if (!Page.IsPostBack)
        {
            //绑定类别列表

            DataTable tmpda = new DataTable();
            tmpda = DataControl.GetData("select * from V_销售 where  销售单号='" + Session["XSD"].ToString() + "'");
            if (tmpda.Rows.Count > 0)
            {
                this.txt销售单号.Text = tmpda.Rows[0]["销售单号"].ToString();
                this.txt货物名称.Text = tmpda.Rows[0]["货物名称"].ToString();
                this.txt名称.Text = tmpda.Rows[0]["名称"].ToString();
                this.txt地址.Text = tmpda.Rows[0]["地址"].ToString();
                this.txt联系电话.Text = tmpda.Rows[0]["联系电话"].ToString();
                this.txt类别.Text = tmpda.Rows[0]["类别"].ToString();
                this.txt销售日期.Text = tmpda.Rows[0]["销售日期"].ToString();
                this.txt数量.Text = tmpda.Rows[0]["数量"].ToString();
                this.txt金额.Text = tmpda.Rows[0]["金额"].ToString();
                this.txt折扣.Text = tmpda.Rows[0]["折扣"].ToString();
                this.txt实收款.Text = tmpda.Rows[0]["实收款"].ToString();
                this.txt客户帐号.Text = tmpda.Rows[0]["客户帐号"].ToString();
                this.txt备注.Text = tmpda.Rows[0]["备注"].ToString();
            }
        }


    }

}
