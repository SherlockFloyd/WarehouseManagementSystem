using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class GZRY_PHD : PageBase
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
                tmpda = DataControl.GetData("select * from 配送单 where  配送单号='" + Request.QueryString["ID"] + "'");
                if (tmpda.Rows.Count > 0)
                {
						this.txt配送单号.Text = tmpda.Rows[0]["配送单号"].ToString(); 
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

    /// <summary>
    /// 保存
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void btnAdd_Click(object sender, ImageClickEventArgs e)
    {
        string strErr = "";
        if (this.txt配送单号.Text == "")
        {
            strErr += "配送单号不能为空！\\n";
        }

        if (strErr != "")
        {
            ResponseMessage(this, strErr);
            return;
        }
        DataControl.Execute("UPDATE 配送单 set 配送记录 = '" +  txt配送记录.Text + "',配送结果 = '" +  txt配送结果.Text + "',客户签收 = '" +  txt客户签收.Text + "',备注 = '" +  txt备注.Text + "' WHERE  配送单号='" + Request.QueryString["ID"]+"'");
        Page.ClientScript.RegisterStartupScript(this.GetType(), "info", "<script>alert('配货单记录完成！');window.location.href='PHList.aspx';</script>");




    }

    protected void btnCancel_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("PHList.aspx");
    }
}
