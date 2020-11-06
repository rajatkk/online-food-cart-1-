<%@ Page Title="" Language="C#" MasterPageFile="~/Master2.Master" AutoEventWireup="true" CodeBehind="Restaurantorderlist.aspx.cs" Inherits="online_foof_carttt.Restaurantorderlist" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style26 {
        width: 100%;
    }
    .auto-style27 {
        font-size: xx-large;
        text-align: center;
        color: #000066;
        width: 542px;
    }
    .auto-style28 {
            width: 542px;
            text-align: center;
        }
        .auto-style29 {
            width: 542px;
            text-align: center;
            font-size: x-large;
        }
        .auto-style30 {
            width: 149px;
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style26">
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style27"><strong>Your Order list</strong></td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style28">
            <asp:Image ID="Image1" runat="server" Height="76px" ImageUrl="~/image/empty-box.png" Width="90px" />
            <br />
            <asp:Label ID="Label2" runat="server" style="font-weight: 700; color: #FF0000" Text="No Order"></asp:Label>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" style="text-align: center" Width="540px">
                <AlternatingRowStyle BackColor="PaleGoldenrod" />
                <Columns>
                    <asp:BoundField DataField="orderID" HeaderText="Order ID" />
                    <asp:BoundField DataField="FoodID" HeaderText="Food ID" />
                    <asp:BoundField DataField="Quantity" HeaderText="Quantity" />
                    <asp:BoundField DataField="email" HeaderText="Customer Email" />
                </Columns>
                <FooterStyle BackColor="Tan" />
                <HeaderStyle BackColor="Tan" Font-Bold="True" />
                <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                <SortedAscendingCellStyle BackColor="#FAFAE7" />
                <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                <SortedDescendingCellStyle BackColor="#E1DB9C" />
                <SortedDescendingHeaderStyle BackColor="#C2A47B" />
            </asp:GridView>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style28">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style29"><strong>Update status</strong></td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style28">
            <table class="auto-style26">
                <tr>
                    <td class="auto-style30"><strong>Status OF Order ID</strong></td>
                    <td style="text-align: left">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style30"><strong>Status</strong></td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" Width="333px">
                            <asp:ListItem>Preparing</asp:ListItem>
                            <asp:ListItem>Hand Over to Delivery Man</asp:ListItem>
                            <asp:ListItem>Delivery  Done</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style30">Email of Order ID(customer)</td>
                    <td style="text-align: left">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style30">
                        <asp:Label ID="Label4" runat="server" style="font-weight: 700; color: #FF0000"></asp:Label>
                    </td>
                    <td style="text-align: left">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="text-align: left; font-weight: 700" Text="Update" />
                        <asp:Label ID="Label3" runat="server" style="font-weight: 700; color: #FF0000"></asp:Label>
                    </td>
                </tr>
            </table>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style28">
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">View Updated Stauts</asp:LinkButton>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style28">
            <asp:Image ID="Image2" runat="server" Height="76px" ImageUrl="~/image/empty-box.png" Width="90px" />
            <br />
            <asp:Label ID="Label5" runat="server" style="font-weight: 700; color: #FF0000" Text="No Order"></asp:Label>
            <br />
            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" Width="540px">
                <AlternatingRowStyle BackColor="PaleGoldenrod" />
                <Columns>
                    <asp:BoundField DataField="OrderID" HeaderText="Order ID" />
                    <asp:BoundField DataField="Status" HeaderText="Updated status" />
                    <asp:BoundField DataField="EmailC" HeaderText="Customer Email" />
                </Columns>
                <FooterStyle BackColor="Tan" />
                <HeaderStyle BackColor="Tan" Font-Bold="True" />
                <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                <SortedAscendingCellStyle BackColor="#FAFAE7" />
                <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                <SortedDescendingCellStyle BackColor="#E1DB9C" />
                <SortedDescendingHeaderStyle BackColor="#C2A47B" />
            </asp:GridView>
        </td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
