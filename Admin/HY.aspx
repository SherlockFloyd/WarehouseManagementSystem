<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HY.aspx.cs" Inherits="Admin_HY" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

	
		
		<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
     <link href="../css/CSS.css" rel="Stylesheet" />
       <script src="../CSS/setday.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <!--******************************增加页面代码********************************-->

<table cellSpacing="0" cellPadding="0" border="0" class="table">
	<tr>
	<td height="25" align="center" class="tdHeader" colspan="2">
		[客户管理]</td>
	</tr>
				
			<tr class="TdStyle"><td style=" text-align: center; width: 151px; height: 18px;">		
		 客户帐号：</td>
        <td style="width: 235px; text-align: left; height: 18px;">
                                <asp:TextBox id="txt客户帐号" runat="server" Width="200px"></asp:TextBox>
             
        </td></tr>
				<tr class="TdStyle"><td style=" text-align: center; width: 151px; height: 18px;">		
		 类别：</td>
        <td style="width: 235px; text-align: left; height: 18px;">
                                <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                                    <asp:ListItem>个人</asp:ListItem>
                                    <asp:ListItem>公司</asp:ListItem>
                                </asp:RadioButtonList>
             
        </td></tr>
				<tr class="TdStyle"><td style=" text-align: center; width: 151px; height: 18px;">		
		 名称：</td>
        <td style="width: 235px; text-align: left; height: 18px;">
                                <asp:TextBox id="txt名称" runat="server" Width="200px"></asp:TextBox>
             
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
		 备注：</td>
        <td style="width: 235px; text-align: left; height: 18px;">
                                <asp:TextBox id="txt备注" runat="server" Width="200px" Height="134px" 
                                    TextMode="MultiLine"></asp:TextBox>
             
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
