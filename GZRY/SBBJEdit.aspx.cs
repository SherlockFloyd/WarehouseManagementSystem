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

public partial class GZRY_SBBJEdit :PageBase
{
    protected void Page_Load(object sender, EventArgs e) 
    {
        // 在此处放置用户代码以初始化页面
        if (!Page.IsPostBack)
        {
            //绑定类别列表

            if (!Page.IsPostBack)
            {
                //绑定类别列表

                drYP.DataTextField = "货物";
                drYP.DataValueField = "代码";
                drYP.DataSource = DataControl.GetData("select 代码,货物名称 + '(' + 厂家 + ')' as 货物  from V_库存");
                drYP.DataBind();



                this.txtLSDH.Text = "XSD" + DateTime.Now.ToString("yyyyMMddHHmmss");
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

        DataTable dt = new DataTable();
        dt = DataControl.GetData("select * from V_库存 where 库存下限>库存数量 - " + Convert.ToDecimal(this.txtSL.Text) + " and 代码 =" + drYP.SelectedValue);
        if (dt.Rows.Count > 0)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "info", "<script>alert('此货物销售以后超出库存下限,不能销售！');</script>");
            return;
        }
        DataControl.Execute("INSERT INTO [销售单] ( [销售单号] ,[销售日期] ,[货物代码] ,[数量] ,[金额] ,[折扣] ,[实收款] ,[客户帐号] ,[备注]) VALUES ('" + txtLSDH.Text + "','" + txtRQ.Text + "'," + drYP.SelectedValue + "," + txtSL.Text + "," + txtJE.Text + "," + txtZK.Text + "," + txtSSK.Text + ",'" + this.txt客户.Text + "','" + txtBZ.Text + "')");

        Page.ClientScript.RegisterStartupScript(this.GetType(), "info", "<script>alert('销售单记录完成！');window.location.href=window.location.href;</script>");



    }

    protected void txtSL_TextChanged(object sender, EventArgs e)
    {
        try
        {
            this.txtJE.Text = Convert.ToString(Convert.ToDecimal(this.txtDJ.Text) * (Convert.ToDecimal(this.txtSL.Text)));
            this.txtSSK.Text = this.txtJE.Text;
        }
        catch
        {
            this.txtJE.Text = "";
            this.txtSSK.Text = this.txtJE.Text;
        }
    }
    protected void txtZK_TextChanged(object sender, EventArgs e)
    {
        try
        {
            this.txtSSK.Text = Convert.ToString(Convert.ToDecimal(this.txtJE.Text) * (Convert.ToDecimal(this.txtZK.Text)));
        }
        catch
        {
            this.txtSSK.Text = "";
        }
    }
    protected void drYP_SelectedIndexChanged(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        dt = DataControl.GetData("select * from V_库存 where 代码 =" + drYP.SelectedValue);
        if (dt.Rows.Count > 0)
        {
            this.txtDJ.Text = dt.Rows[0]["销售价格"].ToString();
        }
    }
    protected void drKH_SelectedIndexChanged(object sender, EventArgs e)
    {
      
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {

    }
    protected void txt客户_TextChanged(object sender, EventArgs e)
    {
        Session["帐号"] = this.txt客户.Text;
    }
}
