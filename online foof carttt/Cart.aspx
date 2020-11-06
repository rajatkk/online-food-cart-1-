<%@ Page Title="" Language="C#" MasterPageFile="~/customer.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="online_foof_carttt.Cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style16 {
        width: 100%;
    }
    .auto-style17 {
        font-size: xx-large;
        color: #000066;
        width: 763px;
    }
        .auto-style24 {
            width: 56px;
            height: 45px;
            color: #000066;
        }
        .auto-style25 {
        width: 763px;
        text-align: center;
    }
        .auto-style26 {
            color: #FF0000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style16">
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style17" style="text-align: center"><strong>Your Cart<img alt="" class="auto-style24" src="image/cartt.png" /></strong></td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style25" style="text-align: center">
                <asp:Image ID="Image1" runat="server" Height="108px" ImageUrl="~/image/empty-box.png" Width="123px" />
                <br />
                <asp:Label ID="Label2" runat="server" style="color: #444B54; font-size: large; font-weight: 700;" Text="Your Cart is Empty"></asp:Label>
                <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" OnRowDeleting="GridView1_RowDeleting" Width="759px">
                <Columns>
                    <asp:BoundField DataField="FoodID" HeaderText="Food ID" />
                    <asp:BoundField DataField="Foodname" HeaderText="Item Name" />
                    <asp:BoundField DataField="Quantity" HeaderText="Quantity" />
                    <asp:BoundField DataField="price" HeaderText="Price" />
                    <asp:BoundField DataField="Restaurant" HeaderText="Restaurant Name" />
                    <asp:ImageField DataImageUrlField="Fimage" HeaderText="Item">
                        <ControlStyle Height="120px" Width="120px" />
                        <ItemStyle Height="120px" Width="120px" />
                    </asp:ImageField>
                    <asp:ButtonField CommandName="Delete" Text="Remove" />
                </Columns>
                <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                <RowStyle BackColor="White" ForeColor="#003399" />
                <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                <SortedAscendingCellStyle BackColor="#EDF6F6" />
                <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                <SortedDescendingCellStyle BackColor="#D6DFDF" />
                <SortedDescendingHeaderStyle BackColor="#002876" />
            </asp:GridView>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style25">
                <asp:Label ID="Label1" runat="server" style="text-align: center; color: #FF0000; font-weight: 700"></asp:Label>
                <br />
                <span class="auto-style26">&nbsp;Note:- You can Place only one order at a click</span></td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style25">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="font-weight: 700" Text="CheckOut" />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style25">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
