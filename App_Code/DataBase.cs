using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

/// <summary>
/// DataBase 的摘要说明

/// </summary>
public class DataControl
{
    public DataControl()
    {
        //
        // TODO: 在此处添加构造函数逻辑
        //
    }
    public static SqlConnection createConnection()
    {
        //从webconfig中取得字符串连接方式
        SqlConnection cnn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["String"].ConnectionString);
        return cnn;
    }
    public static DataTable GetData(string SetStr)
    {
        //定义数据库连接 查询并填充DataSet

        SqlConnection tmpCnn = DataControl.createConnection();
        if (tmpCnn.State != 0)
        {
            tmpCnn.Close();
        }
        tmpCnn.Open();
        SqlDataAdapter cmd = new SqlDataAdapter(SetStr, tmpCnn);
        DataSet tmpDataSet = new DataSet();
        cmd.Fill(tmpDataSet);
        return tmpDataSet.Tables[0];
    }

    public static void Execute(string sqlStr)
    {
        //定义数据库连接　　执行数据库的增加　修改和删除数据的功能
        SqlConnection tmpCnn = DataControl.createConnection();
        if (tmpCnn.State != 0)
        {
            tmpCnn.Close();
        }
        tmpCnn.Open();

        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = sqlStr;
        cmd.Connection = tmpCnn;
        cmd.ExecuteNonQuery();
    }


}
