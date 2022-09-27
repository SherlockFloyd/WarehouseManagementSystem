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



public partial class Admin_BXEdit :PageBase
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
                tmpda = DataControl.GetData("select * from 操作员 where 帐号='" + Request.QueryString["ID"] +"'");
                if (tmpda.Rows.Count > 0)
                {
                    this.txtZH.Text = tmpda.Rows[0]["帐号"].ToString();
                    this.txtXM.Text = tmpda.Rows[0]["姓名"].ToString();
                    this.txtDH.Text = tmpda.Rows[0]["电话"].ToString();
                    this.txtZZ.Text = tmpda.Rows[0]["住址"].ToString();
                    this.txtYX.Text = tmpda.Rows[0]["邮箱"].ToString();
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
        if (this.txtZH.Text == "")
        {
            strErr += "帐号不能为空！\\n";
        } 

        if (strErr != "")
        {
           ResponseMessage(this, strErr);
            return;
        }
        //根据标志判断是添加还是修改的操作 保存货物信息
        if (Request.QueryString["ID"] != null)
        {
            DataControl.Execute("UPDATE [操作员] set [姓名] ='" + txtXM.Text + "',[电话] = '" + txtDH.Text + "',[住址] = '" + txtZZ.Text + "',[邮箱] ='" + txtYX.Text + "'  where 帐号='" + Request.QueryString["ID"] +"'");
        }
        else
        {
            DataControl.Execute("INSERT INTO [操作员] ([帐号] ,[姓名] ,[电话] ,[住址] ,[邮箱] ) VALUES ('"+txtZH.Text+"','"+txtXM.Text+"','"+txtDH.Text+"','"+txtZZ.Text+"','"+txtYX.Text+"')");

        }
        Page.ClientScript.RegisterStartupScript(this.GetType(), "info", "<script>alert('保存成功！');window.location.href='BXDD.aspx';</script>");
    

         

    }

    protected void btnCancel_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("BXDD.aspx");
    }
}
