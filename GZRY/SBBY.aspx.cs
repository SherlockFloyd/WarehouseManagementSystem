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

public partial class GZRY_SBBY : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e) 
    {
        // 在此处放置用户代码以初始化页面
        if (!Page.IsPostBack)
        {
            //绑定类别列表

            drYP.DataTextField = "货物";
            drYP.DataValueField = "代码";
            drYP.DataSource = DataControl.GetData("select 代码,货物名称 + '(' + 厂家 + ')' as 货物  from V_库存");
            drYP.DataBind();
            this.txtJHD.Text="CGD"+DateTime.Now.ToString("yyyyMMddHHmmss");
        }


    }

    /// <summary>
    /// 保存
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void btnAdd_Click(object sender, ImageClickEventArgs e)
    {
        DataTable dt = new DataTable();
        dt = DataControl.GetData("select * from V_库存 where 库存上限<库存数量+ "+Convert.ToDecimal(this.txtJHSL.Text)+" and 代码 =" + drYP.SelectedValue);
        if (dt.Rows.Count > 0)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "info", "<script>alert('此货物不允许进货当前的数量,库存上限超出！');</script>");
            return;
        }
        DataControl.Execute("INSERT INTO [进货单] ( [进货单号] ,[进货时间] ,[供应商] ,[货物代码] ,[进货数量] ,[单价] ,[进货金额] ,[经办人] ,[备注],[操作员帐号] ) VALUES ('" + txtJHD.Text + "','" + txtJHSJ.Text + "','" + txtGYS.Text + "'," + drYP.SelectedValue + "," + txtJHSL.Text + "," + txtDJ.Text + "," + txtJE.Text + ",'" + txtJBR.Text + "','" + txtBZ.Text + "','" + Session["UserID"].ToString()+ "')");
        DataControl.Execute("UPDATE [库存] set [库存数量] = 库存数量 + " + txtJHSL.Text + " WHERE 货物代码=" + drYP.SelectedValue + "");

        Page.ClientScript.RegisterStartupScript(this.GetType(), "info", "<script>alert('进货完成！');window.location.href='SBBYList.aspx';</script>");




    }

    protected void btnCancel_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("SBBYList.aspx");
    }
    protected void txtJHSL_TextChanged(object sender, EventArgs e)
    {
        try
        {
            this.txtJE.Text = Convert.ToString(Convert.ToDecimal(this.txtDJ.Text) * (Convert.ToDecimal(this.txtJHSL.Text)));
        }
        catch 
        {
            this.txtJE.Text = "";
        }
    }
    protected void drYP_SelectedIndexChanged(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        dt=DataControl.GetData("select * from V_库存 where 代码 ="+drYP.SelectedValue);
        if (dt.Rows.Count > 0)
        {
            this.txtDJ.Text = dt.Rows[0]["进货价格"].ToString();
        }
    }
}
