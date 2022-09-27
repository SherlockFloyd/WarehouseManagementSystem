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

public partial class Admin_GZRYPX :PageBase
{
    protected void Page_Load(object sender, EventArgs e) 
    {
        // 在此处放置用户代码以初始化页面
        if (!Page.IsPostBack)
        {
            //绑定类别列表
            drYPLB.DataTextField = "类别名称";
            drYPLB.DataValueField = "代码";
            drYPLB.DataSource = DataControl.GetData("select * from 货物类别 ");
            drYPLB.DataBind();


            if (Request.QueryString["ID"] != null)
            {
                //显示当前的货物信息
                DataTable tmpda = new DataTable();
                tmpda = DataControl.GetData("select * from 货物信息 where 代码=" + Request.QueryString["ID"] + "");
                if (tmpda.Rows.Count > 0)
                {
                    this.drYPLB.SelectedValue = tmpda.Rows[0]["类别代码"].ToString();
                    this.txtYPMC.Text = tmpda.Rows[0]["货物名称"].ToString();
                    this.txtCJ.Text = tmpda.Rows[0]["厂家"].ToString();
                    this.txtPYM.Text = tmpda.Rows[0]["条码"].ToString();
                    this.txtDW.Text = tmpda.Rows[0]["单位"].ToString();
                    this.txtGG.Text = tmpda.Rows[0]["规格"].ToString();
                    this.txtJHJG.Text = tmpda.Rows[0]["进货价格"].ToString();
                    this.txtXSJG.Text = tmpda.Rows[0]["销售价格"].ToString();
                    this.txtBZ.Text = tmpda.Rows[0]["备注"].ToString();

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
        if (this.txtYPMC.Text == "")
        {
            strErr += "货物名称不能为空！\\n";
        }

        if (strErr != "")
        {
            ResponseMessage(this, strErr);
            return;
        }
        //根据标志判断是添加还是修改的操作 保存货物信息
        if (Request.QueryString["ID"] != null)
        {
            DataControl.Execute("UPDATE [货物信息] set [货物名称] = '"+txtYPMC.Text+"',[厂家] = '"+txtCJ.Text+"',[条码] = '"+txtPYM.Text+"',[单位] = '"+txtDW.Text+"',[规格] = '"+txtGG.Text+"',[进货价格] = "+txtJHJG.Text+",[销售价格] = "+txtXSJG.Text+",[备注] = '"+txtBZ.Text+"',[类别代码] = "+drYPLB.SelectedValue+" WHERE 代码=" + Request.QueryString["ID"] + "");
        }
        else
        {
            DataControl.Execute("INSERT INTO [货物信息] ( [货物名称] ,[厂家] ,[条码] ,[单位] ,[规格] ,[进货价格] ,[销售价格] ,[备注] ,[类别代码] ) VALUES ('"+txtYPMC.Text+"','"+txtCJ.Text+"','"+txtPYM.Text+"','"+txtDW.Text+"','"+txtGG.Text+"',"+txtJHJG.Text+","+txtXSJG.Text+",'"+txtBZ.Text+"',"+drYPLB.SelectedValue+")");
        }
        Page.ClientScript.RegisterStartupScript(this.GetType(), "info", "<script>alert('保存成功！');window.location.href='GZRYPXList.aspx';</script>");




    }

    protected void btnCancel_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("GZRYPXList.aspx");
    }
}
