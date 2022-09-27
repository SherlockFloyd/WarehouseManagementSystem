<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PHList.aspx.cs" Inherits="GZRY_PHList" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">



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
                                           <td height="25" width="30%" align="center" class="tdHeader"> [配货记录维护管理]</td>
	                                   
                                        </tr>
                                       
                                        <tr>
                                           <td height="25" width="30%" align="right" class="tdHeader"> 
		                                       配货单号：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                               客户名称：<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
		<asp:ImageButton ID="btnAdd" runat="server" 
            ImageUrl="~/images/button_search.GIF" onclick="BtnSearch_Click" />
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
                                        		<asp:BoundField DataField="配送单号" HeaderText="配送单号" >
		</asp:BoundField>
				<asp:BoundField DataField="货物名称" HeaderText="货物名称" >
		</asp:BoundField>
				<asp:BoundField DataField="数量" HeaderText="数量" >
		</asp:BoundField>
				<asp:BoundField DataField="名称" HeaderText="名称" >
		</asp:BoundField>
				<asp:BoundField DataField="地址" HeaderText="地址" >
		</asp:BoundField>
				<asp:BoundField DataField="联系电话" HeaderText="联系电话" >
		</asp:BoundField>
				<asp:BoundField DataField="类别" HeaderText="类别" >
		</asp:BoundField>
				<asp:BoundField DataField="配送日期" HeaderText="配送日期" >
		</asp:BoundField>
				<asp:BoundField DataField="销售单号" HeaderText="销售单号" >
		</asp:BoundField>
				<asp:BoundField DataField="车牌号" HeaderText="车牌号" >
		</asp:BoundField>
				<asp:BoundField DataField="驾驶员" HeaderText="驾驶员" >
		</asp:BoundField>
				<asp:BoundField DataField="配送记录" HeaderText="配送记录" >
		</asp:BoundField>
				<asp:BoundField DataField="配送结果" HeaderText="配送结果" >
		</asp:BoundField>
				<asp:BoundField DataField="客户签收" HeaderText="客户签收" >
		</asp:BoundField>
				<asp:BoundField DataField="备注" HeaderText="备注" >
		</asp:BoundField>
		                                        
                                        <asp:TemplateField HeaderText="操作">
                                            <ItemTemplate>
                                                <asp:LinkButton ID="btn_Modify" runat="server" BackColor="Transparent" 
                                                    BorderStyle="None" CommandName="Mod" ForeColor="#3a6ea5" Text="配货记录"></asp:LinkButton>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="5%" 
                                                Wrap="false" />
                                            <HeaderStyle HorizontalAlign="Center" Wrap="false" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="操作" Visible="False">
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

