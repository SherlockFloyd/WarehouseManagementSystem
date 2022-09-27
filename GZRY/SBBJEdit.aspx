<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SBBJEdit.aspx.cs" Inherits="GZRY_SBBJEdit" %>


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
		[销售单]</td>
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
		销售单号：</td>
	<td height="25" width="*" align="left">
		 
		<asp:TextBox id="txtLSDH" runat="server" Width="98%" Height="21px" 
            ReadOnly="True"></asp:TextBox>
		
	</td></tr>
	<tr>
	<td height="25" width="25%" align="right">
		日期：</td>
	<td height="25" width="*" align="left">
		 
		<asp:TextBox id="txtRQ" runat="server" Width="98%" Height="21px" 
            onclick="setday(this);"></asp:TextBox>
		
	</td></tr>
	<tr>
	<td height="25" width="25%" align="right">
		客户帐号：</td>
	<td height="25" width="*" align="left">
		 
		<asp:TextBox id="txt客户" runat="server" Width="67%" Height="21px" 
             AutoPostBack="True" 
            ontextchanged="txt客户_TextChanged"></asp:TextBox>
		
	    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="KH.aspx" 
            Target="_blank">客户信息</asp:HyperLink>
		
	</td></tr>
	<tr>
	<td height="25" width="25%" align="right">
		数量：</td>
	<td height="25" width="*" align="left">
		 
		<asp:TextBox id="txtSL" runat="server" Width="98%" Height="21px" 
            AutoPostBack="True" ontextchanged="txtSL_TextChanged" 
          ></asp:TextBox>
		
	</td></tr>
	<tr>
	<td height="25" width="25%" align="right">
		单价：</td>
	<td height="25" width="*" align="left">
		 
		<asp:TextBox id="txtDJ" runat="server" Width="98%" Height="21px" 
            AutoPostBack="True" ontextchanged="txtSL_TextChanged" ReadOnly="True" 
          ></asp:TextBox>
		
	</td></tr>
	<tr>
	<td height="25" width="25%" align="right">
		金额：</td>
	<td height="25" width="*" align="left">
		 
		<asp:TextBox id="txtJE" runat="server" Width="98%" Height="21px" 
          ></asp:TextBox>
		
	</td></tr>
	<tr>
	<td height="25" width="25%" align="right">
		折扣：</td>
	<td height="25" width="*" align="left">
		 
		<asp:TextBox id="txtZK" runat="server" Width="98%" Height="21px" 
            AutoPostBack="True" ontextchanged="txtZK_TextChanged" 
          ></asp:TextBox>
		
	</td></tr>
	<tr>
	<td height="25" width="25%" align="right">
		实收款：</td>
	<td height="25" width="*" align="left">
		 
		<asp:TextBox id="txtSSK" runat="server" Width="98%" Height="21px" 
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
            ImageUrl="~/images/button_ok.gif" onclick="btnAdd_Click" />
	&nbsp;</div></td></tr>
	</table>

    
    </div>
    </form>
</body>
</html>
