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

/// <summary>
/// 登录页面
/// </summary>
public partial class login :PageBase
{
    protected void Page_Load(object sender, EventArgs e)
    { 
    }

    /// <summary>
    /// 登录功能
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void IbtDL_Click(object sender, ImageClickEventArgs e)
    {
        DataTable dt = new DataTable();
        switch (RadioButtonList1.SelectedValue)
        {
            case "管理员":
                dt = DataControl.GetData("select * from 管理员 where 帐号='" + txtUser.Text + "' and 密码 ='" + txtPwd.Text + "'");
                if (dt.Rows.Count <= 0)
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "info", "<script>alert('帐号密码错误！');</script>");
                    return;
                }
                Session["UserID"] = txtUser.Text;
                Response.Redirect("Admin/index.aspx");
                break;
            case "操作员":
                dt = DataControl.GetData("select * from 操作员 where 帐号='" + txtUser.Text + "' and 密码 ='" + txtPwd.Text + "' ");
                if (dt.Rows.Count <= 0)
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "info", "<script>alert('帐号密码错误！');</script>");
                    return;
                }
                Session["UserID"] = txtUser.Text;
                Response.Redirect("GZRY/index.aspx");
                break;
            case "客户":
                dt = DataControl.GetData("select * from 客户 where 客户帐号='" + txtUser.Text + "' and 密码 ='" + txtPwd.Text + "' ");
                if (dt.Rows.Count <= 0)
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "info", "<script>alert('帐号密码错误！');</script>");
                    return;
                }
                Session["UserID"] = txtUser.Text;
                Response.Redirect("KH/index.aspx");
                break;

        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("ZC/Index.aspx");
    }
}
