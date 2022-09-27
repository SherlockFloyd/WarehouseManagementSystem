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

public partial class Admin_HY : PageBase
{
	
		
		protected void Page_Load(object sender, EventArgs e) 
    {
        // 在此处放置用户代码以初始化页面
        if (!Page.IsPostBack)
        {
            //绑定类别列表

            if (Request.QueryString["ID"] != null)
            {
                //显示当前的货物信息
                DataTable tmpda = new DataTable();
                tmpda = DataControl.GetData("select * from 客户  where  客户帐号 ='" + Request.QueryString["ID"] + "'");
                if (tmpda.Rows.Count > 0)
                {
                    this.txt客户帐号.Text = tmpda.Rows[0]["客户帐号"].ToString(); 
                    this.RadioButtonList1.Text = tmpda.Rows[0]["类别"].ToString(); 
                    this.txt名称.Text = tmpda.Rows[0]["名称"].ToString(); 
                    this.txt地址.Text = tmpda.Rows[0]["地址"].ToString(); 
                    this.txt联系电话.Text = tmpda.Rows[0]["联系电话"].ToString(); 
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
        if (this.txt客户帐号.Text == "")
        {
            strErr += "客户帐号不能为空！\\n";
        }

        if (strErr != "")
        {
            ResponseMessage(this, strErr);
            return;
        }
        //根据标志判断是添加还是修改的操作 保存货物信息
        if (Request.QueryString["ID"] != null)
        {
            DataControl.Execute("UPDATE 客户 set 客户帐号 = '" +  txt客户帐号.Text + "',类别 = '" +  RadioButtonList1.SelectedValue + "',名称 = '" +  txt名称.Text + "',地址 = '" +  txt地址.Text + "',联系电话 = '" +  txt联系电话.Text + "',备注 = '" +  txt备注.Text + "' WHERE  客户帐号='" + Request.QueryString["ID"]+"'");
        }
        else
        {
            DataControl.Execute("insert into 客户 (客户帐号,类别,名称,地址,联系电话,备注,密码) values ( '" +  txt客户帐号.Text + "', '" +  RadioButtonList1.SelectedValue + "', '" +  txt名称.Text + "', '" +  txt地址.Text + "', '" +  txt联系电话.Text + "', '" +  txt备注.Text + "', '000000')");

        }
        Page.ClientScript.RegisterStartupScript(this.GetType(), "info", "<script>alert('保存成功！');window.location.href='HYList.aspx';</script>");




    }

    protected void btnCancel_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("HYList.aspx");
    }
}
