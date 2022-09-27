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

public partial class GZRY_SBBYList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e) 
    {
        if (!IsCallback)
        {
            BindResult();
        }

    }
    #region 数据绑定
    /// <summary>
    ///绑定列表
    /// </summary>
    private void BindResult()
    {

        //组合查询条件 
        DataTable dt = DataControl.GetData("select * from  V_进货 where 货物名称 like '%" + this.TextBox1.Text + "%' and 操作员帐号='" + Session["UserID"] + "' ");
        if (dt != null)
        {
            this.gvData.DataKeyNames = new string[] { "进货单号","进货数量","货物代码"};
            this.gvData.DataSource = dt;
            this.gvData.DataBind();
            ShowStats(dt.Rows.Count.ToString());
        }
    }

    #endregion
    #region 设置翻页按钮事件
    public void PagerButtonClick(object sender, EventArgs e)
    {
        string arg = ((LinkButton)sender).CommandArgument.ToString();
        switch (arg)
        {
            case "next":
                if (gvData.PageIndex < (this.gvData.PageCount - 1))
                {
                    gvData.PageIndex += 1;
                }
                break;
            case "prev":
                if (gvData.PageIndex > 0)
                {
                    gvData.PageIndex -= 1;
                }
                break;
            case "last":
                if (gvData.PageCount != 0)
                {
                    gvData.PageIndex = (gvData.PageCount - 1);
                }
                else
                {
                    gvData.PageIndex = 0;
                }
                break;
            default:
                gvData.PageIndex = System.Convert.ToInt32(arg);
                break;
        }
        //绑定列表
        BindResult();

    }
    #endregion
    #region 刷新列表下的统计信息
    private void ShowStats(string strRowNum)
    {
        lblCurrentIndex.Text = "第<font color=#ff0000>" + (this.gvData.PageIndex + 1).ToString() + "</font>页";
        lblPageCount.Text = "共<font color=#ff0000>" + gvData.PageCount.ToString() + "</font>页";
        lblCount.Text = "共<font color=#ff0000>" + strRowNum + "</font>条记录";
    }

    #endregion
    #region 按钮事件
    /// <summary>
    /// 查询
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void BtnSearch_Click(object sender, ImageClickEventArgs e)
    {
        BindResult();
    }
    #endregion
    #region 列表事件

    /// <summary>
    /// 单击行事件
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void gvData_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int num = int.Parse(e.CommandArgument.ToString());
        if (e.CommandName == "Mod")
        {
            string strUrl = "SBBY.aspx?ID=" + gvData.DataKeys[num]["进货单号"].ToString();
            PageBase.OpenWebForm(strUrl);
        }
        else if (e.CommandName == "Del")
        {
            DataTable dt = new DataTable();
            dt = DataControl.GetData("select * from 库存 where 库存下限>库存数量-" + gvData.DataKeys[num]["进货数量"].ToString() + " and 货物代码 =" + gvData.DataKeys[num]["货物代码"].ToString() + "");
            if (dt.Rows.Count > 0)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "info", "<script>alert('此单据不允许作废,库存数量不足！');</script>");
                return;
            }
            dt = DataControl.GetData("select 进货数量 from 进货单 where  进货单号='" + gvData.DataKeys[num]["进货单号"].ToString() + "'");
            int intKCSL = 0;
            if (dt.Rows.Count > 0)
            {
                intKCSL = Convert.ToInt32(dt.Rows[0][0]);
            }
            dt = DataControl.GetData("select 货物代码 from 进货单 where  进货单号='" + gvData.DataKeys[num]["进货单号"].ToString() + "'");
            int intSPID = 0;
            if (dt.Rows.Count > 0)
            {
                intSPID = Convert.ToInt32(dt.Rows[0][0]);
            }
            DataControl.Execute("UPDATE [库存] set [库存数量] = 库存数量 - " + intKCSL + " WHERE 货物代码=" + intSPID);
            DataControl.Execute("delete from 进货单 where 进货单号='" + gvData.DataKeys[num]["进货单号"].ToString() + "'");

            BindResult();
        }
    }

    /// <summary>
    /// 列表创建事件
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void gvData_RowCreated(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            LinkButton LinkButton1 = (LinkButton)e.Row.FindControl("btn_Delete");

            LinkButton1.CommandArgument = e.Row.RowIndex.ToString();

            LinkButton LinkButton2 = (LinkButton)e.Row.FindControl("btn_Modify");

            LinkButton2.CommandArgument = e.Row.RowIndex.ToString();

        }
    }
    /// <summary>
    /// 绑定数据事件
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void gvData_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)//判定当前的行是否属于datarow类型的行
        {
            //当鼠标放上去的时候 先保存当前行的背景颜色 并给附一颜色
            e.Row.Attributes.Add("onmouseover", "currentcolor=this.style.backgroundColor;this.style.backgroundColor='CFD4E8',this.style.fontWeight='';");
            //当鼠标离开的时候 将背景颜色还原的以前的颜色


            e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor=currentcolor,this.style.fontWeight='';");

        }
    }

    #endregion
    protected void btnAdd_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("SBBY.aspx");
    }
}
