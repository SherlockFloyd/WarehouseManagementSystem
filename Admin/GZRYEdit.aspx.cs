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

public partial class Admin_GZRYEdit :PageBase
{
    protected void Page_Load(object sender, EventArgs e) 
    {
        // 在此处放置用户代码以初始化页面
        if (!Page.IsPostBack)
        {
            //绑定类别列表

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
        if (this.txtZH.Text == "")
        {
            strErr += "类别名称不能为空！\\n";
        }

        if (strErr != "")
        {
            ResponseMessage(this, strErr);
            return;
        }
        if (DataControl.GetData("select * from 货物类别 where 类别名称='" + txtZH.Text + "'").Rows.Count > 0)
        {
            ResponseMessage(this, "类别名称重复");
            return;
        }
        DataControl.Execute("INSERT INTO [货物类别] ( [类别名称] ) VALUES ('"+txtZH.Text+"')");

        Page.ClientScript.RegisterStartupScript(this.GetType(), "info", "<script>alert('保存成功！');window.location.href='GZYRList.aspx';</script>");




    }

    protected void btnCancel_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("GZYRList.aspx");
    }
}
