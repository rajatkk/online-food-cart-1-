<%@ Page Title="" Language="C#" MasterPageFile="~/customer.Master" AutoEventWireup="true" CodeBehind="orderdetails.aspx.cs" Inherits="online_foof_carttt.orderdetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style18 {
            width: 601px;
            text-align: center;
        }
        .auto-style19 {
            width: 378px;
        }
        .auto-style20 {
            width: 601px;
            text-align: center;
            font-size: xx-large;
            color: #000066;
        }
        .auto-style29 {
            width: 100%;
        }
        .auto-style30 {
            text-align: center;
            width: 653px;
        }
        .auto-style31 {
            text-align: center;
            font-size: xx-large;
            color: #000066;
            width: 653px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <table class="auto-style29">
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style31"><strong>Your order</strong></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style30">
                <asp:Image ID="Image1" runat="server" Height="115px" ImageUrl="~/image/empty-box.png" Width="129px" />
                            <br />
                <asp:Label ID="Label3" runat="server" style="font-weight: 700; color: #003366; font-size: large;" Text="Your order list is Empty!"></asp:Label>
                        <br />
                <asp:GridView ID="GridView8" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" Width="657px" OnRowDeleting="GridView8_RowDeleting">
                    <AlternatingRowStyle BackColor="Gainsboro" />
                    <Columns>
                        <asp:BoundField DataField="orderID" HeaderText="Order ID" />
                        <asp:BoundField DataField="FoodID" HeaderText="Food id" />
                        <asp:BoundField DataField="Foodname" HeaderText="FOOD Name" />
                        <asp:BoundField DataField="Quantity" HeaderText="Quantity" />
                        <asp:BoundField DataField="price" HeaderText="Price" />
                        <asp:ButtonField CommandName="Delete" Text="Cancel order" />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#0000A9" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#000065" />
                </asp:GridView>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style30">
                <asp:Label ID="Label2" runat="server" Text="" style="color: #FF0000; font-weight: 700"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style30">
                <strong><a href="trackorder.aspx">Track Order</a></strong></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style30"><strong><a href="cancelorder.aspx">View Cancel Order</a></strong></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style30">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    
</asp:Content>
