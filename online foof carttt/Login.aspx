<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="online_foof_carttt.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style14 {
        width: 100%;
    }
    .auto-style15 {
        color: #000000;
    }
    .auto-style16 {
        color: #0000FF;
    }
        .auto-style17 {
            color: #000000;
        }
        .auto-style19 {
            width: 468px;
        }
        .auto-style20 {
            width: 163px;
        }
        .auto-style21 {
            color: #000000;
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p style="vertical-align: middle; text-align: center; font-weight: bold; font-size: xx-large; color: #000099">
        Online Food Cart&nbsp;&nbsp; </p>
<p style="vertical-align: middle; text-align: center; font-weight: bold; font-size: x-large; " class="auto-style17">
    Log in&nbsp;&nbsp;&nbsp; </p>
    <p style="vertical-align: middle; text-align: center; font-weight: bold; " class="auto-style21">
        Email id&nbsp;&nbsp;&nbsp; </p>
<p style="vertical-align: middle; text-align: center; font-weight: bold; font-size: large; " class="auto-style15">
    <asp:TextBox ID="TextBox1" runat="server" Width="185px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
</p>
<p style="vertical-align: middle; text-align: center; font-weight: bold; font-size: large; " class="auto-style17">
    &nbsp;Password&nbsp;&nbsp;&nbsp; </p>
<p style="vertical-align: middle; text-align: center; font-weight: bold; font-size: large; font-style: italic;" class="auto-style15">
    &nbsp;<asp:TextBox ID="TextBox2" runat="server" Width="185px" TextMode="Password"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
</p>
    <p style="vertical-align: middle; text-align: center; font-weight: bold; font-size: large; font-style: italic;" class="auto-style15">
    <asp:Button ID="Button1" runat="server" style="font-weight: 700" Text="Login" Width="71px" OnClick="Button1_Click" />
</p>
    <p style="vertical-align: middle; text-align: center; font-weight: bold; font-size: large; font-style: italic;" class="auto-style15">
    <asp:Label ID="Label1" runat="server" style="color: #FF0000"></asp:Label>
</p>
    <p style="vertical-align: middle; text-align: center; font-weight: bold; font-size: large; font-style: italic;" class="auto-style15">
    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" ValidationGroup="G1">Forget Password ?</asp:LinkButton>
</p>
    <p style="vertical-align: middle; text-align: center; font-weight: bold; font-size: large; font-style: italic;" class="auto-style15">
    <em><a href="regeType.aspx">New Registation??</a></em></p>
    <table class="auto-style5">
        <tr>
            <td class="auto-style19">&nbsp;</td>
            <td>
                <table class="auto-style5">
                    <tr>
                        <td class="auto-style20">
                            <asp:Label ID="Label3" runat="server" style="font-weight: 700; font-size: large" Text="Registerd Email"></asp:Label>
                            <br />
                            <asp:Label ID="Label4" runat="server" style="font-weight: 700; font-size: large" Text="New Password"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox3" runat="server" Width="183px"></asp:TextBox>
                            <br />
                            <asp:TextBox ID="TextBox5" runat="server" Width="183px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style20">
                            <asp:Label ID="Label2" runat="server" style="font-weight: 700; font-size: large" Text="Registerd Mobile No"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox4" runat="server" Width="183px"></asp:TextBox>
                            <asp:Button ID="Button3" runat="server" style="font-weight: 700" Text="Change Password" OnClick="Button3_Click" ValidationGroup="G1" />
                            <asp:Label ID="Label5" runat="server" style="font-weight: 700; color: #FF0000"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style20">&nbsp;</td>
                        <td style="font-weight: 700">
                            <asp:Button ID="Button2" runat="server" style="font-weight: 700" Text="Submit" OnClick="Button2_Click" ValidationGroup="G1" />
                            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" style="font-weight: 700" Text="Cancel" ValidationGroup="G1" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>

</asp:Content>
