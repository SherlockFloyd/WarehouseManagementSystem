using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_PSD : System.Web.UI.Page
{
	
		protected void Page_Load(object sender, EventArgs e)
    {
        // 在此处放置用户代码以初始化页面
        if (!Page.IsPostBack)
        {
            //绑定类别列表

            if (Request.QueryString["ID"] != null)
            {
                //显示当前的商品信息
                DataTable tmpda = new DataTable();
                tmpda = DataControl.GetData("select * from V_配货 where  配送单号='" + Request.QueryString["ID"] + "'");
                if (tmpda.Rows.Count > 0)
                {
						this.txt配送单号.Text = tmpda.Rows[0]["配送单号"].ToString(); 
                        this.txt货物名称.Text = tmpda.Rows[0]["货物名称"].ToString(); 
                        this.txt数量.Text = tmpda.Rows[0]["数量"].ToString(); 
                        this.txt名称.Text = tmpda.Rows[0]["名称"].ToString(); 
                        this.txt地址.Text = tmpda.Rows[0]["地址"].ToString(); 
                        this.txt联系电话.Text = tmpda.Rows[0]["联系电话"].ToString(); 
                        this.txt类别.Text = tmpda.Rows[0]["类别"].ToString(); 
                        this.txt配送日期.Text = tmpda.Rows[0]["配送日期"].ToString(); 
                        this.txt销售单号.Text = tmpda.Rows[0]["销售单号"].ToString(); 
                        this.txt车牌号.Text = tmpda.Rows[0]["车牌号"].ToString(); 
                        this.txt驾驶员.Text = tmpda.Rows[0]["驾驶员"].ToString(); 
                        this.txt配送记录.Text = tmpda.Rows[0]["配送记录"].ToString(); 
                        this.txt配送结果.Text = tmpda.Rows[0]["配送结果"].ToString(); 
                        this.txt客户签收.Text = tmpda.Rows[0]["客户签收"].ToString(); 
                        this.txt备注.Text = tmpda.Rows[0]["备注"].ToString(); 
                }
            }
        }


    }

        protected void btnCancel_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("PSDList.aspx");
        }
}
