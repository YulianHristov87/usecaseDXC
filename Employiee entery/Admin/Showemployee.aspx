<%@ Page Language="VB" MasterPageFile= "~/Admin/Master2.master"  Theme ="luck"  AutoEventWireup="false" CodeFile="Showemployee.aspx.vb" Inherits="Admin_Showemployee" title="Untitled Page" %>

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
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="3" width="100%" style="text-align: center">
                <asp:Label ID="Label2" runat="server"  Text="Employee list" 
                    style="font-family: Forte; font-size: xx-large; color: #CC3300"></asp:Label>
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
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="no" 
                    DataSourceID="SqlDataSource1" 
                    style="font-family: Forte; font-size: xx-large; color: #CC3300">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="no" HeaderText="no" HeaderStyle-ForeColor = "#CC3300" ReadOnly="True" 
                            SortExpression="no" />
                        <asp:BoundField DataField="name" HeaderText="name" HeaderStyle-ForeColor = "#CC3300" SortExpression="name" />
                        <asp:BoundField DataField="address" HeaderText="address" 
                            HeaderStyle-ForeColor = "#CC3300" SortExpression="address" />
                        <asp:BoundField DataField="city" HeaderText="city" HeaderStyle-ForeColor = "#CC3300" SortExpression="city" />
                        <asp:BoundField DataField="age" HeaderText="age" SortExpression="age" HeaderStyle-ForeColor = "#CC3300" />
                        <asp:BoundField DataField="Contactno" HeaderText="Contactno" 
                           HeaderStyle-ForeColor = "#CC3300"  SortExpression="Contactno" />
                        <asp:BoundField DataField="email" HeaderText="email" HeaderStyle-ForeColor = "#CC3300"  SortExpression="email" />
                        <asp:BoundField DataField="bg" HeaderText="bg" HeaderStyle-ForeColor = "#CC3300"  SortExpression="bg" />
                        <asp:BoundField DataField="post" HeaderText="post" HeaderStyle-ForeColor = "#CC3300"  SortExpression="post" />
                        <asp:BoundField DataField="salary" HeaderText="salary" 
                          HeaderStyle-ForeColor = "#CC3300"   SortExpression="salary" />
                        <asp:BoundField DataField="net" HeaderText="net" SortExpression="net" HeaderStyle-ForeColor = "#CC3300" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [no], [name], [address], [city], [age], [Contactno], [email], [bg], [post], [salary], [net] FROM [employee]">
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

