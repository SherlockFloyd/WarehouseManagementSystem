<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SBBY.aspx.cs" Inherits="GZRY_SBBY" %>

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
		[进货单]</td>
	</tr>
	<tr>
	<td height="25" width="25%" align="right">
		货物信息：</td>
	<td height="25" width="*"  width ="75%"align="left">
		<asp:DropDownList ID="drYP" runat="server" Width="95%" AutoPostBack="True" 
            onselectedindexchanged="drYP_SelectedIndexChanged">
        </asp:DropDownList>
	</td></tr>
	<tr>
	<td height="25" width="25%" align="right">
		进货单号：</td>
	<td height="25" width="*" align="left">
		 
		<asp:TextBox id="txtJHD" runat="server" Width="98%" Height="21px" 
            ReadOnly="True"></asp:TextBox>
		
	</td></tr>
	<tr>
	<td height="25" width="25%" align="right">
		进货时间：</td>
	<td height="25" width="*" align="left">
		 
		<asp:TextBox id="txtJHSJ" runat="server" Width="98%" Height="21px" 
            onclick="setday(this);"></asp:TextBox>
		
	</td></tr>
	<tr>
	<td height="25" width="25%" align="right">
		供应商：</td>
	<td height="25" width="*" align="left">
		 
		<asp:TextBox id="txtGYS" runat="server" Width="98%" Height="21px" 
            ></asp:TextBox>
		
	</td></tr>
	<tr>
	<td height="25" width="25%" align="right">
		进货数量：</td>
	<td height="25" width="*" align="left">
		 
		<asp:TextBox id="txtJHSL" runat="server" Width="98%" Height="21px" 
            AutoPostBack="True" ontextchanged="txtJHSL_TextChanged" 
          ></asp:TextBox>
		
	</td></tr>
	<tr>
	<td height="25" width="25%" align="right">
		单价：</td>
	<td height="25" width="*" align="left">
		 
		<asp:TextBox id="txtDJ" runat="server" Width="98%" Height="21px" 
            AutoPostBack="True" ontextchanged="txtJHSL_TextChanged" 
          ></asp:TextBox>
		
	</td></tr>
	<tr>
	<td height="25" width="25%" align="right">
		进货金额：</td>
	<td height="25" width="*" align="left">
		 
		<asp:TextBox id="txtJE" runat="server" Width="98%" Height="21px" 
          ></asp:TextBox>
		
	</td></tr>
	<tr>
	<td height="25" width="25%" align="right">
		经办人：</td>
	<td height="25" width="*" align="left">
		 
		<asp:TextBox id="txtJBR" runat="server" Width="98%" Height="21px" 
          ></asp:TextBox>
		
	</td></tr>
	<tr>
	<td height="25" width="25%" align="right">
		&nbsp;备注：</td>
	<td height="25" width="*" align="left">
		<asp:TextBox id="txtBZ" runat="server" Width="98%" Height="90px" 
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
