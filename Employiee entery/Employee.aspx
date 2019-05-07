<%@ Page Language="VB" MasterPageFile="~/master1.master" Theme ="luck"   AutoEventWireup="false" CodeFile="Employee.aspx.vb" Inherits="Employee" title="Untitled Page" %>

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
            height: 12px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellspacing="1" class="style3">
    <tr>
        <td colspan="3" width="100%">
            &nbsp;</td>
    </tr>
    <tr>
        <td colspan="3" style="text-align: center" width="100%">
            <asp:Label ID="Label2" runat="server" Text="Employee Registration" 
                style="font-size: 50pt; font-family: Forte; color: #CC6600"></asp:Label>
        </td>
    </tr>
    <tr>
        <td colspan="3" width="100%">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: right" width="30%">
            <asp:Label ID="Label3" runat="server" Text="No : ="  
                style="font-size: 20pt; font-family : Forte ; color : #CC6600"></asp:Label>
        </td>
        <td width="40%">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
        <td width="30%">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="TextBox1" ErrorMessage="Enter No" ValidationGroup="a"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                ControlToValidate="TextBox1" ErrorMessage="Enter No" ValidationGroup="d"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
                ControlToValidate="TextBox1" ErrorMessage="Enter No" ValidationGroup="s"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" 
                ControlToValidate="TextBox1" ErrorMessage="Enter No" ValidationGroup="i"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="text-align: right" width="30%">
            <asp:Label ID="Label4" runat="server" Text="Name : =" SkinID="1"></asp:Label>
        </td>
        <td width="40%">
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
        <td width="30%">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="TextBox2" ErrorMessage="Enter name" ValidationGroup="a"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" 
                ControlToValidate="TextBox2" ErrorMessage="Enter name" ValidationGroup="i"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="text-align: right" width="30%">
            <asp:Label ID="Label5" runat="server" Text="address : =" SkinID="1"></asp:Label>
        </td>
        <td width="40%">
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </td>
        <td width="30%">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="TextBox3" ErrorMessage="Enter address" ValidationGroup="a"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" 
                ControlToValidate="TextBox3" ErrorMessage="Enter address" 
                ValidationGroup="i"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="text-align: right" width="30%">
            <asp:Label ID="Label6" runat="server" Text="City : =" SkinID="1"></asp:Label>
        </td>
        <td width="40%">
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        </td>
        <td width="30%">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="TextBox5" ErrorMessage="Enter city" ValidationGroup="a"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" 
                ControlToValidate="TextBox5" ErrorMessage="Enter city" ValidationGroup="i"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="text-align: right" width="30%">
            <asp:Label ID="Label7" runat="server" Text="Age : =" SkinID="1"></asp:Label>
        </td>
        <td width="40%">
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        </td>
        <td width="30%" style="text-align: left">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ControlToValidate="TextBox5" ErrorMessage="Enter Age" ValidationGroup="a"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" 
                ControlToValidate="TextBox5" ErrorMessage="Enter Age" ValidationGroup="i"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="text-align: right" width="30%">
            <asp:Label ID="Label8" runat="server" Text="Email Id : =" SkinID="1"></asp:Label>
        </td>
        <td width="40%">
            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                ControlToValidate="TextBox6" ErrorMessage="Enter incorect formate" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                ValidationGroup="i"></asp:RegularExpressionValidator>
        </td>
        <td width="30%">
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ControlToValidate="TextBox6" ErrorMessage="Enter incorect formate" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                ValidationGroup="a"></asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                ControlToValidate="TextBox6" ErrorMessage="Enter Email id" ValidationGroup="a"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" 
                ControlToValidate="TextBox6" ErrorMessage="Enter Email id" 
                ValidationGroup="i"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="text-align: right" width="30%">
            <asp:Label ID="Label9" runat="server" Text="Contact No : = " SkinID="1"></asp:Label>
        </td>
        <td width="40%">
            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
        </td>
        <td width="30%">
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                ControlToValidate="TextBox7" ErrorMessage="Enter 10 digit no" 
                ValidationExpression="\d{10}" ValidationGroup="a"></asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                ControlToValidate="TextBox7" ErrorMessage="Enter contact no" 
                ValidationGroup="a"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                ControlToValidate="TextBox7" ErrorMessage="Enter 10 digit no" 
                ValidationExpression="\d{10}" ValidationGroup="i"></asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" 
                ControlToValidate="TextBox7" ErrorMessage="Enter contact no" 
                ValidationGroup="i"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="text-align: right" width="30%">
            <asp:Label ID="Label10" runat="server" Text="Bludgroup : =" SkinID="1"></asp:Label>
        </td>
        <td width="40%">
            <asp:DropDownList ID="D1" runat="server">
                <asp:ListItem>+ A</asp:ListItem>
                <asp:ListItem>- A</asp:ListItem>
                <asp:ListItem>+ B</asp:ListItem>
                <asp:ListItem>- B</asp:ListItem>
                <asp:ListItem>+ AB</asp:ListItem>
                <asp:ListItem Enabled="False">- AB</asp:ListItem>
                <asp:ListItem>+ O</asp:ListItem>
                <asp:ListItem>- O</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td width="30%">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                ControlToValidate="D1" ErrorMessage="Select your blued group" 
                ValidationGroup="a"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" 
                ControlToValidate="D1" ErrorMessage="Select your blued group" 
                ValidationGroup="i"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="text-align: right" width="30%">
            <asp:Label ID="Label17" runat="server" Text="Post : =" SkinID="1"></asp:Label>
        </td>
        <td width="40%">
            <asp:DropDownList ID="Dl" runat="server">
                <asp:ListItem Value="15,000">HRD</asp:ListItem>
                <asp:ListItem Value="12,500">Colitye manager</asp:ListItem>
                <asp:ListItem Value="12500">Production manager</asp:ListItem>
                <asp:ListItem Value="12000">Maintance manager</asp:ListItem>
                <asp:ListItem Value="8000">Supervisor</asp:ListItem>
                <asp:ListItem Value="7000">Operater</asp:ListItem>
                <asp:ListItem Value="5000">Helper</asp:ListItem>
                <asp:ListItem Value="9000">Packing Supervisor</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td width="30%">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                ControlToValidate="Dl" ErrorMessage="Select your post" ValidationGroup="a"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator28" runat="server" 
                ControlToValidate="Dl" ErrorMessage="Select your post" ValidationGroup="i"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="text-align: right" width="30%">
            <asp:Label ID="Label11" runat="server" Text="Salary  : =" SkinID="1"></asp:Label>
        </td>
        <td width="40%">
            <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
        </td>
        <td width="30%">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: right" width="30%">
            <asp:Label ID="Label12" runat="server" Text="Da : =" SkinID="1"></asp:Label>
        </td>
        <td width="40%">
            <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
        </td>
        <td width="30%">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                ControlToValidate="TextBox9" ErrorMessage="Enter your da" ValidationGroup="a"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator24" runat="server" 
                ControlToValidate="TextBox9" ErrorMessage="Enter your da" ValidationGroup="i"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="text-align: right" width="30%">
            <asp:Label ID="Label13" runat="server" Text="HRA : =" SkinID="1"></asp:Label>
        </td>
        <td width="40%">
            <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
        </td>
        <td width="30%">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                ControlToValidate="TextBox10" ErrorMessage="Enter your har" ValidationGroup="a"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator25" runat="server" 
                ControlToValidate="TextBox10" ErrorMessage="Enter your har" ValidationGroup="i"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="text-align: right" width="30%">
            <asp:Label ID="Label14" runat="server" Text="IT : =" SkinID="1"></asp:Label>
        </td>
        <td width="40%">
            <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
        </td>
        <td width="30%">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                ControlToValidate="TextBox11" ErrorMessage="Enter your it" ValidationGroup="a"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator26" runat="server" 
                ControlToValidate="TextBox11" ErrorMessage="Enter your it" ValidationGroup="i"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="text-align: right" width="30%">
            <asp:Label ID="Label19" runat="server" Text="PF : =" SkinID="1"></asp:Label>
        </td>
        <td width="40%">
            <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox>
        </td>
        <td width="30%">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                ControlToValidate="TextBox15" ErrorMessage="Enter your pf" ValidationGroup="a"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator27" runat="server" 
                ControlToValidate="TextBox15" ErrorMessage="Enter your pf" ValidationGroup="i"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="text-align: right" width="30%" class="style4">
            <asp:Label ID="Label15" runat="server" Text="Allowances : =" SkinID="1"></asp:Label>
        </td>
        <td width="40%" class="style4">
            <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
        </td>
        <td width="30%" class="style4">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator29" runat="server" 
                ControlToValidate="TextBox12" ErrorMessage="Enter allowese" ValidationGroup="i"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="text-align: right" width="30%">
            <asp:Label ID="Label16" runat="server" Text="Deduction : =" SkinID="1"></asp:Label>
        </td>
        <td width="40%">
            <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
        </td>
        <td width="30%">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator30" runat="server" 
                ControlToValidate="TextBox13" ErrorMessage="Enter deducation" 
                ValidationGroup="i"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="text-align: right" width="30%">
            <asp:Label ID="Label18" runat="server" Text="Net Salary : =" SkinID="1"></asp:Label>
        </td>
        <td width="40%">
            <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
        </td>
        <td width="30%">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator31" runat="server" 
                ControlToValidate="TextBox14" ErrorMessage="Enter Net salary" 
                ValidationGroup="i"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="text-align: right" width="30%">
            &nbsp;</td>
        <td width="40%">
            &nbsp;</td>
        <td width="30%">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: right" width="30%">
            &nbsp;</td>
        <td width="40%">
            &nbsp;</td>
        <td width="30%">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: right" width="30%">
            </td>
        <td width="40%">
            </td>
        <td width="30%">
            </td>
    </tr>
    <tr>
        <td style="text-align: right" width="30%">
            <asp:Button ID="Submit" runat="server" Text="Submit" ValidationGroup="a" 
                SkinID="2" style="font-size: x-large; font-family: Forte; color: #CC3300" 
                ToolTip="First click heare" />
            <asp:Button ID="Insert" runat="server" Text="Insert" SkinID="2" 
                ValidationGroup="i" />
            </td>
        <td width="40%">
            <asp:Button ID="Delete" runat="server" Text="Delete" SkinID="2" 
                ValidationGroup="d" />
            <asp:Button ID="Updete" runat="server" Text="Update" SkinID="2" />
        </td>
        <td width="30%">
            <asp:Button ID="Button1" runat="server" Text="Select" SkinID="2" 
                ValidationGroup="s" />
            <asp:Button ID="Refress" runat="server" Text="Refresh" SkinID="2" />
        </td>
    </tr>
    <tr>
        <td style="text-align: right" width="30%">
            &nbsp;</td>
        <td width="40%">
            &nbsp;</td>
        <td width="30%">
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

