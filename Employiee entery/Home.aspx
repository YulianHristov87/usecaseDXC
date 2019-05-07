<%@ Page Language="VB" MasterPageFile="~/master1.master" Theme="luck" AutoEventWireup="false" CodeFile="Home.aspx.vb" Inherits="Default2" title="Untitled Page" %>

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
                style="font-style: italic" Text="Login Form" SkinID="1"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="text-align: right; width: 60%;" colspan="3">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: right" width="30%">
            <asp:Label ID="Label2" runat="server" Text="User name : =" SkinID="1"></asp:Label>
        </td>
        <td style="text-align: left" width="40%">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
        <td style="text-align: left" width="10%">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="TextBox1" ErrorMessage="Enter user name" ValidationGroup="a"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="text-align: right" width="30%">
            <asp:Label ID="Label3" runat="server" Text="Password : =" SkinID="1"></asp:Label>
        </td>
        <td style="text-align: left" width="40%">
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
        </td>
        <td style="text-align: left" width="10%">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="TextBox2" ErrorMessage="Enter password" ValidationGroup="a"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="text-align: right" width="30%">
            <asp:Label ID="Label6" runat="server" SkinID="1" Text="User type : ="></asp:Label>
        </td>
        <td style="text-align: left" width="40%">
            <asp:DropDownList ID="DropDownList1" runat="server" 
                DataSourceID="SqlDataSource1" DataTextField="usertype" 
                DataValueField="usertype">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT * FROM [Login]"></asp:SqlDataSource>
        </td>
        <td style="text-align: left" width="10%">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="DropDownList1" ErrorMessage="Select any user type" 
                ValidationGroup="a"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="text-align: right" width="30%">
            &nbsp;</td>
        <td style="text-align: left" width="40%">
            &nbsp;</td>
        <td style="text-align: left" width="10%">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: right" width="30%">
            &nbsp;</td>
        <td style="text-align: left" width="40%">
            <asp:Button ID="Button1" runat="server" Text="Login" SkinID="2" 
                ValidationGroup="a" />
        </td>
        <td style="text-align: left" width="10%">
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

