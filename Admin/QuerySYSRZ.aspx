<%@ Page Language="C#" AutoEventWireup="true" CodeFile="QuerySYSRZ.aspx.cs" Inherits="Admin_QuerySYSRZ" %>

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
                                           <td height="25" width="30%" align="center" class="tdHeader"> [货物进货查询]</td>
	                                   
                                        </tr>
                                       
                                        <tr>
                                           <td height="25" width="30%" align="left" class="tdHeader"> 
		                                       货物名称：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
		                                       进货单号：<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
		<asp:ImageButton ID="btnSearch" runat="server" 
            ImageUrl="~/images/button_search.GIF" onclick="btnSearch_Click" />
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
                                        <asp:BoundField DataField="进货单号" HeaderText="进货单号" >
                                            <ItemStyle HorizontalAlign="Center"    />
                                            <HeaderStyle HorizontalAlign="Center" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="进货时间" HeaderText="进货时间" DataFormatString="{0:d}" />
                                        
                                         <asp:BoundField DataField="货物名称" HeaderText="货物名称" >
                                        </asp:BoundField>
                                           <asp:BoundField DataField="进货数量" HeaderText="进货数量" >
                                            <ItemStyle HorizontalAlign="Center"    />
                                            <HeaderStyle HorizontalAlign="Center" />
                                        </asp:BoundField>
                                          <asp:BoundField DataField="单价" HeaderText="单价" > 
                                            <ItemStyle HorizontalAlign="Center" />
                                            <HeaderStyle HorizontalAlign="Center" />
                                        </asp:BoundField>
                                          <asp:BoundField DataField="进货金额" HeaderText="进货金额" > 
                                            <ItemStyle HorizontalAlign="Center" />
                                            <HeaderStyle HorizontalAlign="Center" />
                                              <HeaderStyle HorizontalAlign="Center" />
                                              <ItemStyle HorizontalAlign="Center" />
                                        </asp:BoundField>
                                        
                                        <asp:BoundField DataField="经办人" HeaderText="经办人" />
                                        
                                        <asp:BoundField DataField="操作员帐号" HeaderText="操作人" />
                                        
                                        <asp:TemplateField HeaderText="操作" Visible="False">
                                            <ItemTemplate>
                                                <asp:LinkButton ID="btn_Modify" runat="server" BackColor="Transparent" 
                                                    BorderStyle="None" CommandName="Mod" ForeColor="#3a6ea5" Text="编辑"></asp:LinkButton>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="5%" 
                                                Wrap="false" />
                                            <HeaderStyle HorizontalAlign="Center" Wrap="false" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="操作" Visible="False">
                                            <ItemTemplate>
                                                <asp:LinkButton ID="btn_Delete" runat="server" BackColor="Transparent" 
                                                    BorderStyle="None" CommandName="Del" ForeColor="#3a6ea5" Text="作废"></asp:LinkButton>
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

