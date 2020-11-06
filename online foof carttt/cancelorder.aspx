<%@ Page Title="" Language="C#" MasterPageFile="~/customer.Master" AutoEventWireup="true" CodeBehind="cancelorder.aspx.cs" Inherits="online_foof_carttt.cancelorder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style16 {
            width: 100%;
        }
        .auto-style17 {
            width: 311px;
        }
        .auto-style18 {
            width: 709px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style16">
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style18" style="font-size: xx-large; text-align: center; font-weight: 700; color: #000066">Your Cancel Orders</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style18">
                <asp:Image ID="Image1" runat="server" Height="115px" ImageUrl="~/image/empty-box.png" Width="129px" />
                <br />
                <asp:Label ID="Label2" runat="server" style="font-weight: 700; font-size: large; color: #003366" Text="No Cancel Orders"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style18">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" style="font-weight: 700; text-align: center; height: 150px">
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                    <Columns>
                        <asp:BoundField DataField="orderID" HeaderText="Order ID" />
                        <asp:BoundField DataField="FoodID" HeaderText="Food ID" />
                        <asp:BoundField DataField="Foodname" HeaderText="Food Name" />
                        <asp:BoundField DataField="Quantity" HeaderText="Quantity" />
                        <asp:BoundField DataField="price" HeaderText="Price" />
                        <asp:BoundField DataField="email" HeaderText="Email" />
                        <asp:BoundField DataField="Restaurant" HeaderText="Restaurant Name" />
                        <asp:BoundField DataField="Adrs" HeaderText="Your Address" />
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
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style18"><a href="orderdetails.aspx">Back</a></td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
