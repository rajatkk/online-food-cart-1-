<%@ Page Title="" Language="C#" MasterPageFile="~/Master2.Master" AutoEventWireup="true" CodeBehind="Rprofile.aspx.cs" Inherits="online_foof_carttt.Rprofile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style26 {
            width: 100%;
        }
        .auto-style46 {
            width: 128%;
        }
        .auto-style47 {
            width: 666px;
            text-align: right;
        }
        .auto-style48 {
            width: 667px;
        }
        .auto-style54 {
            width: 100%;
        }
        .auto-style55 {
            width: 591px;
        }
        .auto-style56 {
            font-size: large;
            color: #000066;
        }
        .auto-style57 {
            background-color: #000000;
            color: #FFFFFF;
        }
        .auto-style14 {
            text-decoration: none;
        }
        .auto-style58 {
            color: #0033CC;
            background-color: #FFFF99;
        }
        .auto-style59 {
            width: 453px;
        }
        .auto-style60 {
            width: 207px;
            font-weight: bold;
            color: #000066;
        }
        .auto-style61 {
            color: #660033;
        }
        .auto-style62 {
            text-align: center;
            font-size: xx-large;
        }
        .auto-style63 {
            color: #000066;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style62">
        <span class="auto-style63"><strong>My profile</strong></span>
    </p>
    <table class="auto-style26">
        <tr>
            <td class="auto-style59">&nbsp;</td>
            <td>
                <table class="auto-style26">
                    <tr>
                        <td class="auto-style60" style="font-size: large; text-align: left">Restaurant ID</td>
                        <td>
                            <asp:Label ID="Label2" runat="server" CssClass="auto-style61" style="font-weight: 700"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style60" style="font-size: large; text-align: left">Restaurant Name</td>
                        <td class="auto-style61">
                            <asp:Label ID="Label3" runat="server" CssClass="auto-style61" style="font-weight: 700"></asp:Label>
                            <asp:TextBox ID="TextBox1" runat="server" Width="151px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style60" style="font-size: large; text-align: left">Restaurant Owner&#39;s Name</td>
                        <td class="auto-style61">
                            <asp:Label ID="Label4" runat="server" CssClass="auto-style61" style="font-weight: 700"></asp:Label>
                            <asp:TextBox ID="TextBox2" runat="server" Width="151px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style60" style="font-size: large; text-align: left">Restaurant Type</td>
                        <td class="auto-style61">
                            <asp:Label ID="Label5" runat="server" CssClass="auto-style61" style="font-weight: 700"></asp:Label>
                            <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" Width="198px">
                                <asp:ListItem>veg</asp:ListItem>
                                <asp:ListItem>non veg</asp:ListItem>
                                <asp:ListItem>both</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style60" style="font-size: large; text-align: left">Mobile Number</td>
                        <td class="auto-style61">
                            <asp:Label ID="Label6" runat="server" CssClass="auto-style61" style="font-weight: 700"></asp:Label>
                            <asp:TextBox ID="TextBox4" runat="server" Width="151px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style60" style="font-size: large; text-align: left">Email-Id</td>
                        <td class="auto-style61">
                            <asp:Label ID="Label7" runat="server" CssClass="auto-style61" style="font-weight: 700"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style60" style="font-size: large; text-align: left">City </td>
                        <td class="auto-style61">
                            <asp:Label ID="Label8" runat="server" CssClass="auto-style61" style="font-weight: 700"></asp:Label>
                            <asp:TextBox ID="TextBox5" runat="server" Width="151px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style60" style="font-size: large; text-align: left">State</td>
                        <td class="auto-style61">
                            <asp:Label ID="Label9" runat="server" CssClass="auto-style61" style="font-weight: 700"></asp:Label>
                            <asp:TextBox ID="TextBox6" runat="server" Width="151px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style60" style="font-size: large; text-align: left">Pincode</td>
                        <td class="auto-style61">
                            <asp:Label ID="Label10" runat="server" CssClass="auto-style61" style="font-weight: 700"></asp:Label>
                            <asp:TextBox ID="TextBox7" runat="server" Width="151px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style60" style="font-size: large; text-align: left">Full Address</td>
                        <td class="auto-style61">
                            <asp:Label ID="Label11" runat="server" CssClass="auto-style61" style="font-weight: 700"></asp:Label>
                            <asp:TextBox ID="TextBox8" runat="server" Width="151px"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    <table class="auto-style46">
        <tr>
            <td class="auto-style47">
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Edit Profile</asp:LinkButton>
            </td>
            <td>
                <asp:Label ID="Label1" runat="server" style="font-weight: 700; color: #FF0000"></asp:Label>
            </td>
        </tr>
    </table>
    <table class="auto-style46">
        <tr>
            <td class="auto-style48" style="text-align: right">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="font-weight: 700" Text="Save" Width="65px" />
            </td>
            <td style="font-weight: 700">
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" style="font-weight: 700" Text="Cancel" />
            </td>
        </tr>
    </table>
    <table class="auto-style54">
        <tr>
            <td class="auto-style55">&nbsp;</td>
            <td class="auto-style56"><strong><span class="auto-style57"><a class="auto-style14" href="Rchangepass.aspx"><em><span class="auto-style58">Change password??</span></em></a></span></strong></td>
        </tr>
        <tr>
            <td class="auto-style55">&nbsp;</td>
            <td class="auto-style56"><a href="Cfeedback.aspx">Give Feedback</a></td>
        </tr>
    </table>
    <br>
</asp:Content>
