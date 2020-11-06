<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdMpromocode.aspx.cs" Inherits="online_foof_carttt.AdMpromocode" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style15 {
            width: 108%;
        }
        .auto-style16 {
            text-align: center;
            font-size: xx-large;
            color: #000066;
            width: 338px;
        }
        .auto-style17 {
            font-size: x-large;
            width: 338px;
            color: #000000;
        }
        .auto-style18 {
            width: 338px;
            text-align: center;
        }
        .auto-style19 {
            width: 338px;
            text-align: center;
            color: #000000;
            font-size: x-large;
            background-color: #FFCC66;
        }
        .auto-style21 {
            text-align: left;
            font-size: large;
            width: 203px;
        }
        .auto-style22 {
            width: 475px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
    <table class="auto-style15">
        <tr>
            <td class="auto-style22">&nbsp;</td>
            <td class="auto-style16"><strong>Manage Promo Code</strong></td>
            <td style="font-weight: 700">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style22">&nbsp;</td>
            <td class="auto-style17" style="text-align: center"><strong>View Promo Code</strong></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style22">&nbsp;</td>
            <td class="auto-style18">
                <asp:Image ID="Image1" runat="server" Height="89px" ImageUrl="~/image/empty-box.png" style="margin-right: 0px" />
                <br />
                <asp:Label ID="Label2" runat="server" style="font-weight: 700; font-size: large; color: #003366" Text="Empty"></asp:Label>
                <br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" OnRowDeleting="GridView1_RowDeleting" Width="362px">
                    <Columns>
                        <asp:BoundField DataField="PromoID" HeaderText="Promo Code ID" />
                        <asp:BoundField DataField="PromoCode" HeaderText="Promo Code" />
                        <asp:BoundField DataField="Discount" HeaderText="Discount" />
                        <asp:ButtonField CommandName="Delete" Text="Remove" />
                    </Columns>
                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FFF1D4" />
                    <SortedAscendingHeaderStyle BackColor="#B95C30" />
                    <SortedDescendingCellStyle BackColor="#F1E5CE" />
                    <SortedDescendingHeaderStyle BackColor="#93451F" />
                </asp:GridView>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style22">&nbsp;</td>
            <td class="auto-style18">
                <asp:Label ID="Label4" runat="server" ForeColor="Red" style="font-weight: 700"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style22">&nbsp;</td>
            <td class="auto-style19"><strong>Add New Promo Code</strong></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style22">&nbsp;</td>
            <td class="auto-style19">
                <table class="auto-style15">
                    <tr>
                        <td class="auto-style21">Promo code</td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server" Width="145px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style21">Discount(in INR Amount)</td>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server" Width="145px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style21">&nbsp;</td>
                        <td>
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="font-weight: 700; height: 26px" Text="Add" Width="76px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style21">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
