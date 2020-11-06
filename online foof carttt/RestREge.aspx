<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="RestREge.aspx.cs" Inherits="online_foof_carttt.RestREge" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style17 {
            text-align: center;
            font-size: xx-large;
            color: #000066;
        }
    .auto-style25 {
        width: 100%;
    }
        .auto-style28 {
            width: 401px;
        }
    .auto-style26 {
            width: 214px;
            font-size: large;
            font-weight: 700;
            text-align: left;
            color: #000066;
        }
        .auto-style33 {
            width: 174px;
        }
        .auto-style31 {
            width: 214px;
            font-size: large;
            font-weight: 700;
            text-align: left;
            height: 2px;
            color: #000066;
        }
        .auto-style32 {
            height: 2px;
        }
        .auto-style34 {
            width: 214px;
            font-size: large;
            font-weight: 700;
            text-align: left;
            height: 26px;
            color: #000066;
        }
        .auto-style35 {
            height: 26px;
        }
        .auto-style36 {
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style17">
        <strong>Sign&nbsp; up as Restuarant</strong></p>
        <table class="auto-style25">
            <tr>
                <td class="auto-style28">&nbsp;</td>
                <td style="text-align: left">
<table class="auto-style25">
    <tr>
        <td class="auto-style26" style="font-size: large; font-weight: 700; ">Resratrant Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server" Width="181px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style26">Restaurant Owner&#39;s Name</td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server" Width="181px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style26">Restaurant Type&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
        <td>
            <table class="auto-style25">
                <tr>
                    <td class="auto-style33">
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" Width="207px">
                <asp:ListItem>Veg</asp:ListItem>
                <asp:ListItem>Non-Veg</asp:ListItem>
                <asp:ListItem>Both</asp:ListItem>
            </asp:RadioButtonList>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="RadioButtonList1" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td class="auto-style31">Mobile Number&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
        <td class="auto-style32">
            <asp:TextBox ID="TextBox3" runat="server" Width="181px" MaxLength="10"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox3" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="Please enter a valid Number " ForeColor="Red" SetFocusOnError="True" ValidationExpression="[0-9]{10}" style="font-style: italic; font-size: medium"></asp:RegularExpressionValidator>
        &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style26">Email-id</td>
        <td>
            <asp:TextBox ID="TextBox4" runat="server" Width="181px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox4" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="TextBox4" ErrorMessage="Please Enter a valid Email " ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" style="font-style: italic"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style26">State</td>
        <td style="font-weight: 700">
            <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="DropDownList1" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style34">City</td>
        <td class="auto-style35">
            <asp:DropDownList ID="DropDownList2" runat="server" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="auto-style26">Pincode</td>
        <td>
            <asp:TextBox ID="TextBox13" runat="server" MaxLength="6" Width="181px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="TextBox13" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="TextBox13" ErrorMessage="Please enter a valid Pin code" ForeColor="Red" SetFocusOnError="True" ValidationExpression="[0-9]{6}" style="font-style: italic"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style26">Full Address</td>
        <td>
            <asp:TextBox ID="TextBox9" runat="server" TextMode="MultiLine" Width="182px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBox9" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style26">Password </td>
        <td>
            <asp:TextBox ID="TextBox6" runat="server" TextMode="Password" Width="181px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox6" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style26">Re-Enter password</td>
        <td>
            <asp:TextBox ID="TextBox10" runat="server" TextMode="Password" Width="181px"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox6" ControlToValidate="TextBox10" ErrorMessage="Password  not match" ForeColor="Red" SetFocusOnError="True" style="font-style: italic"></asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style26">&nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" style="font-weight: 700" Text="Submit" Width="78px" OnClick="Button1_Click" />
        &nbsp;&nbsp;<br />
&nbsp;<asp:Label ID="Label1" runat="server" style="color: #FF0000"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style26">&nbsp;</td>
        <td class="auto-style36"><a href="Login.aspx" style="font-style: italic; font-weight: 700">Already Registerd??</a></td>
    </tr>
</table>
                </td>
            </tr>
        </table>
        </asp:Content>
