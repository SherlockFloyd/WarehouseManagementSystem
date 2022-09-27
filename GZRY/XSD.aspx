<%@ Page Language="C#" AutoEventWireup="true" CodeFile="XSD.aspx.cs" Inherits="GZRY_XSD" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

		
		<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
     <link href="../css/CSS2.css" rel="Stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <!--******************************增加页面代码********************************-->

<table cellSpacing="0" cellPadding="0" border="0" class="table">
	<tr>
	<td height="25" align="center" class="tdHeader" colspan="2">
		[销售管理]</td>
	</tr>
			<tr class="TdStyle"><td style=" text-align: center; width: 151px; height: 18px;">		
		 销售单号：</td>
        <td style="width: 235px; text-align: left; height: 18px;">
                                <asp:TextBox id="txt销售单号" runat="server" Width="200px"></asp:TextBox>
             
        </td></tr>
				<tr class="TdStyle"><td style=" text-align: center; width: 151px; height: 18px;">		
		 货物名称：</td>
        <td style="width: 235px; text-align: left; height: 18px;">
                                <asp:TextBox id="txt货物名称" runat="server" Width="200px"></asp:TextBox>
             
        </td></tr>
				<tr class="TdStyle"><td style=" text-align: center; width: 151px; height: 18px;">		
		 名称：</td>
        <td style="width: 235px; text-align: left; height: 18px;">
                                <asp:TextBox id="txt名称" runat="server" Width="200px"></asp:TextBox>
             
        </td></tr>
				
				<tr class="TdStyle"><td style=" text-align: center; width: 151px; height: 18px;">		
		 销售日期：</td>
        <td style="width: 235px; text-align: left; height: 18px;">
                                <asp:TextBox id="txt销售日期" runat="server" Width="200px"></asp:TextBox>
             
        </td></tr>
				<tr class="TdStyle"><td style=" text-align: center; width: 151px; height: 18px;">		
		 数量：</td>
        <td style="width: 235px; text-align: left; height: 18px;">
                                <asp:TextBox id="txt数量" runat="server" Width="200px"></asp:TextBox>
             
        </td></tr>
				<tr class="TdStyle"><td style=" text-align: center; width: 151px; height: 18px;">		
		 金额：</td>
        <td style="width: 235px; text-align: left; height: 18px;">
                                <asp:TextBox id="txt金额" runat="server" Width="200px"></asp:TextBox>
             
        </td></tr>
				<tr class="TdStyle"><td style=" text-align: center; width: 151px; height: 18px;">		
		 折扣：</td>
        <td style="width: 235px; text-align: left; height: 18px;">
                                <asp:TextBox id="txt折扣" runat="server" Width="200px"></asp:TextBox>
             
        </td></tr>
				<tr class="TdStyle"><td style=" text-align: center; width: 151px; height: 18px;">		
		 实收款：</td>
        <td style="width: 235px; text-align: left; height: 18px;">
                                <asp:TextBox id="txt实收款" runat="server" Width="200px"></asp:TextBox>
             
        </td></tr>
				<tr class="TdStyle"><td style=" text-align: center; width: 151px; height: 18px;">		
		 客户帐号：</td>
        <td style="width: 235px; text-align: left; height: 18px;">
                                <asp:TextBox id="txt客户帐号" runat="server" Width="200px"></asp:TextBox>
             
        </td></tr>
        <tr class="TdStyle"><td style=" text-align: center; width: 151px; height: 18px;">		
		 地址：</td>
        <td style="width: 235px; text-align: left; height: 18px;">
                                <asp:TextBox id="txt地址" runat="server" Width="200px"></asp:TextBox>
             
        </td></tr>
				<tr class="TdStyle"><td style=" text-align: center; width: 151px; height: 18px;">		
		 联系电话：</td>
        <td style="width: 235px; text-align: left; height: 18px;">
                                <asp:TextBox id="txt联系电话" runat="server" Width="200px"></asp:TextBox>
             
        </td></tr>
				<tr class="TdStyle"><td style=" text-align: center; width: 151px; height: 18px;">		
		 类别：</td>
        <td style="width: 235px; text-align: left; height: 18px;">
                                <asp:TextBox id="txt类别" runat="server" Width="200px"></asp:TextBox>
             
        </td></tr>
				<tr class="TdStyle"><td style=" text-align: center; width: 151px; height: 18px;">		
		 备注：</td>
        <td style="width: 235px; text-align: left; height: 18px;">
                                <asp:TextBox id="txt备注" runat="server" Width="200px" Height="88px" 
                                    TextMode="MultiLine"></asp:TextBox>
             
        </td></tr>
			<tr>
	<td height="25" colspan="2"><div align="center">
	&nbsp;</div></td></tr>
	</table>

    
    </div>
    </form>
</body>
</html>
