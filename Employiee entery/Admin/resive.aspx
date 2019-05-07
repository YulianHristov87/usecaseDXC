<%@ Page Language="VB" MasterPageFile="~/Admin/Master2.master" Theme="luck"  AutoEventWireup="false" CodeFile="resive.aspx.vb" Inherits="Admin_resive" title="Untitled Page" %>

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
            <asp:Label ID="Label2" runat="server" Text="Information About Slected name" 
                 style="font-size: 30pt; font-family: Forte; color: #CC3300;" ></asp:Label>
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
            <asp:DataList ID="DataList1" runat="server" CellPadding="4" DataKeyField="no" 
                DataSourceID="SqlDataSource1" ForeColor="#333333" 
                style="font-family: Forte; font-size: x-large; color: #CC6600">
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <ItemTemplate>
                    no:
                    <asp:Label ID="noLabel" runat="server" Text='<%# Eval("no") %>' />
                    <br />
                    name:
                    <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                    <br />
                    address:
                    <asp:Label ID="addressLabel" runat="server" Text='<%# Eval("address") %>' />
                    <br />
                    city:
                    <asp:Label ID="cityLabel" runat="server" Text='<%# Eval("city") %>' />
                    <br />
                    age:
                    <asp:Label ID="ageLabel" runat="server" Text='<%# Eval("age") %>' />
                    <br />
                    email:
                    <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
                    <br />
                    Contactno:
                    <asp:Label ID="ContactnoLabel" runat="server" Text='<%# Eval("Contactno") %>' />
                    <br />
                    bg:
                    <asp:Label ID="bgLabel" runat="server" Text='<%# Eval("bg") %>' />
                    <br />
                    post:
                    <asp:Label ID="postLabel" runat="server" Text='<%# Eval("post") %>' />
                    <br />
                    <br />
                </ItemTemplate>
                <AlternatingItemStyle BackColor="White" />
                <ItemStyle BackColor="#EFF3FB" />
                <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                
                SelectCommand="SELECT [no], [name], [address], [city], [age], [salary], [bg], [Contactno], [email], [net] FROM [employee]">
            </asp:SqlDataSource>
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

