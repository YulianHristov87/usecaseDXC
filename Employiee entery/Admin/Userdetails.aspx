<%@ Page Language="VB" MasterPageFile="~/Admin/Master2.master" AutoEventWireup="false" CodeFile="Userdetails.aspx.vb" Inherits="Admin_Userdetails" title="Untitled Page" %>

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
        <td colspan="3" width="100%">
            &nbsp;</td>
    </tr>
    <tr>
        <td width="10%">
            &nbsp;</td>
        <td width="80%" style="text-align: center">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" 
                style="font-family: Forte; font-size: xx-large; color: #CC3300">
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                        ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="Username" HeaderText="Username" 
                        SortExpression="Username" />
                    <asp:BoundField DataField="password" HeaderText="password" 
                        SortExpression="password" />
                    <asp:BoundField DataField="Usertype" HeaderText="Usertype" 
                        SortExpression="Usertype" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT * FROM [Logindata]"></asp:SqlDataSource>
        </td>
        <td width="10%">
            &nbsp;</td>
    </tr>
    <tr>
        <td colspan="3" width="100%">
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

