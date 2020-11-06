<%@ Page Title="" Language="C#" MasterPageFile="~/customer.Master" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="online_foof_carttt.image.about" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style21 {
        width: 100%;
    }
    .auto-style22 {
        text-align: center;
        font-weight: bold;
        font-size: xx-large;
        width: 428px;
    }
    .auto-style23 {
        text-align: center;
        font-weight: bold;
        font-size: xx-large;
        color: #000066;
        width: 428px;
    }
    .auto-style24 {
        text-align: center;
        font-weight: bold;
        font-size: x-large;
    }
    .auto-style25 {
        text-align: center;
        width: 420px;
    }
    .auto-style26 {
        text-align: center;
        font-size: x-large;
        color: #003366;
        width: 420px;
    }
    .auto-style27 {
        text-align: center;
        font-weight: bold;
        font-size: x-large;
        width: 428px;
    }
    .auto-style28 {
        font-size: large;
    }
    .auto-style29 {
        text-align: center;
        font-size: xx-large;
        width: 428px;
    }
    .auto-style30 {
        text-align: center;
        font-size: x-large;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <table class="auto-style21">
    <tr>
        <td class="auto-style25">&nbsp;</td>
        <td class="auto-style23">About us</td>
        <td class="auto-style24">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style26"><strong>Browse</strong></td>
        <td class="auto-style27">Order</td>
        <td class="auto-style24">Track</td>
    </tr>
    <tr>
        <td class="auto-style25">
            <asp:Image ID="Image2" runat="server" Height="280px" ImageUrl="~/image/browse.gif" Width="414px" />
        </td>
        <td class="auto-style22">
            <asp:Image ID="Image3" runat="server" Height="282px" ImageUrl="~/image/order.gif" Width="424px" />
        </td>
        <td class="auto-style24">
            <asp:Image ID="Image1" runat="server" Height="285px" ImageUrl="~/image/track.gif" Width="457px" />
        </td>
    </tr>
    <tr>
        <td class="auto-style25"><span class="auto-style28">Online Food Cart</span><br class="auto-style28" />
            <span class="auto-style28">has Hundreds o Restaurants to choose</span><br class="auto-style28" />
            <span class="auto-style28">when YOu opne app, you can scroll through the Feed</span><br class="auto-style28" />
            <span class="auto-style28">for inspiration Or search For Particular restaurant or </span>
            <br class="auto-style28" />
            <span class="auto-style28">cuisine. When you find something you like,tap to </span>
            <br class="auto-style28" />
            <span class="auto-style28">add it to your cart.</span></td>
        <td class="auto-style29"><span class="auto-style28">When you&#39;re Redy to check out ,
            <br />
            you&#39;ll see Your address and your Registerd Phone number.</span><br class="auto-style28" />
            <span class="auto-style28">Here you can apply the Promocode to get the discount</span><br class="auto-style28" />
            <span class="auto-style28">when Everthing is going to </span>
            <br class="auto-style28" />
            <span class="auto-style28">Right Then pLace the Order.</span></td>
        <td class="auto-style30"><span class="auto-style28">As Follow Your Order in the Application</span><br class="auto-style28" />
            <span class="auto-style28">First you&#39;ll see the restautrant accept the order.</span><br class="auto-style28" />
            <span class="auto-style28">And</span><br class="auto-style28" />
            <span class="auto-style28">then you&#39;ll see that restaurant start the prepration</span><br class="auto-style28" />
            <span class="auto-style28">on your order,.</span><br class="auto-style28" />
            <span class="auto-style28">After the preprationYour order is going to hand over to the delivery man.</span><br class="auto-style28" />
            <span class="auto-style28">with in a few minitues you order is placed at you Address by the Delivery man.</span></td>
    </tr>
</table>
</asp:Content>

