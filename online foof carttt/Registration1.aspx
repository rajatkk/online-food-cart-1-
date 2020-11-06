<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Registration1.aspx.cs" Inherits="online_foof_carttt.Registration1" %>
 <asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
    .auto-style12 {
        width: 100%;
    }
    .auto-style13 {
        width: 177px;
    }
    .auto-style14 {
        font-size: xx-large;
        color: #000066;
    }
        .auto-style30 {
        font-size: large;
        color: #000099;
        font-weight: normal;
    }
    .auto-style31 {
        font-size: large;
        color: #0000CC;
    }
    .auto-style32 {
        font-size: xx-large;
        color: #000066;
        height: 16px;
        font-style: normal;
    }
    .auto-style34 {
        text-decoration: underline;
    }
        .auto-style15 {
            width: 170px;
            height: 8px;
        text-align: left;
            font-weight: bold;
            font-style: normal;
        }
        .auto-style16 {
            height: 8px;
        }
        .auto-style19 {
            width: 170px;
            height: 26px;
            text-align: left;
            font-weight: bold;
            font-style: normal;
        }
        .auto-style20 {
            height: 26px;
        }
        .auto-style37 {
            width: 192px;
        }
        .auto-style22 {
            height: 21px;
        }
        .auto-style36 {
            width: 170px;
            text-align: left;
            font-weight: bold;
            font-style: normal;
            height: 34px;
        }
        .auto-style21 {
            width: 170px;
            height: 21px;
            text-align: left;
            font-weight: bold;
            font-style: normal;
        }
        .auto-style24 {
            height: 22px;
        }
        .auto-style23 {
            width: 170px;
            height: 22px;
        text-align: left;
            font-weight: bold;
            font-style: normal;
        }
        .auto-style26 {
            height: 20px;
        }
        .auto-style25 {
            width: 170px;
            height: 20px;
        text-align: left;
            font-weight: bold;
            font-style: normal;
        }
        .auto-style28 {
            height: 23px;
        }
        .auto-style27 {
            width: 170px;
            height: 23px;
        text-align: left;
            font-weight: bold;
            font-style: normal;
        }
        .auto-style38 {
            width: 436px;
        }
        .auto-style39 {
            height: 34px;
        }
        .auto-style41 {
            width: 170px;
            height: 8px;
            text-align: left;
            font-weight: bold;
            font-style: normal;
            color: #000066;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style12" style="vertical-align: middle; text-align: center; font-weight: bold; font-size: x-large;">
    <tr>
        <td style="font-style: italic"><span class="auto-style32">Online Food Cart<br />
            sign up<br />
            </span>
            <table class="auto-style5">
                <tr>
                    <td class="auto-style38">&nbsp;</td>
                    <td>
            <table class="auto-style12" style="font-weight: normal; font-size: large; text-align: left; font-style: italic;">
                <tr>
                    <td class="auto-style41">Full Name</td>
                    <td class="auto-style16">
                        <asp:TextBox ID="TextBox1" runat="server" Width="192px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="#FF3300" SetFocusOnError="True" style="font-size: medium"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style19">Gender&nbsp;&nbsp; </td>
                    <td class="auto-style20">
                        <table class="auto-style5">
                            <tr>
                                <td class="auto-style37">
                                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" Width="216px">
                                        <asp:ListItem>Male</asp:ListItem>
                                        <asp:ListItem>Female</asp:ListItem>
                                        <asp:ListItem>Other</asp:ListItem>
                                    </asp:RadioButtonList>
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="RadioButtonList1" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True" style="font-size: medium"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style19">D.O.B</td>
                    <td class="auto-style22">
                        <asp:TextBox ID="TextBox6" runat="server" Width="192px" TextMode="Date"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox6" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True" style="font-size: medium"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style36">Mobile Number<td class="auto-style39">
                        <asp:TextBox ID="TextBox4" runat="server" Width="192px" MaxLength="10"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="TextBox4" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True" style="font-size: medium"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="TextBox4" ErrorMessage="Please Enter a Valid Nmber" ForeColor="Red" SetFocusOnError="True" style="font-size: medium" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style21">E-mail</td>
                    <td>

                        <asp:TextBox ID="TextBox5" runat="server" style="margin-right: 0px" Width="192px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox5" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True" style="font-size: medium"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox5" ErrorMessage="Not valid Email" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" style="font-size: medium"></asp:RegularExpressionValidator>

                    </td>
                </tr>
                <tr>
                    <td class="auto-style21">State&nbsp;&nbsp;<td class="auto-style24">
                        <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="DropDownList1" ErrorMessage="*" SetFocusOnError="True" style="color: #FF0000; font-size: medium"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style23">City&nbsp;&nbsp;</td>
                    <td class="auto-style26">
                        <asp:DropDownList ID="DropDownList2" runat="server">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="DropDownList2" ErrorMessage="*" SetFocusOnError="True" style="color: #FF0000; font-size: medium"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style25">Pincode&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                    <td class="auto-style22">
                        <asp:TextBox ID="TextBox10" runat="server" Width="192px" MaxLength="6"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="TextBox10" ErrorMessage="*" SetFocusOnError="True" style="color: #FF0000; font-size: medium"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBox10" ErrorMessage="Please enter valid pin" ForeColor="Red" SetFocusOnError="True" style="font-size: medium" ValidationExpression="[0-9]{6}"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style21">Address &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                    <td class="auto-style28">
                        <asp:TextBox ID="TextBox11" runat="server" TextMode="MultiLine" Width="192px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBox11" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True" style="font-size: medium"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style27">Password<td class="auto-style22">
                        <asp:TextBox ID="TextBox13" runat="server" Width="192px" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox13" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True" style="font-size: medium"></asp:RequiredFieldValidator>

                    </td>
                </tr>
                <tr>
                    <td class="auto-style21">Re-Enter Password</td>
                    <td>
                        <asp:TextBox ID="TextBox14" runat="server" Width="192px" TextMode="Password"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox13" ControlToValidate="TextBox14" ErrorMessage="Password not match" ForeColor="Red" SetFocusOnError="True" style="font-size: medium"></asp:CompareValidator>
                    </td>
                </tr>
            </table>
                        </td>
                </tr>
            </table>
            <br />
                        <asp:Button ID="Button1" runat="server" Text="Sign-up" Width="75px" style="font-weight: 700" OnClick="Button1_Click" />
            &nbsp;<br />
&nbsp;<asp:Label ID="Label1" runat="server" style="color: #FF0000"></asp:Label>
            <br />
            <span class="auto-style30"><em><strong>
            &nbsp;&nbsp; <a href="Login.aspx">Already Registered</strong></em></span><a href="Login.aspx"><span class="auto-style31">?</a>&nbsp;&nbsp; &nbsp;
            <br />
            <span class="auto-style31"> <span class="auto-style34"><a href="ResRege.aspx">Registration for Restaurant??</span></span><br />
        </td>
    </tr>
</table>
</asp:Content>