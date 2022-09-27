<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Admin_Index" %> 

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Frameset//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-frameset.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>欢迎使用仓库物流管理系统</title>
</head>

<frameset rows="98,*,8" frameborder="no" border="0" framespacing="0">
  <frame src="top.aspx" name="topFrame" scrolling="No" noresize="noresize" id="topFrame" />
  <frameset cols="160,*" frameborder="yes" border="1" framespacing="0" id="frame" >
		        <frame name="frmLeft"　   src="Left.aspx" scrolling="no" noresize marginwidth="0" marginheight="0"   >
		        <frame name="mainFrame"     src="main.aspx"  scrolling="yes" marginwidth="0" marginheight="0"   >
            </frameset> 
  <frame src="bottom.aspx" name="bottomFrame" scrolling="No" noresize="noresize" id="bottomFrame" />
</frameset>
<noframes><body>
</body>
</noframes></html>
