using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_CL : PageBase
{

		
		
		protected void Page_Load(object sender, EventArgs e)
    {
        // 在此处放置用户代码以初始化页面
        if (!Page.IsPostBack)
        {
            //绑定类别列表

            if (Request.QueryString["ID"] != null)
            {
                //显示当前的商品信息
                DataTable tmpda = new DataTable();
                tmpda = DataControl.GetData("select * from 车辆信息 where  车牌号='" + Request.QueryString["ID"] + "'");
                if (tmpda.Rows.Count > 0)
                {
						this.txt车牌号.Text = tmpda.Rows[0]["车牌号"].ToString(); 
                        this.txt品牌.Text = tmpda.Rows[0]["品牌"].ToString(); 
                        this.txt驾驶员.Text = tmpda.Rows[0]["驾驶员"].ToString(); 
                        this.txt载重量.Text = tmpda.Rows[0]["载重量"].ToString(); 
                        this.txt安全里程.Text = tmpda.Rows[0]["安全里程"].ToString(); 
                        this.txt行驶里程.Text = tmpda.Rows[0]["行驶里程"].ToString(); 
                        this.txt备注.Text = tmpda.Rows[0]["备注"].ToString(); 
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
        if (this.txt车牌号.Text == "")
        {
            strErr += "车牌号不能为空！\\n";
        }

        if (strErr != "")
        {
            ResponseMessage(this, strErr);
            return;
        }
        //根据标志判断是添加还是修改的操作 保存商品信息
        if (Request.QueryString["ID"] != null)
        {
            DataControl.Execute("UPDATE 车辆信息 set 车牌号 = '" +  txt车牌号.Text + "',品牌 = '" +  txt品牌.Text + "',驾驶员 = '" +  txt驾驶员.Text + "',载重量 = '" +  txt载重量.Text + "',安全里程 = '" +  txt安全里程.Text + "',行驶里程 = '" +  txt行驶里程.Text + "',备注 = '" +  txt备注.Text + "' WHERE  车牌号='" + Request.QueryString["ID"] +"'");
        }
        else
        {
            DataControl.Execute("insert into 车辆信息 (车牌号,品牌,驾驶员,载重量,安全里程,行驶里程,备注) values ( '" +  txt车牌号.Text + "', '" +  txt品牌.Text + "', '" +  txt驾驶员.Text + "', '" +  txt载重量.Text + "', '" +  txt安全里程.Text + "', '" +  txt行驶里程.Text + "', '" +  txt备注.Text + "')");

        }
        Page.ClientScript.RegisterStartupScript(this.GetType(), "info", "<script>alert('保存成功！');window.location.href='CLList.aspx';</script>");




    }

    protected void btnCancel_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("CLList.aspx");
    }
}
