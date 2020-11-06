<%@ Page Title="" Language="C#" MasterPageFile="~/Master2.Master" AutoEventWireup="true" CodeBehind="Rfeedback.aspx.cs" Inherits="online_foof_carttt.Rfeedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style26 {
            width: 100%;
        }
        .auto-style27 {
            font-size: xx-large;
        }
        .auto-style13 {
            color: #000000;
        }
        .auto-style28 {
            color: #000000;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style26">
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style27" style="font-weight: 700; text-align: center">Feedback</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <table class="auto-style26">
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <table class="auto-style26">
                                <tr>
                                    <td><b>Feedback About </b> <span class="auto-style28">ONILNE FOOD CART</span></td>
                                    <td>
                            <asp:TextBox ID="TextBox1" runat="server" Height="51px" TextMode="MultiLine" Width="214px" style="margin-left: 0px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td><b>Rateus Out&nbsp; of&nbsp; 5 start</b></td>
                                    <td>
                            <asp:DropDownList ID="DropDownList1" runat="server" Width="113px">
                                <asp:ListItem>1 Star </asp:ListItem>
                                <asp:ListItem>2 Star</asp:ListItem>
                                <asp:ListItem>3 Star</asp:ListItem>
                                <asp:ListItem>4 star </asp:ListItem>
                                <asp:ListItem Value="5 star">5 star</asp:ListItem>
                            </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td><b>
                                        <asp:LinkButton ID="LinkButton1" runat="server">How to Rateus Check Here:-</asp:LinkButton>
                            <br class="auto-style24" />
                                        </b>-<b><asp:Label ID="Label3" runat="server" CssClass="auto-style13" Text="1 Star (worse)"></asp:Label>
                            <br class="auto-style24" />
                                        </b>-<b><asp:Label ID="Label4" runat="server" CssClass="auto-style13" Text="2 Star (Bad)"></asp:Label>
                            <br class="auto-style24" />
                                        </b>-<b><asp:Label ID="Label5" runat="server" CssClass="auto-style13" Text="3 Star (Not Good NOR Bad)"></asp:Label>
                            <br class="auto-style24" />
                                        </b>-<b><asp:Label ID="Label6" runat="server" CssClass="auto-style13" Text="4 Star Good"></asp:Label>
                            <br class="auto-style24" />
                                        </b>-<b><asp:Label ID="Label7" runat="server" CssClass="auto-style13" Text="5 Star (Excellent)"></asp:Label>
                                        </b></td>
                                    <td>
                                        <asp:Button ID="Button2" runat="server" style="font-weight: 700" Text="Button" />
                                    </td>
                                </tr>
                                <tr>
                                    <td><b></b></td>
                                    <td>
                            <strong><span class="auto-style26"><a href="viewFdbck.aspx">View Feedback</a></span></strong></td>
                                </tr>
                            </table>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
