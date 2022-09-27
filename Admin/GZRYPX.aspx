<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GZRYPX.aspx.cs" Inherits="Admin_GZRYPX" %>

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
		[货物信息]</td>
	</tr>
	<tr>
	<td height="25" width="25%" align="right">
		货物类别：</td>
	<td height="25" width="*"  width ="75%"align="left">
		<asp:DropDownList ID="drYPLB" runat="server" Width="95%">
        </asp:DropDownList>
	</td></tr>
	<tr>
	<td height="25" width="25%" align="right">
		货物名称：</td>
	<td height="25" width="*"  width ="75%"align="left">
		<asp:TextBox id="txtYPMC" runat="server" Width="98%" ></asp:TextBox>
	</td></tr>
	<tr>
	<td height="25" width="25%" align="right">
		厂商：</td>
	<td height="25" width="*"  width ="75%"align="left">
		 
		<asp:TextBox id="txtCJ" runat="server" Width="98%" Height="21px"></asp:TextBox>
		
	</td></tr>
	<tr>
	<td height="25" width="25%" align="right">
		条码：</td>
	<td height="25" width="*" align="left">
		 
		<asp:TextBox id="txtPYM" runat="server" Width="98%" Height="21px"></asp:TextBox>
		
	</td></tr>
	<tr>
	<td height="25" width="25%" align="right">
		单位：</td>
	<td height="25" width="*" align="left">
		 
		<asp:TextBox id="txtDW" runat="server" Width="98%" ></asp:TextBox>
		
	</td></tr>
	<tr>
	<td height="25" width="25%" align="right">
		规格：</td>
	<td height="25" width="*" align="left">
		 
		<asp:TextBox id="txtGG" runat="server" Width="98%" ></asp:TextBox>
		
	</td></tr>
	<tr>
	<td height="25" width="25%" align="right">
		进货价格：</td>
	<td height="25" width="*" align="left">
		 
		<asp:TextBox id="txtJHJG" runat="server" Width="98%" ></asp:TextBox>
		
	</td></tr>
	<tr>
	<td height="25" width="25%" align="right">
		销售价格：</td>
	<td height="25" width="*" align="left">
		 
		<asp:TextBox id="txtXSJG" runat="server" Width="98%" ></asp:TextBox>
		
	</td></tr>
	<tr>
	<td height="25" width="25%" align="right">
		备注：</td>
	<td height="25" width="*" align="left">
		 
		<asp:TextBox id="txtBZ" runat="server" Width="98%"  
            Height="155px" TextMode="MultiLine"></asp:TextBox>
		
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
