<%@ Page Language="VB" MasterPageFile="~/master1.master"   Theme="luck"  AutoEventWireup="false" CodeFile="Contactus.aspx.vb" Inherits="Contact_us" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 80%;
            border-style: solid;
            border-width: 2px;
        }
        .style4
        {
            font-family: Forte;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1"   Runat="Server">
    <br />
    <table class="style3" align=center >
        <tr>
            <td style="text-align: center" width="100%">
                <asp:Button ID="Button1" runat="server" Text="Contact About Developer" 
                    SkinID="2" />
            </td>
        </tr>
        <tr>
            <td width="100%">
                &nbsp;</td>
        </tr>
        <tr>
            <td width="100%" style="text-align: center">
                &nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server" SkinID="1" Text="Name : ="></asp:Label>
&nbsp;
                <asp:Label ID="Label3" runat="server" SkinID="1" Text="Gajjar Shraddha R."></asp:Label>
            </td>
        </tr>
        <tr>
            <td width="100%" style="text-align: center">
                <asp:Label ID="Label4" runat="server" SkinID="1" Text="Address : ="></asp:Label>
&nbsp;<asp:Label ID="Label5" runat="server" SkinID="1" Text=" 19,shakarnagar socity"></asp:Label>
            </td>
        </tr>
        <tr>
            <td width="100%" style="text-align: center">
                <asp:Label ID="Label6" runat="server" SkinID="1" Text="City : ="></asp:Label>
&nbsp;&nbsp;
                <asp:Label ID="Label7" runat="server" SkinID="1" Text="Mahesana"></asp:Label>
            </td>
        </tr>
        <tr>
            <td width="100%" style="text-align: center">
                <asp:Label ID="Label8" runat="server" SkinID="1" Text="Contact no : ="></asp:Label>
&nbsp;<asp:Label ID="Label9" runat="server" SkinID="1" Text="9429742305"></asp:Label>
            </td>
        </tr>
        <tr>
            <td width="100%">
                &nbsp;</td>
        </tr>
        <tr>
            <td width="100%" class="style4" style="text-align: center">
                <asp:Label ID="Label10" runat="server" SkinID="1" Text="Name : ="></asp:Label>
                <asp:Label ID="Label11" runat="server" SkinID="1" Text="Patel nisha J."></asp:Label>
            </td>
        </tr>
        <tr>
            <td width="100%" class="style4" style="text-align: center">
                <asp:Label ID="Label12" runat="server" SkinID="1" Text="Address : ="></asp:Label>
&nbsp;<asp:Label ID="Label13" runat="server" SkinID="1" Text="12,Snehkunj socity"></asp:Label>
            </td>
        </tr>
        <tr>
            <td width="100%" class="style4" style="text-align: center">
                <asp:Label ID="Label14" runat="server" SkinID="1" Text="City : ="></asp:Label>
&nbsp;&nbsp;
                <asp:Label ID="Label15" runat="server" SkinID="1" Text="Mahesana"></asp:Label>
            </td>
        </tr>
        <tr>
            <td width="100%" class="style4" style="text-align: center">
                <asp:Label ID="Label16" runat="server" SkinID="1" Text="Contact no : ="></asp:Label>
&nbsp;<asp:Label ID="Label17" runat="server" SkinID="1" Text="245794"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

