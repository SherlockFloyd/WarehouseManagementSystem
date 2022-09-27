<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BXDD.aspx.cs" Inherits="BXDD" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
   <title></title>
    <link href="../css/CSS.css" type="text/css" rel="Stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
   <div align="center">
            <table width="99%" border="0" cellspacing="0" cellpadding="0" align="center" id="Table1">
                <tr>
                    <td   valign="top">
                        <table width="100%" border="0" align="center" cellpadding="5" cellspacing="0">
                            <tr>
                                <td >
                                    <table  
                                        cellpadding="5" width="100%" 
                                        border="0" cellspacing="0">
                                        <tr>
                                           <td height="25" width="30%" align="center" class="tdHeader"> [操作员管理列表]</td>
	                                   
                                        </tr>
                                       
                                        <tr>
                                           <td height="25" width="30%" align="right" class="tdHeader"> 
		<asp:ImageButton ID="btnAdd" runat="server" 
            ImageUrl="~/images/button_add.gif" onclick="btnAdd_Click" />
	                                        </td>
	                                   
                                        </tr>
                                       
                                        <tr>
                                           <td height="25" width="30%" align="left" class="tdHeader"> 
		                                       操作员名称:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
		<asp:ImageButton ID="btnAdd0" runat="server" 
            ImageUrl="~/images/button_search.GIF" onclick="btnAdd0_Click" />
	                                        </td>
	                                   
                                        </tr>
                                       
                                    </table>
                                </td>
                            </tr>
                            <tr>
                            <td>
                            	<asp:GridView ID="gvData" runat="server" AllowPaging="True" 
                                    AutoGenerateColumns="False" BorderStyle="None" BorderWidth="1px" 
                                    CellPadding="4" SkinID="GridViewAuto" 
                                    UseAccessibleHeader="False" Width="100%" onrowcommand="gvData_RowCommand" 
                                    onrowcreated="gvData_RowCreated" onrowdatabound="gvData_RowDataBound" 
                                    BackColor="White" BorderColor="#DEDFDE" ForeColor="Black" 
                                    GridLines="Vertical">
                                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                                    <EmptyDataTemplate>
                                        <div style="text-align:center;vertical-align:middle">
                                            <br />
                                            找不到和您的查询条件相符的信息 
                                        </div>
                                    </EmptyDataTemplate>
                                    <FooterStyle BackColor="#CCCC99" />
                                    <RowStyle BackColor="#F7F7DE" />
                                    
                                    <Columns>
                                        <asp:BoundField DataField="帐号" HeaderText="帐号" Visible="true" >
                                            <ItemStyle HorizontalAlign="Center"    />
                                            <HeaderStyle HorizontalAlign="Center" />
                                        </asp:BoundField>
                                           <asp:BoundField DataField="姓名" HeaderText="姓名" >
                                            <ItemStyle HorizontalAlign="Center"    />
                                            <HeaderStyle HorizontalAlign="Center" />
                                        </asp:BoundField>
                                         <asp:BoundField DataField="电话" HeaderText="电话" >
                                            <ItemStyle HorizontalAlign="Center"    />
                                            <HeaderStyle HorizontalAlign="Center" />
                                        </asp:BoundField>
                                          <asp:BoundField DataField="住址" HeaderText="住址" > 
                                            <ItemStyle HorizontalAlign="Center" />
                                            <HeaderStyle HorizontalAlign="Center" />
                                        </asp:BoundField>
                                          <asp:BoundField DataField="邮箱" HeaderText="邮箱" > 
                                            <ItemStyle HorizontalAlign="Center" />
                                            <HeaderStyle HorizontalAlign="Center" />
                                        </asp:BoundField>
                                        
                                        <asp:TemplateField HeaderText="操作">
                                            <ItemTemplate>
                                                <asp:LinkButton ID="btn_Modify" runat="server" BackColor="Transparent" 
                                                    BorderStyle="None" CommandName="Mod" ForeColor="#3a6ea5" Text="编辑"></asp:LinkButton>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="5%" 
                                                Wrap="false" />
                                            <HeaderStyle HorizontalAlign="Center" Wrap="false" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="操作">
                                            <ItemTemplate>
                                                <asp:LinkButton ID="btn_Delete" runat="server" BackColor="Transparent" 
                                                    BorderStyle="None" CommandName="Del" ForeColor="#3a6ea5" Text="删除"></asp:LinkButton>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="5%" 
                                                Wrap="false" />
                                            <HeaderStyle HorizontalAlign="Center" Wrap="false" />
                                        </asp:TemplateField>
                                    </Columns>
                                    <PagerSettings Visible="False" />
                                    <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                                    <AlternatingRowStyle BackColor="White" />
                                </asp:GridView>
                            
                            </td>
                            </tr>
                            <tr>
                                <td  
                                    align="right">
                                    <asp:Label ID="lblCurrentIndex" runat="server"></asp:Label>
                                    &nbsp;
                                    <asp:Label ID="lblPageCount" runat="server"></asp:Label>
                                    &nbsp;&nbsp;
                                    <asp:Label ID="lblCount" runat="server"></asp:Label>
                                    &nbsp;&nbsp;
                                    <asp:LinkButton ID="btnFirst" runat="server" CommandArgument="0" 
                                        Font-Size="8pt" ForeColor="navy" OnClick="PagerButtonClick">最首页</asp:LinkButton>
                                    &nbsp;
                                    <asp:LinkButton ID="btnPrev" runat="server" CommandArgument="prev" 
                                        Font-Size="8pt" ForeColor="navy" OnClick="PagerButtonClick">前一页</asp:LinkButton>
                                    &nbsp;
                                    <asp:LinkButton ID="btnNext" runat="server" CommandArgument="next" 
                                        Font-Size="8pt" ForeColor="navy" OnClick="PagerButtonClick">后一页</asp:LinkButton>
                                    &nbsp;
                                    <asp:LinkButton ID="btnLast" runat="server" CommandArgument="last" 
                                        Font-Size="8pt" ForeColor="navy" OnClick="PagerButtonClick">最后页</asp:LinkButton>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

