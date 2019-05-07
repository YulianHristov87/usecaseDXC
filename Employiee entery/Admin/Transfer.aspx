<%@ Page Language="VB" MasterPageFile="~/Admin/Master2.master" AutoEventWireup="false" CodeFile="Transfer.aspx.vb" Inherits="Admin_Transfer" title="Untitled Page" %>

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
        <td colspan="3" width="100%" style="text-align: center">
            <asp:Label ID="Label2" runat="server" Text="Information About Selected post" 
                Font-Size="30pt" style="font-family: Forte; color: #CC3300" ></asp:Label>
        </td>
    </tr>
    <tr>
        <td colspan="3" width="100%">
            &nbsp;</td>
    </tr>
    <tr>
        <td width="10%">
            &nbsp;</td>
        <td style="text-align: center" width="80%">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                DataSourceID="SqlDataSource1" 
                style="color: #CC3300; font-size: x-large; font-family: Forte">
                <Columns>
                    <asp:HyperLinkField DataNavigateUrlFields="no" 
                        DataNavigateUrlFormatString="resive.aspx?o={0}" DataTextField="name" 
                        HeaderText="Select name" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                
                SelectCommand="SELECT [no], [name], [post] FROM [employee] WHERE ([post] = @post)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="post" QueryStringField="n" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
        <td width="10%">
            &nbsp;</td>
    </tr>
    <tr>
        <td colspan="3" style="width: 20%" width="100%">
            &nbsp;</td>
    </tr>
</table>
<br />
</asp:Content>

