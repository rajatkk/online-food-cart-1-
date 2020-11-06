<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="aboutus.aspx.cs" Inherits="online_foof_carttt.aboutus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style17 {
            font-size: xx-large;
            color: #000066;
            width: 402px;
        }
        .auto-style19 {
            font-size: x-large;
            color: #003366;
        }
        .auto-style23 {
            height: 289px;
        }
        .auto-style26 {
            width: 399px;
            text-align: center;
            font-size: x-large;
            color: #003366;
        }
        .auto-style27 {
            width: 402px;
            text-align: center;
            font-weight: 700;
            font-size: x-large;
            color: #003366;
        }
        .auto-style28 {
            font-size: large;
        }
        .auto-style29 {
            width: 402px;
            height: 289px;
        }
        .auto-style30 {
            width: 402px;
            text-align: center;
        }
        .auto-style31 {
            width: 399px;
            text-align: center;
        }
        .auto-style32 {
            width: 399px;
            height: 289px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table border="1" class="auto-style5">
        <tr>
            <td class="auto-style31">&nbsp;</td>
            <td class="auto-style17" style="text-align: center"><strong>About us</strong></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style26"><strong>Browse</strong></td>
            <td class="auto-style27">Order</td>
            <td class="auto-style19" style="text-align: center"><strong>Track Order</strong></td>
        </tr>
        <tr>
            <td class="auto-style32">
                <asp:Image ID="Image2" runat="server" Height="280px" ImageUrl="~/image/browse.gif" Width="397px" />
            </td>
            <td class="auto-style29">
                <asp:Image ID="Image3" runat="server" Height="282px" ImageUrl="~/image/order.gif" Width="400px" />
            </td>
            <td class="auto-style23">
                <asp:Image ID="Image1" runat="server" Height="285px" ImageUrl="~/image/track.gif" Width="429px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style31"><span class="auto-style28">Online Food Cart</span><br class="auto-style28" />
                <span class="auto-style28">has Hundreds o Restaurants to choose</span><br class="auto-style28" />
                <span class="auto-style28">when YOu opne app, you can scroll through the Feed</span><br class="auto-style28" />
                <span class="auto-style28">for inspiration Or search For Particular restaurant or </span>
                <br class="auto-style28" />
                <span class="auto-style28">cuisine. When you find something you like,tap to </span>
                <br class="auto-style28" />
                <span class="auto-style28">add it to your cart.</span></td>
            <td class="auto-style30"><span class="auto-style28">When you&#39;re Redy to check out ,
                <br />
                you&#39;ll see Your address and your Registerd Phone number.</span><br class="auto-style28" />
                <span class="auto-style28">Here you can apply the Promocode to get the discount</span><br class="auto-style28" />
                <span class="auto-style28">when Everthing is going to </span>
                <br class="auto-style28" />
                <span class="auto-style28">Right Then pLace the Order.</span><br class="auto-style28" />
&nbsp;</td>
            <td style="text-align: center"><span class="auto-style28">As Follow Your Order in the Application</span><br class="auto-style28" />
                <span class="auto-style28">First you&#39;ll see the restautrant accept the order.</span><br class="auto-style28" />
                <span class="auto-style28">And</span><br class="auto-style28" />
                <span class="auto-style28">then you&#39;ll see that restaurant start the prepration</span><br class="auto-style28" />
                <span class="auto-style28">on your order,.</span><br class="auto-style28" />
                <span class="auto-style28">After the preprationYour order is going to hand over to the delivery man.</span><br class="auto-style28" />
                <span class="auto-style28">with in a few minitues you order is placed at you Address by the Delivery man.</span></td>
        </tr>
    </table>
</asp:Content>
