<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SYSFP.aspx.cs" Inherits="Admin_SYFP" %>

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
		[实验室分配工作人员]</td>
	</tr>
	<tr>
	<td height="25" width="25%" align="right">
		实验室名称：</td>
	<td height="25" width="*"  width ="75%"align="left">
		<asp:Label ID="labSYSMC" runat="server" Text="Label" Width="100%"></asp:Label>
	</td></tr>
	<tr>
	<td height="25" width="25%" align="right">
		当前员工：</td>
	<td height="25" width="*"  width ="75%"align="left">
		<asp:Label ID="labDQYG" runat="server" Text="Label" Width="100%"></asp:Label>
	</td></tr>
	<tr>
	<td height="25" width="25%" align="right">
		注意事项：</td>
	<td height="25" width="*" align="left">
		<asp:DropDownList ID="drYG" runat="server" Width="95%">
        </asp:DropDownList>
	                </td></tr>
	<tr>
	<td height="25" colspan="2"><div align="center">
		<asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
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
