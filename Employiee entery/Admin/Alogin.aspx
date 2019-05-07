<%@ Page Language="VB" MasterPageFile="~/Admin/admin.master" Theme ="luck"  AutoEventWireup="false" CodeFile="Alogin.aspx.vb" Inherits="Admin_Default" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style2
    {
        width: 100%;
        border-style: solid;
        border-width: 2px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style2">
    <tr>
        <td colspan="3" style="text-align: center" width="100%">
            <asp:Label ID="Label2" runat="server" Text="LOGIN FORM" SkinID="1"></asp:Label>
        </td>
    </tr>
    <tr>
        <td colspan="3" style="text-align: center" width="100%">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: right" width="30%">
            <asp:Label ID="Label3" runat="server" SkinID="1" Text="Name : ="></asp:Label>
        </td>
        <td width="40%">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
        <td width="30%">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: right" width="30%">
            <asp:Label ID="Label4" runat="server" SkinID="1" Text="Password : ="></asp:Label>
        </td>
        <td width="40%">
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
        </td>
        <td width="30%">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: right" width="30%">
            &nbsp;</td>
        <td width="40%">
            &nbsp;</td>
        <td width="30%">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: right" width="30%">
            &nbsp;</td>
        <td width="40%">
            <asp:Image ID="Image2" runat="server" ImageUrl="~/picture/Hand_right.gif" />
            <asp:Button ID="Button1" runat="server" Text="LOGIN" SkinID="2" />
        </td>
        <td width="30%">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/picture/Hand_right.gif" />
            <asp:Button ID="Button2" runat="server" PostBackUrl="~/login.aspx" SkinID="2" 
                Text="LOGOUT" />
        </td>
    </tr>
</table>
</asp:Content>

