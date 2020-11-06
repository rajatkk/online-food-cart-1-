<%@ Page Title="" Language="C#" MasterPageFile="~/Master2.Master" AutoEventWireup="true" CodeBehind="Rchangepass.aspx.cs" Inherits="online_foof_carttt.Rchangepass" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style26 {
            text-align: center;
            color: #000066;
            font-size: x-large;
        }
        .auto-style18 {
            width: 102%;
        }
        .auto-style20 {
            width: 139px;
            text-align: right;
        }
        .auto-style27 {
            width: 465px;
            height: 16px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style26">
        <strong>Change Password</strong></p>
        <table class="auto-style18">
            <tr>
                <td class="auto-style27">&nbsp;</td>
                <td>
                    <table class="auto-style18">
                        <tr>
                            <td class="auto-style21">
                                <asp:Label ID="Label6" runat="server" style="font-weight: 700; font-size: large; color: #0000CC">Old Password</asp:Label>
                                <strong>&nbsp;<br />
                                <asp:Label ID="Label2" runat="server" style="font-weight: 700; font-size: large; color: #0000CC" Text="New Password"></asp:Label>
                                </strong></td>
                            <td>
                                <asp:TextBox ID="TextBox1" runat="server" Width="167px" TextMode="Password"></asp:TextBox>
                                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="font-weight: 700" Text="Submit" />
                            &nbsp;<asp:Label ID="Label4" runat="server" style="font-weight: 700; font-size: large; color: #FF0000"></asp:Label>
                                <br />
                                <asp:TextBox ID="TextBox2" runat="server" Width="167px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style20">&nbsp;</td>
                            <td>
                                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" style="font-weight: 700" Text="Change Password" Width="129px" />
                            &nbsp;<br />
                                <span class="auto-style22"><strong><em><a href="Rprofile.aspx">Back??</a></em></strong></span></td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="auto-style27">&nbsp;</td>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label5" runat="server" style="font-weight: 700; font-size: xx-large; color: #FF0000"></asp:Label>
                </td>
            </tr>
        </table>
   
   
</asp:Content>
