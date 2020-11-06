<%@ Page Title="" Language="C#" MasterPageFile="~/customer.Master" AutoEventWireup="true" CodeBehind="CMyProfile.aspx.cs" Inherits="online_foof_carttt.CMyProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style15 {
            color: #3333FF;
            font-size: xx-large;
        }
        .auto-style38 {
            width: 408px;
            color: #000066;
            font-size: xx-large;
        }
        .auto-style19 {
            width: 128px;
            height: 26px;
            text-align: left;
            font-weight: bold;
            font-style: normal;
            color: #000000;
        }
        .auto-style22 {
            height: 21px;
            color: #000000;
            font-style: normal;
            width: 366px;
        }
        .auto-style36 {
            width: 128px;
            text-align: left;
            font-weight: bold;
            font-style: normal;
            height: 34px;
            color: #000000;
        }
        .auto-style39 {
            height: 34px;
            color: #000000;
        font-style: normal;
            width: 366px;
        }
        .auto-style21 {
            width: 128px;
            height: 21px;
            text-align: left;
            font-weight: bold;
            font-style: normal;
            color: #000000;
        }
        .auto-style23 {
            width: 128px;
            height: 22px;
        text-align: left;
            font-weight: bold;
            font-style: normal;
            color: #000000;
        }
        .auto-style26 {
            height: 20px;
            color: #000000;
        font-style: normal;
            width: 366px;
        }
        .auto-style25 {
            width: 128px;
            height: 20px;
        text-align: left;
            font-weight: bold;
            font-style: normal;
            color: #000000;
        }
        .auto-style28 {
            height: 23px;
            color: #000000;
        font-style: normal;
            width: 366px;
        }
        .auto-style27 {
            width: 128px;
            height: 23px;
        text-align: left;
            font-weight: bold;
            font-style: normal;
            color: #000000;
        }
        .auto-style42 {
            color: #000000;
            height: 33px;
            width: 128px;
        font-weight: 700;
    }
        .auto-style43 {
            height: 33px;
            font-style: normal;
            width: 366px;
        }
        .auto-style44 {
        font-style: normal;
    }
    .auto-style45 {
        color: #000000;
        font-style: normal;
            width: 366px;
        }
        .auto-style46 {
            width: 113%;
        }
        .auto-style47 {
            width: 652px;
            text-align: right;
        }
        .auto-style48 {
            width: 617px;
        }
        .auto-style49 {
            width: 44px;
        }
        .auto-style50 {
            font-style: normal;
            width: 366px;
        }
        .auto-style51 {
        color: #000000;
        height: 33px;
        width: 128px;
        font-weight: 700;
        font-style: normal;
    }
        .auto-style53 {
            font-size: larger;
        }
        .auto-style54 {
            width: 100%;
        }
        .auto-style55 {
            width: 542px;
        }
        .auto-style56 {
            font-size: large;
            color: #000066;
        }
        .auto-style57 {
            background-color: #000000;
            color: #FFFFFF;
        }
        .auto-style58 {
            color: #0033CC;
            background-color: #FFFF99;
        }
        .auto-style59 {
        background-color: #FFFFFF;
        font-size: x-large;
        text-decoration: underline;
        color: #0000FF;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            <span class="auto-style59"><strong><a href="CSignout.aspx">sign out</a></strong></span><table class="auto-style5" style="background-color: #FFFF99">
                <tr>
                    <td class="auto-style38" style="vertical-align: middle; text-align: center">
                        <h1 class="auto-style53"><strong>Your Profile</strong></h1>
                    </td>
                    <td>
            <table class="auto-style12" style="font-weight: normal; font-size: large; text-align: left; font-style: italic; width: 733px; margin-left: 0px;">
                <tr>
                    <td class="auto-style51">Customer id</td>
                    <td class="auto-style43">
                        <asp:Label ID="Label1" runat="server" style="font-weight: 700; color: #333399"></asp:Label>
                        </td>
                </tr>
               
                <tr>
                    <td class="auto-style42"><span class="auto-style44"><strong>Full Name</strong></span></td>
                    <td class="auto-style43">
                        <asp:Label ID="Label2" runat="server" style="font-weight: 700; color: #333399"></asp:Label>
                        <asp:TextBox ID="TextBox1" runat="server" Width="151px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
               
                <tr>
                    <td class="auto-style19">Gender</td>
                    <td class="auto-style50">
                        <table class="auto-style46">
                            <tr>
                                <td class="auto-style49">
                        <asp:Label ID="Label3" runat="server" style="font-weight: 700; color: #333399"></asp:Label>
                               
                                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" Width="254px">
                                        <asp:ListItem>Male</asp:ListItem>
                                        <asp:ListItem>Female</asp:ListItem>
                                        <asp:ListItem>Others</asp:ListItem>
                                    </asp:RadioButtonList>
                                    </td><td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="RadioButtonList1" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                        </table>
                        </td>               

                </tr>
               
                <tr>
                    <td class="auto-style19">Mobile Number</td>
                    <td class="auto-style50">
                        <asp:Label ID="Label4" runat="server" style="font-weight: 700; color: #333399"></asp:Label>
                        <asp:TextBox ID="TextBox2" runat="server" Width="151px" MaxLength="10"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Not Valid Number" style="color: #FF0000" ControlToValidate="TextBox2" SetFocusOnError="True" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                        </td>   
                               

                </tr>
                <tr>
                    <td class="auto-style36">E-mail<td class="auto-style39">
                        <asp:Label ID="Label5" runat="server" style="font-weight: 700; color: #333399"></asp:Label>
                        </td>
                </tr>
                <tr>
                    <td class="auto-style23">D.O.B</td>
                    <td class="auto-style26">
                        <asp:Label ID="Label6" runat="server" style="font-weight: 700; color: #333399"></asp:Label>
                        <asp:TextBox ID="TextBox3" runat="server" Width="151px" TextMode="Date"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox3" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                </tr>
                <tr>
                    <td class="auto-style25">State</td>
                    <td class="auto-style22">
                        <asp:Label ID="Label7" runat="server" style="font-weight: 700; color: #333399"></asp:Label>
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                        </asp:DropDownList>
                        </td>
                </tr>
                <tr>
                    <td class="auto-style21">City</td>
                    <td class="auto-style28">
                        <asp:Label ID="Label8" runat="server" style="font-weight: 700; color: #333399"></asp:Label>
                        <asp:DropDownList ID="DropDownList2" runat="server">
                        </asp:DropDownList>
                        </td>
                </tr>
                <tr>
                    <td class="auto-style27">Pincode<td class="auto-style22">
                        <asp:Label ID="Label9" runat="server" style="font-weight: 700; color: #333399"></asp:Label>
                        <asp:TextBox ID="TextBox6" runat="server" Width="151px" OnTextChanged="TextBox6_TextChanged" MaxLength="6"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox6" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Not Valid Pin" style="color: #FF0000" ControlToValidate="TextBox6" SetFocusOnError="True" ValidationExpression="[0-9]{6}"></asp:RegularExpressionValidator>
                        </td>
                </tr>
                <tr>
                    <td class="auto-style21">Address</td>
                    <td class="auto-style45">
                        <asp:Label ID="Label10" runat="server" style="font-weight: 700; color: #333399"></asp:Label>
                        <asp:TextBox ID="TextBox7" runat="server" Width="151px" TextMode="MultiLine"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox7" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                </tr>
            </table>
                        </td>
                </tr>
            </table>
    <table class="auto-style46">
        <tr>
            <td class="auto-style47">
                <asp:LinkButton ID="LinkButton1" runat="server" style="text-align: right" OnClick="LinkButton1_Click">Edit Profile</asp:LinkButton>
            </td>
            <td>
                        <asp:Label ID="Label11" runat="server" style="font-weight: 700; color: #FF0000"></asp:Label>
                        </td>
        </tr>
    </table>
    <table class="auto-style46">
        <tr>
            <td class="auto-style48" style="text-align: right">
                <asp:Button ID="Button1" runat="server" style="font-weight: 700; margin-left: 0px;" Text="Save" Width="56px" OnClick="Button1_Click" />
            </td>
            <td style="font-weight: 700">
                <asp:Button ID="Button2" runat="server" style="font-weight: 700" Text="Cancel" OnClick="Button2_Click" />
            </td>
        </tr>
    </table>
            <table class="auto-style54">
                <tr>
                    <td class="auto-style55">&nbsp;</td>
                    <td class="auto-style56"><strong><span class="auto-style57"><a class="auto-style14" href="Cchangepassword.aspx"><em><span class="auto-style58">Change password??</span></em></a></span></strong></td>
                </tr>
                <tr>
                    <td class="auto-style55">&nbsp;</td>
                    <td class="auto-style56"><strong><a class="auto-style14" href="Cfeedback.aspx">Give Feedback</a></strong></td>
                </tr>
            </table>
    <br>
            </asp:Content>
