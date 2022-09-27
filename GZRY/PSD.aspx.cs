using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class GZRY_PSD : PageBase
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            this.txt配送单号.Text = "PSD" + DateTime.Now.ToString("yyyyMMddHHmms");
            this.DropDownList1.DataTextField = "车牌信息";
            this.DropDownList1.DataValueField = "";
            this.DropDownList1.DataSource = DataControl.GetData("select * from V_汽车");
            this.DropDownList1.DataBind();

        }
    }
    protected void txt销售单号_TextChanged(object sender, EventArgs e)
    {
        Session["XSD"] = this.txt销售单号.Text;
    }
    protected void btnAdd_Click(object sender, ImageClickEventArgs e)
    {
        string strErr = "";
        if (this.txt销售单号.Text == "")
        {
            strErr += "帐号不能为空！\\n";
        }

        if (strErr != "")
        {
            ResponseMessage(this, strErr);
            return;
        }
        if (DataControl.GetData("select * from 销售单 where 销售单号='" + txt销售单号.Text + "' ").Rows.Count <= 0)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "info", "<script>alert('没有此销售单！');</script>");
            return;
        }

        if(DataControl.GetData("select * from 配送单 where 销售单号='"+txt销售单号.Text+"' ").Rows.Count>0)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "info", "<script>alert('此单已经安排了配送不能重复安排！');</script>");
            return;
        }
       
         DataControl.Execute("insert into 配送单 (配送单号,配送日期,销售单号,车牌号,驾驶员) values ( '" +  txt配送单号.Text + "', '" +  txt配送日期.Text + "', '" +  txt销售单号.Text + "', '" + DropDownList1.SelectedValue + "', '" +  txt驾驶员.Text + "')");

         DataTable dt = DataControl.GetData("select * from 销售单 where 销售单号='"+txt销售单号.Text+"'");
         if (dt.Rows.Count > 0)
         {
             string strSL = dt.Rows[0]["数量"] + "";
             string strID = dt.Rows[0]["货物代码"] + "";
             DataControl.Execute("UPDATE [库存] set [库存数量] = 库存数量 - " + strSL + " WHERE 货物代码=" + strID + "");

         }


         Page.ClientScript.RegisterStartupScript(this.GetType(), "info", "<script>alert('安排配送完成！');window.location.href=window.location.href;</script>");

    }
    protected void btnCancel_Click(object sender, ImageClickEventArgs e)
    {

    }
}
