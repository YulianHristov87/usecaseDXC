<%@ Page Language="VB" MasterPageFile="~/Admin/Master2.master" AutoEventWireup="false" CodeFile="Ahome.aspx.vb" Inherits="Admin_Default" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style2
    {
        width: 80%;
        border-style: solid;
        border-width: 2px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style2">
    <tr>
        <td colspan="3" style="text-align: center" width="100%">
            <asp:Label ID="Label2" runat="server" 
                style="font-family: Forte; font-size: 30pt; color: #CC3300" 
                Text="Select any post"></asp:Label>
        </td>
    </tr>
    <tr>
        <td colspan="3" style="text-align: center" width="100%">
            &nbsp;</td>
    </tr>
    <tr>
        <td width="10%">
            &nbsp;</td>
        <td style="text-align: center" width="80%">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                DataSourceID="SqlDataSource1" 
                style="font-size: x-large; font-family: Forte; color: #CC3300">
                <Columns>
                    <asp:HyperLinkField DataNavigateUrlFields="id" 
                        DataNavigateUrlFormatString="Transfer.aspx?n={0}" DataTextField="post" 
                        HeaderText="Select post" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT * FROM [post]"></asp:SqlDataSource>
        </td>
        <td width="10%">
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

