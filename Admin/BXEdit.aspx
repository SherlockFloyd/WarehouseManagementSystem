<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BXEdit.aspx.cs" Inherits="Admin_BXEdit" %> 
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link href="../css/CSS.css" rel="Stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <!--******************************增加页面代码********************************-->

<table cellSpacing="0" cellPadding="0" border="0" class="table">
	<tr>
	<td height="25" align="center" class="tdHeader" colspan="2">
		[操作员管理]</td>
	</tr>
	<tr>
	<td height="25" width="25%" align="right">
		帐号：</td>
	<td height="25" width="*"  width ="75%"align="left">
		<asp:TextBox id="txtZH" runat="server" Width="98%"></asp:TextBox>
	</td></tr>
	<tr>
	<td height="25" width="25%" align="right">
		姓名：</td>
	<td height="25" width="*"  width ="75%"align="left">
		<asp:TextBox id="txtXM" runat="server" Width="98%"></asp:TextBox>
	</td></tr>
	<tr>
	<td height="25" width="25%" align="right">
		电话：</td>
	<td height="25" width="*"  width ="75%"align="left">
		<asp:TextBox id="txtDH" runat="server" Width="98%"></asp:TextBox>
	</td></tr>
	<tr>
	<td height="25" width="25%" align="right">
		住址：</td>
	<td height="25" width="*"  width ="75%"align="left">
		<asp:TextBox id="txtZZ" runat="server" Width="98%"></asp:TextBox>
	</td></tr>
	<tr>
	<td height="25" width="25%" align="right">
		邮箱：</td>
	<td height="25" width="*"  width ="75%"align="left">
		<asp:TextBox id="txtYX" runat="server" Width="98%"></asp:TextBox>
	</td></tr>
	<tr>
	<td height="25" colspan="2"><div align="center">
		<asp:ImageButton ID="btnAdd" runat="server" 
            ImageUrl="~/images/button_save.gif" onclick="btnAdd_Click" />
	&nbsp;<asp:ImageButton ID="btnCancel" runat="server" 
            ImageUrl="~/images/button_cancel.gif" onclick="btnCancel_Click" />
	</div></td></tr>
	<tr>
	<td height="25" colspan="2">注：新注册的工作人员密码为000000！</td></tr>
</table>

    
    </div>
    </form>
</body>
</html>
