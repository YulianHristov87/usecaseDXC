<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="hrSystem.LogIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    </head>
<body>
    <form id="loginPage" runat="server" style="background-image: url('images/kisspng-invoice-discounting-finance-cash-flow-financial-business-card-5b2a566bdde706.6909013915295012919089.png'); background-repeat: no-repeat;">
        <div style="width: 1400px; height: 900px;">
            <div style="font-weight: 900; font-size: xx-large; margin-top: 10px">
                <p>
                    GpT HR Tool
                </p>
            </div>
         <table>
             <tr>
                 <td>
                     <asp:Label ID="UserName" runat="server" Text="Username"></asp:Label>
                 </td>
                 <td>
                     <asp:TextBox ID="unLogIn" runat="server"></asp:TextBox>
                 </td>
             </tr>
             <tr>
                 <td>
                     <asp:Label ID="Pass" TextMode="Password" runat="server" Text="Password"></asp:Label>
                 </td>
                 <td>
                     <asp:TextBox ID="pswLogIn" runat="server"></asp:TextBox>
                 </td>
             </tr>
             <tr>
                 <td>
                    
                 </td>
                 <td style="text-align: center">
                      <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
                 </td>
             </tr>
         </table>
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HRConnectionString %>" SelectCommand="SELECT * FROM [Employee]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
