using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class GZRY_KH : System.Web.UI.Page
{
	
		protected void Page_Load(object sender, EventArgs e)
    {
        // 在此处放置用户代码以初始化页面
        if (!Page.IsPostBack)
        {
            //绑定类别列表

            DataTable tmpda = new DataTable();
            tmpda = DataControl.GetData("select * from 客户 where  客户帐号='" + Session["帐号"].ToString() + "'");
            if (tmpda.Rows.Count > 0)
            {
                this.txt客户帐号.Text = tmpda.Rows[0]["客户帐号"].ToString();
                this.txt类别.Text = tmpda.Rows[0]["类别"].ToString();
                this.txt名称.Text = tmpda.Rows[0]["名称"].ToString();
                this.txt地址.Text = tmpda.Rows[0]["地址"].ToString();
                this.txt联系电话.Text = tmpda.Rows[0]["联系电话"].ToString();
                this.txt备注.Text = tmpda.Rows[0]["备注"].ToString();
            }
        }


    }
}
