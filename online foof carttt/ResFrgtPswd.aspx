<%@ Page Title="" Language="C#" MasterPageFile="~/Master2.Master" AutoEventWireup="true" CodeBehind="ResFrgtPswd.aspx.cs" Inherits="online_foof_carttt.ResFrgtPswd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style14 {
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style14" style="text-align: center; color: #000066; font-weight: 700">
        Forget Password</p>
    <p class="auto-style14" style="text-align: center; color: #000000; font-weight: 700; font-style: italic">
        Restaurant id
    </p>
    <p class="auto-style14" style="text-align: center; color: #000000; font-weight: 700; font-style: italic">
        <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged" Width="190px"></asp:TextBox>
    </p>
    <p class="auto-style14" style="text-align: center; color: #000000; font-weight: 700; font-style: italic">
        Registerd Mobile Number</p>
    <p class="auto-style14" style="text-align: center; color: #000000; font-weight: 700; font-style: italic">
        <asp:TextBox ID="TextBox2" runat="server" Width="190px"></asp:TextBox>
    </p>
    <p class="auto-style14" style="text-align: center; color: #000000; font-weight: 700; font-style: italic">
        <asp:Button ID="Button1" runat="server" style="font-weight: 700" Text="Submit" />
    </p>
    <p class="auto-style14" style="text-align: center; color: #000000; font-weight: 700; font-style: italic">
        <a href="res_login.aspx">Back?</a></p>
    <p class="auto-style14" style="text-align: center; color: #000000; font-weight: 700; font-style: italic">
        &nbsp;</p>
</asp:Content>
