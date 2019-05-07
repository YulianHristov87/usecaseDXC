<%@ Page Language="VB" MasterPageFile="~/master1.master" Theme="luck" AutoEventWireup="false" CodeFile="login.aspx.vb" Inherits="Default2" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style3
    {
        width: 80%;
        border-style: solid;
        border-width: 2px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style3">
    <tr>
        <td style="text-align: right; width: 60%;" colspan="3">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: center; width: 60%;" colspan="3">
            <asp:Label ID="Label5" runat="server" ForeColor="#FF6600" 
                style="font-style: italic" Text="Check your data entery" SkinID="1"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="text-align: right; width: 60%;" colspan="3">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: right" width="30%">
            <asp:Label ID="Label2" runat="server" Text="No : =" SkinID="1"></asp:Label>
        </td>
        <td style="text-align: left" width="40%">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
        <td style="text-align: left" width="30%">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="TextBox1" ErrorMessage="Enter no" ValidationGroup="a"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="text-align: right" width="30%">
            <asp:Label ID="Label3" runat="server" Text="Name : =" SkinID="1"></asp:Label>
        </td>
        <td style="text-align: left" width="40%">
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
        <td style="text-align: left" width="30%">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="TextBox2" ErrorMessage="Enter name" ValidationGroup="a"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="text-align: right" width="30%">
            &nbsp;</td>
        <td style="text-align: left" width="40%">
            &nbsp;</td>
        <td style="text-align: left" width="30%">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: right" width="30%">
            &nbsp;</td>
        <td style="text-align: left" width="40%">
            &nbsp;</td>
        <td style="text-align: left" width="30%">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: right" width="30%">
            &nbsp;</td>
        <td style="text-align: left" width="40%">
            <asp:Button ID="Button1" runat="server" Text="Submit" SkinID="2" 
                ValidationGroup="a" />
        </td>
        <td style="text-align: left" width="30%">
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

