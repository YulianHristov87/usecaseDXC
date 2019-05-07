<%@ Page Language="VB" MasterPageFile="~/Admin/Master2.master" Theme ="luck"  AutoEventWireup="false" CodeFile="Post.aspx.vb" Inherits="Admin_Post" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style2
    {
        width: 80%;
        border-style: solid;
        border-width: 2px;
    }
        .style3
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
        <td colspan="3" width="100%" style="text-align: center">
            <asp:Label ID="Label2" runat="server" Text="Post Details" 
                style="font-family: Forte; font-size: xx-large; color: #CC3300"></asp:Label>
        </td>
    </tr>
    <tr>
        <td width="10%">
            &nbsp;</td>
        <td style="text-align: center" width="80%">
            <br />
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id" 
                DataSourceID="SqlDataSource1" 
                style="font-family: Forte; font-size: xx-large; color: #CC3300">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                        ShowSelectButton="True" />
                    <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" 
                        SortExpression="id" />
                    <asp:BoundField DataField="post" HeaderText="post" SortExpression="post" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                DeleteCommand="DELETE FROM [post] WHERE [id] = @id" 
                InsertCommand="INSERT INTO [post] ([id], [post]) VALUES (@id, @post)" 
                SelectCommand="SELECT * FROM [post]" 
                UpdateCommand="UPDATE [post] SET [post] = @post WHERE [id] = @id">
                <DeleteParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                </DeleteParameters>
                <UpdateParameters>
                    <asp:Parameter Name="post" Type="String" />
                    <asp:Parameter Name="id" Type="Int32" />
                </UpdateParameters>
                <InsertParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                    <asp:Parameter Name="post" Type="String" />
                </InsertParameters>
            </asp:SqlDataSource>
        </td>
        <td width="10%">
            &nbsp;</td>
    </tr>
    <tr>
        <td width="10%">
            &nbsp;</td>
        <td style="text-align: center" width="80%">
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="id" 
                DataSourceID="SqlDataSource2" DefaultMode="Insert">
                <EditItemTemplate>
                    id:
                    <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
                    <br />
                    post:
                    <asp:TextBox ID="postTextBox" runat="server" Text='<%# Bind("post") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                        CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                        CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    <table class="style3">
                        <tr>
                            <td style="text-align: right; color: #CC3300" width="50%">
                                id:</td>
                            <td style="text-align: left" width="50%">
                                <asp:TextBox ID="idTextBox" runat="server" Text='<%# Bind("id") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: right; color: #CC3300" width="50%">
                                post:</td>
                            <td style="text-align: left" width="50%">
                                <asp:TextBox ID="postTextBox" runat="server" Text='<%# Bind("post") %>' />
                            </td>
                        </tr>
                    </table>
                    &nbsp;<br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                        CommandName="Insert" style="color: #CC3300" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                        CausesValidation="False" CommandName="Cancel" style="color: #CC3300" 
                        Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    id:
                    <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                    <br />
                    post:
                    <asp:Label ID="postLabel" runat="server" Text='<%# Bind("post") %>' />
                    <br />
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                        CommandName="Edit" Text="Edit" />
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                        CommandName="Delete" Text="Delete" />
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                        CommandName="New" Text="New" />
                </ItemTemplate>
            </asp:FormView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                DeleteCommand="DELETE FROM [post] WHERE [id] = @id" 
                InsertCommand="INSERT INTO [post] ([id], [post]) VALUES (@id, @post)" 
                SelectCommand="SELECT [id], [post] FROM [post]" 
                UpdateCommand="UPDATE [post] SET [post] = @post WHERE [id] = @id">
                <DeleteParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                </DeleteParameters>
                <UpdateParameters>
                    <asp:Parameter Name="post" Type="String" />
                    <asp:Parameter Name="id" Type="Int32" />
                </UpdateParameters>
                <InsertParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                    <asp:Parameter Name="post" Type="String" />
                </InsertParameters>
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

