<%@ Page Language="C#" AutoEventWireup="true" CodeFile="KCEdit.aspx.cs" Inherits="Admin_KCEdit" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
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
		[库存信息]</td>
	</tr>
	<tr>
	<td height="25" width="25%" align="right">
		货物名称：</td>
	<td height="25" width="*"  width ="75%"align="left">
		<asp:TextBox id="txtYPMC" runat="server" Width="98%"></asp:TextBox>
	</td></tr>
	<tr>
	<td height="25" width="25%" align="right">
		库存数量：</td>
	<td height="25" width="*"  width ="75%"align="left">
		<asp:TextBox id="txtKCSL" runat="server" Width="98%"></asp:TextBox>
	</td></tr>
	<tr>
	<td height="25" width="25%" align="right">
		库存上限：</td>
	<td height="25" width="*"  width ="75%"align="left">
		<asp:TextBox id="txtSX" runat="server" Width="98%"></asp:TextBox>
	</td></tr>
	<tr>
	<td height="25" width="25%" align="right">
		库存下限：</td>
	<td height="25" width="*"  width ="75%"align="left">
		<asp:TextBox id="txtXX" runat="server" Width="98%"></asp:TextBox>
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
