<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %> 

<HTML>
	<HEAD>
			<LINK href="css/CSS.css"type="text/css" rel="stylesheet">
	         
	        <style type="text/css">
                .style2
                {
                    height: 158px;
                }
                .style3
                {
                    width: 242px;
                }
                .style4
                {
                    width: 234px;
                }
                .style5
                {
                    width: 147px;
                }
            </style>
	         
	</HEAD>
	<body  background="images/back.jpg">
		<form id="Form1" method="post" runat="server">
			<FONT face="宋体">
				<TABLE id="Table1" align="center"    
                style="WIDTH: 696px; HEIGHT: 385px;    background-image : url('Images/backLV.jpg');"  
                border="0">
					<TR>
						<TD colspan="2" class="style2"></TD>
					</TR>
					<TR>
						<TD id="TD1" class="style5">
                        </TD>
						<TD vAlign="top" class="style3" >
							<TABLE id="Table2" cellSpacing="0" cellPadding="0" border="0" 
                                
                                style="border: thin outset #FFFFFF; color: #FFFFF; height: 173px; width: 354px;" 
                                bgcolor="#fd70a1">
								<TR height="30px">
									<TD align="center" colspan="2"   >
			                            &nbsp;</TD>
								</TR>
								<TR>
									<TD align="right"   >
                                        帐号：</TD>
									<TD class="style4"   >
										<asp:textbox id="txtUser" runat="server" BorderStyle="None" Width="140px"></asp:textbox></TD>
								</TR>
								<TR>
									<TD align="right"   >
                                        密码：</TD>
									<TD class="style4"  >
										<asp:textbox id="txtPwd" runat="server" BorderStyle="None" Width="140px" 
                                            TextMode="Password"></asp:textbox></TD>
								</TR>
								<TR>
									<TD align="center" colspan="2"   >
			<FONT face="宋体">
										<asp:RadioButtonList ID="RadioButtonList1" runat="server" ForeColor="White" 
                                            RepeatColumns="3" >

				                            <asp:ListItem>管理员</asp:ListItem>
                                            <asp:ListItem>操作员</asp:ListItem>
                                            <asp:ListItem>高贵的上帝</asp:ListItem>
                                        </asp:RadioButtonList>
			</FONT> 
		                            </TD>
								</TR>
								<TR>
									<TD style="HEIGHT: 38px" align="center" colSpan="2">
                                        <asp:ImageButton ID="IbtDL" runat="server" 
                                            ImageUrl="~/Images/button-login.gif" onclick="IbtDL_Click" 
                                              />
                                    </TD>
								</TR>
							</TABLE>
						</TD>
					</TR>
				</TABLE>
			</FONT> 
		</form>
	</body>
</HTML>
