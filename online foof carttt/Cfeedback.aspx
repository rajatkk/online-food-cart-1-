<%@ Page Title="" Language="C#" MasterPageFile="~/customer.Master" AutoEventWireup="true" CodeBehind="Cfeedback.aspx.cs" Inherits="online_foof_carttt.Cfeedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style16 {
            width: 108%;
        }
        .auto-style18 {
            width: 402px;
        }
        .auto-style19 {
            font-size: xx-large;
            color: #000066;
            width: 535px;
        }
        .auto-style20 {
            width: 129px;
        }
        .auto-style21 {
            width: 535px;
        }
        .auto-style22 {
            width: 281px;
            color: #000099;
            font-weight: bold;
        }
        .auto-style24 {
            color: #3333CC;
        }
        .auto-style25 {
            color: #3366FF;
        }
        .auto-style26 {
            font-size: large;
        }
        .auto-style27 {
            width: 391px;
            height: 33px;
            font-weight: 700;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style16">
        <tr>
            <td class="auto-style27">&nbsp;</td>
            <td class="auto-style19" style="text-align: center; font-weight: 700">Feedback</td>
            <td style="font-weight: 700">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style27">&nbsp;</td>
            <td class="auto-style21">
                <table class="auto-style16">
                    <tr>
                        <td class="auto-style22">Feedback About <span class="auto-style25">ONILNE FOOD CART</span></td>
                        <td class="auto-style20">
                            <asp:TextBox ID="TextBox1" runat="server" Height="51px" TextMode="MultiLine" Width="214px" style="margin-left: 0px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style22">Rateus Out&nbsp; of&nbsp; 5 start </td>
                        <td class="auto-style20" style="vertical-align: middle; text-align: left">
                            <br />
                            <asp:DropDownList ID="DropDownList1" runat="server" Width="113px">
                                <asp:ListItem>1 Star </asp:ListItem>
                                <asp:ListItem>2 Star</asp:ListItem>
                                <asp:ListItem>3 Star</asp:ListItem>
                                <asp:ListItem>4 star </asp:ListItem>
                                <asp:ListItem Value="5 star">5 star</asp:ListItem>
                            </asp:DropDownList>
                            <br />
                            <br />
                            </td>
                    </tr>
                    <tr>
                        <td class="auto-style22">
                            <asp:LinkButton ID="LinkButton1" runat="server" CssClass="auto-style24" OnClick="LinkButton1_Click">How to Rateus Check Here:-</asp:LinkButton>
                            <br class="auto-style24" />
                            <asp:Label ID="Label3" runat="server" CssClass="auto-style13" Text="1 Star (worse)"></asp:Label>
                            <br class="auto-style24" />
                            <asp:Label ID="Label4" runat="server" CssClass="auto-style13" Text="2 Star (Bad)"></asp:Label>
                            <br class="auto-style24" />
                            <asp:Label ID="Label5" runat="server" CssClass="auto-style13" Text="3 Star (Not Good NOR Bad)"></asp:Label>
                            <br class="auto-style24" />
                            <asp:Label ID="Label6" runat="server" CssClass="auto-style13" Text="4 Star Good"></asp:Label>
                            <br class="auto-style24" />
                            <asp:Label ID="Label7" runat="server" CssClass="auto-style13" Text="5 Star (Excellent)"></asp:Label>
                        </td>
                        <td class="auto-style20" style="vertical-align: top; text-align: left">
                            <asp:Button ID="Button1" runat="server" Text="GIVE Feedback" OnClick="Button1_Click" style="font-weight: 700" Width="124px" />
                            <br />
                            <br />
                            <asp:Label ID="Label2" runat="server" style="font-weight: 700; color: #FF0000"></asp:Label>
                            <br />
                            <br />
                            <br />
                            <strong><span class="auto-style26"><a href="viewFdbck.aspx">View Feedback</a></span></strong></td>
                    </tr>
                </table>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
