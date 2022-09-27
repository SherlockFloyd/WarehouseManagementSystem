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

public partial class Admin_SYFP : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e) 
    {
        // 在此处放置用户代码以初始化页面
        if (!Page.IsPostBack)
        {
            //绑定类别列表

            drYG.DataTextField = "姓名";
            drYG.DataValueField = "帐号";
            drYG.DataSource = DataControl.GetData("select * from 工作人员 where 帐号 not in (select 帐号 from 实验室教师)");
            drYG.DataBind();
            
            if (Request.QueryString["ID"] != null)
            {
                //显示当前的货物信息
                DataTable tmpda = new DataTable();
                tmpda = DataControl.GetData("select * from V_实验室 where 代码=" + Request.QueryString["ID"]);
                if (tmpda.Rows.Count > 0)
                {
                    this.labSYSMC.Text = tmpda.Rows[0]["实验室名称"].ToString();
                    this.labDQYG.Text = tmpda.Rows[0]["姓名"] + "";
                    this.Label1.Text = tmpda.Rows[0]["分配代码"] + "";
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
        //根据标志判断是添加还是修改的操作 保存货物信息
        if (this.Label1.Text != "")
        {
            DataControl.Execute("UPDATE [实验室教师] set [帐号] ='" + drYG.SelectedValue + "'  where 代码=" + this.Label1.Text);
        }
        else
        {
            DataControl.Execute("INSERT INTO [实验室教师] ( [实验室代码] ,[帐号] ) VALUES ("+Request.QueryString["Id"]+",'"+drYG.SelectedValue+"')");

        }
        Page.ClientScript.RegisterStartupScript(this.GetType(), "info", "<script>alert('分配成功！');window.location.href='SYSFPList.aspx';</script>");




    }

    protected void btnCancel_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("SYSFPList.aspx");
    }
}
