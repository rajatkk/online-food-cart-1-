<%@ Page Title="" Language="C#" MasterPageFile="~/customer.Master" AutoEventWireup="true" CodeBehind="Cchangepassword.aspx.cs" Inherits="online_foof_carttt.Cchangepassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style17 {
            color: #000066;
            text-align: center;
        }
        .auto-style18 {
            width: 123px;
            height: 63px;
        }
        .auto-style19 {
            width: 475px;
        }
        .auto-style20 {
            width: 139px;
            text-align: right;
        }
        .auto-style22 {
            color: #0000FF;
        }
        .auto-style23 {
            width: 100%;
        }
        .auto-style24 {
            width: 417px;
        }
        .auto-style25 {
            width: 187px;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
   
    
        <h1 class="auto-style17">Change Password&nbsp;&nbsp;&nbsp;&nbsp; </h1>
        <table class="auto-style23">
            <tr>
                <td class="auto-style24">&nbsp;</td>
                <td>
                    <table class="auto-style23">
                        <tr>
                            <td class="auto-style25">
                                <asp:Label ID="Label6" runat="server" style="font-weight: 700; font-size: large; color: #0000CC">Old Password</asp:Label>
                                </td>
                            <td>
                                <asp:TextBox ID="TextBox1" runat="server" Width="167px" TextMode="Password"></asp:TextBox>
                                <asp:Label ID="Label4" runat="server" style="font-weight: 700; font-size: large; color: #FF0000"></asp:Label>
                                <br />
                                <asp:Button ID="Button1" runat="server" style="font-weight: 700" Text="Submit" OnClick="Button1_Click" />
                                <br />
                                </td>
                        </tr>
                        <tr>
                            <td class="auto-style25">
                                <strong>
                                <asp:Label ID="Label2" runat="server" style="font-weight: 700; font-size: large; color: #0000CC" Text="New Password"></asp:Label>
                                </strong></td>
                            <td>
                                <asp:TextBox ID="TextBox2" runat="server" Width="167px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True" style="color: #FF0000"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style25">&nbsp;</td>
                            <td>
                                <asp:Button ID="Button2" runat="server" style="font-weight: 700" Text="Change Password" OnClick="Button2_Click" Width="128px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style25">&nbsp;</td>
                            <td>
                    <asp:Label ID="Label5" runat="server" style="font-weight: 700; font-size: large; color: #FF0000"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style25">&nbsp;</td>
                            <td>
                                <span class="auto-style22"><strong><em><a href="CMyProfile.aspx">Back??</a></em></strong></span></td>
                        </tr>
                    </table>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style24">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                
                <td class="auto-style24">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
       
   
   
</asp:Content>


