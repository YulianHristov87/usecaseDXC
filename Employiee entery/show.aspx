<%@ Page Language="VB" MasterPageFile="~/master1.master"  Theme="luck"  AutoEventWireup="false" CodeFile="show.aspx.vb" Inherits="show" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style3" border = "2" width = "80%" align = "center"    >
        <tr>
            <td style="text-align: right" width="50 %">
                <asp:Label ID="Label6" runat="server" SkinID="1" Text="No : ="></asp:Label>
            </td>
            <td width="50%">
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Enetr no" ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="text-align: right" width="50 %">
                <asp:Label ID="Label2" runat="server" Text="Name : =" SkinID="1"></asp:Label>
            </td>
            <td width="50%">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="text-align: right" width="50%">
                <asp:Label ID="Label3" runat="server" Text="Post:=" SkinID="1"></asp:Label>
            </td>
            <td width="50%">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="text-align: right" width="50%">
                <asp:Label ID="Label4" runat="server" Text="Salary:=" SkinID="1"></asp:Label>
            </td>
            <td width="50%">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="text-align: right" width="50%">
                <asp:Label ID="Label5" runat="server" Text="NetSalary : =" SkinID="1"></asp:Label>
            </td>
            <td width="50%">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="text-align: right" width="50%">
                &nbsp;</td>
            <td width="50%">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: right" width="50%">
                <asp:Button ID="Button1" runat="server" SkinID="2" Text="Select" 
                    ValidationGroup="a" />
            </td>
            <td width="50%">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

