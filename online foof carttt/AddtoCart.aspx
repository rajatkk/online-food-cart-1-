<%@ Page Title="" Language="C#" MasterPageFile="~/customer.Master" AutoEventWireup="true" CodeBehind="AddtoCart.aspx.cs" Inherits="online_foof_carttt.AddtoCart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style16 {
            width: 1319px;
            height: 854px;
        }
        .auto-style18 {
        width: 207px;
    }
        .auto-style19 {
        width: 898px;
    }
        .auto-style20 {
            width: 207px;
            height: 70px;
        }
        .auto-style21 {
            width: 898px;
            height: 70px;
            font-size: xx-large;
            text-align: center;
        }
        .auto-style24 {
            width: 75px;
            height: 54px;
            color: #000066;
        }
        .auto-style25 {
            color: #000066;
        }
    .auto-style26 {
        width: 198px;
        height: 70px;
    }
    .auto-style27 {
        width: 198px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style16">
        <tr>
            <td class="auto-style20"></td>
            <td class="auto-style21" style="font-size: 48px; vertical-align: bottom; font-weight: 700;">&nbsp; <span class="auto-style25">Your Cart</span><br />
                <br />
                <br />
                <asp:GridView ID="GridView11" runat="server" style="font-size: medium" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
                    <AlternatingRowStyle BackColor="#DCDCDC" />
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
            <td class="auto-style26"></td>
        </tr>
        <tr>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style19" style="font-size: 48px; vertical-align: bottom">
                &nbsp;</td>
            <td class="auto-style27">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style19" style="font-size: medium; vertical-align: bottom; text-align: center;">
                <br />
            </td>
            <td class="auto-style27">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style19" style="font-size: medium; vertical-align: bottom; text-align: center; font-weight: 700;">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
            </td>
            <td class="auto-style27">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style19" style="font-size: medium; vertical-align: bottom; text-align: center; font-weight: 700;">
                <asp:GridView ID="GridView10" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" Height="259px" style="font-size: large" Width="896px" OnRowDeleting="GridView10_RowDeleting" OnDataBinding="Button2_Click" OnDataBound="GridView10_DataBound">
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                    <Columns>
                        <asp:BoundField DataField="FoodID" HeaderText="Food ID">
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Foodname" HeaderText="Item Name">
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Quantity" HeaderText="Quantity" />
                        <asp:BoundField DataField="price" HeaderText="Price">
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:ImageField DataImageUrlField="Fimage" HeaderText="Item">
                            <ControlStyle Height="150px" Width="150px" />
                            <ItemStyle Height="150px" HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:ImageField>
                        <asp:ButtonField CommandName="Delete" Text="Remove">
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:ButtonField>
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
                <br />
            </td>
            <td class="auto-style27">&nbsp;</td>
        </tr>
    </table>
    <p>
        &nbsp;</p>
</asp:Content>
