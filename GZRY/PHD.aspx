<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PHD.aspx.cs" Inherits="GZRY_PHD" %>

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
		[配送单管理]</td>
	</tr>
			<tr class="TdStyle"><td style=" text-align: center; width: 151px; height: 18px;">		
		 配送单号：</td>
        <td style="width: 235px; text-align: left; height: 18px;">
                                <asp:TextBox id="txt配送单号" runat="server" Width="200px" ReadOnly="True"></asp:TextBox>
             
        </td></tr>
				<tr class="TdStyle"><td style=" text-align: center; width: 151px; height: 18px;">		
		 配送日期：</td>
        <td style="width: 235px; text-align: left; height: 18px;">
                                <asp:TextBox id="txt配送日期" runat="server" Width="200px" ReadOnly="True"></asp:TextBox>
             
        </td></tr>
				<tr class="TdStyle"><td style=" text-align: center; width: 151px; height: 18px;">		
		 销售单号：</td>
        <td style="width: 235px; text-align: left; height: 18px;">
                                <asp:TextBox id="txt销售单号" runat="server" Width="200px" ReadOnly="True"></asp:TextBox>
             
        </td></tr>
				<tr class="TdStyle"><td style=" text-align: center; width: 151px; height: 18px;">		
		 车牌号：</td>
        <td style="width: 235px; text-align: left; height: 18px;">
                                <asp:TextBox id="txt车牌号" runat="server" Width="200px" ReadOnly="True"></asp:TextBox>
             
        </td></tr>
				<tr class="TdStyle"><td style=" text-align: center; width: 151px; height: 18px;">		
		 驾驶员：</td>
        <td style="width: 235px; text-align: left; height: 18px;">
                                <asp:TextBox id="txt驾驶员" runat="server" Width="200px" ReadOnly="True"></asp:TextBox>
             
        </td></tr>
				<tr class="TdStyle"><td style=" text-align: center; width: 151px; height: 18px;">		
		 配送记录：</td>
        <td style="width: 235px; text-align: left; height: 18px;">
                                <asp:TextBox id="txt配送记录" runat="server" Width="200px" TextMode="MultiLine"></asp:TextBox>
             
        </td></tr>
				<tr class="TdStyle"><td style=" text-align: center; width: 151px; height: 18px;">		
		 配送结果：</td>
        <td style="width: 235px; text-align: left; height: 18px;">
                                <asp:TextBox id="txt配送结果" runat="server" Width="200px" TextMode="MultiLine"></asp:TextBox>
             
        </td></tr>
				<tr class="TdStyle"><td style=" text-align: center; width: 151px; height: 18px;">		
		 客户签收：</td>
        <td style="width: 235px; text-align: left; height: 18px;">
                                <asp:TextBox id="txt客户签收" runat="server" Width="200px"></asp:TextBox>
             
        </td></tr>
				<tr class="TdStyle"><td style=" text-align: center; width: 151px; height: 18px;">		
		 备注：</td>
        <td style="width: 235px; text-align: left; height: 18px;">
                                <asp:TextBox id="txt备注" runat="server" Width="200px" TextMode="MultiLine"></asp:TextBox>
             
        </td></tr>
			<tr>
	<td height="25" colspan="2"><div align="center">
		<asp:ImageButton ID="btnAdd" runat="server" 
            ImageUrl="~/images/button_save.gif" onclick="btnAdd_Click" />
	&nbsp;<asp:ImageButton ID="btnCancel" runat="server" 
            ImageUrl="~/images/button_cancel.gif" onclick="btnCancel_Click" />
	</div></td></tr>
	</table>

    
    </div>
    </form>
</body>
</html>
