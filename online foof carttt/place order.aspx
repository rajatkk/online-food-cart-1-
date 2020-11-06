<%@ Page Title="" Language="C#" MasterPageFile="~/customer.Master" AutoEventWireup="true" CodeBehind="place order.aspx.cs" Inherits="online_foof_carttt.place_order" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style16 {
            width: 98%;
        }
        .auto-style17 {
            font-size: xx-large;
            color: #000066;
            text-align: center;
            width: 658px;
        }
        .auto-style18 {
            width: 353px;
        }
        .auto-style19 {
            width: 658px;
        }
        .auto-style27 {
            color: #0000CC;
        }
        .auto-style28 {
            color: #FF0000;
        }
        .auto-style29 {
            text-align: left;
            font-weight: bold;
            font-size: medium;
            width: 143px;
            color: #000099;
        }
        .auto-style30 {
            text-align: left;
            color: #FF0000;
            width: 401px;
        }
        .auto-style31 {
            text-align: left;
            color: #000000;
            width: 401px;
        }
        .auto-style32 {
            width: 334px;
            height: 33px;
            font-weight: 700;
        }
        .auto-style33 {
            width: 444%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style16">
        <tr>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style17"><strong>Place order</strong></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style32">
                <asp:TextBox ID="TextBox2" runat="server" Width="16px"></asp:TextBox>
                <asp:TextBox ID="TextBox3" runat="server" Width="16px"></asp:TextBox>
                <asp:TextBox ID="TextBox4" runat="server" Width="16px" ></asp:TextBox>
                <asp:TextBox ID="TextBox5" runat="server" Width="16px"></asp:TextBox>
                <asp:TextBox ID="TextBox6" runat="server" Width="16px"></asp:TextBox>
                <asp:TextBox ID="TextBox7" runat="server" Width="16px" ></asp:TextBox>
                <asp:TextBox ID="TextBox8" runat="server" Width="16px"></asp:TextBox>
                            <asp:Label ID="Label7" runat="server" style="font-weight: 700"></asp:Label>
                        <br />
                <asp:TextBox ID="TextBox10" runat="server" Width="16px" ></asp:TextBox>
                <br />
                </td>
            <td class="auto-style19">
                <asp:GridView ID="GridView8" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" Width="657px" style="margin-left: 2px; text-align: center;" ShowFooter="True">
                    <AlternatingRowStyle BackColor="Gainsboro" />
                    <Columns>
                        <asp:BoundField DataField="FoodID" HeaderText="Food id" />
                        <asp:BoundField DataField="Foodname" HeaderText="FOOD Name" />
                        <asp:BoundField DataField="Quantity" HeaderText="Quantity" />
                        <asp:BoundField DataField="price" HeaderText="Price" />
                        <asp:BoundField DataField="Restaurant" HeaderText="Restaurant" />
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
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style19">
                <table class="auto-style33">
                    <tr>
                        <td>&nbsp;</td>
                        <td style="text-align: center"><span class="auto-style27"><a href="CMyProfile.aspx">Click here</a></span> <span class="auto-style28">to change your Addres or Mobile No.</span></td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style19">
                <table class="auto-style16">
                    <tr>
                        <td class="auto-style29">Mobile no</td>
                        <td class="auto-style30">
                            <asp:Label ID="Label3" runat="server" style="font-weight: 700; color: #333399;"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style29">Address</td>
                        <td class="auto-style30">
                            <asp:Label ID="Label2" runat="server" style="font-weight: 700; color: #333399;"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style29">Apply Promocode</td>
                        <td class="auto-style30">
                            <asp:TextBox ID="TextBox9" runat="server" Width="138px"></asp:TextBox>
                            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click1" style="font-weight: 700" Text="Apply" />
                            <br />
                <asp:Label ID="Label6" runat="server" style="color: #00FF00; font-weight: 700"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style29">Payment Moder</td>
                        <td class="auto-style31"><strong>Cash on delivery Only</strong></td>
                    </tr>
                    <tr>
                        <td class="auto-style29">&nbsp;</td>
                        <td class="auto-style31">
                            <asp:Label ID="Label9" runat="server" style="font-weight: 700; color: #3333FF; font-size: large"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style29">&nbsp;</td>
                        <td class="auto-style30">
                            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" style="font-weight: 700" Text="Confirm Order" />
                <asp:Label ID="Label4" runat="server" style="font-size: large; color: #FF0000; font-weight: 700;"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
