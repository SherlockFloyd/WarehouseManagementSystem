<%@ Page Language="C#" AutoEventWireup="true" CodeFile="YFX.aspx.cs" Inherits="Admin_YFX" %>

<%@ Register assembly="WebChart" namespace="WebChart" tagprefix="Web" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
        <link href="../css/CSS.css" type="text/css" rel="Stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
     <table style="width: 100%; height: 100%; border: 1px solid #000080">
        <tr>
            <td>
                月统计图</td>
        </tr>
        <tr>
            <td>
                月份：<asp:TextBox ID="txtDD" runat="server" Width="320px"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="统计" />
                (月份输入yyyy-mm)</td>
        </tr>
        <tr>
            <td>
                <Web:ChartControl ID="ChartControl1" runat="server" BorderStyle="Outset" 
                    BorderWidth="5px" Padding="13" YCustomEnd="0" 
                    YCustomStart="0" YValuesInterval="5" Height="393px" Width="752px" 
                    YValuesFormat="">
                    <Border Color="51, 102, 204" />
<YAxisFont StringFormat="Far,Near,Character,LineLimit" font="Tahoma, 8pt, style=Bold" 
                        forecolor="0, 153, 153"></YAxisFont>

<XTitle StringFormat="Center,Near,Character,LineLimit" font="Tahoma, 8pt, style=Bold" 
                        forecolor="204, 204, 255"></XTitle>

<XAxisFont StringFormat="Center,Near,Character,LineLimit" font="Tahoma, 8pt, style=Bold" 
                        forecolor="0, 153, 153"></XAxisFont>

<Background Color="#003399"></Background>

<ChartTitle StringFormat="Center,Near,Character,LineLimit" font="Tahoma, 10pt, style=Bold" 
                        forecolor="204, 204, 255"></ChartTitle>

<YTitle StringFormat="Center,Near,Character,DirectionVertical" font="Tahoma, 8pt, style=Bold" 
                        forecolor="204, 204, 255"></YTitle>
                </Web:ChartControl>
            </td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>
