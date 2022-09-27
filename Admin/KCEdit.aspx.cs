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

public partial class Admin_KCEdit :PageBase
{
    protected void Page_Load(object sender, EventArgs e) 
    {
        // 在此处放置用户代码以初始化页面
        if (!Page.IsPostBack)
        {


            if (Request.QueryString["ID"] != null)
            {
                //显示当前的货物信息
                DataTable tmpda = new DataTable();
                tmpda = DataControl.GetData("select * from V_库存 where 代码=" + Request.QueryString["ID"] + "");
                if (tmpda.Rows.Count > 0)
                {
                    this.txtYPMC.Text = tmpda.Rows[0]["货物名称"].ToString();
                    this.txtKCSL.Text = tmpda.Rows[0]["库存数量"].ToString();
                    this.txtSX.Text = tmpda.Rows[0]["库存上限"].ToString();
                    this.txtXX.Text = tmpda.Rows[0]["库存下限"].ToString();

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
        DataControl.Execute("UPDATE [库存] set [库存数量] = " + txtKCSL.Text + ",[库存上限] = " + txtSX.Text + ",[库存下限] = " + txtXX.Text + " WHERE 货物代码=" + Request.QueryString["ID"] + "");

        Page.ClientScript.RegisterStartupScript(this.GetType(), "info", "<script>alert('库存调整完成！');window.location.href='KCList.aspx';</script>");




    }

    protected void btnCancel_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("KCList.aspx");
    }
}
