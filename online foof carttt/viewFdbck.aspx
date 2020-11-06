<%@ Page Title="" Language="C#" MasterPageFile="~/customer.Master" AutoEventWireup="true" CodeBehind="viewFdbck.aspx.cs" Inherits="online_foof_carttt.viewFdbck" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style16 {
            width: 219%;
        }
        .auto-style17 {
            color: #000066;
            font-size: xx-large;
            width: 427px;
        }
        .auto-style18 {
            width: 427px;
            }
        .auto-style21 {
            width: 475px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style16">
        <tr>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style17" style="font-weight: 700; text-align: center">Customer&nbsp; FeedBacks</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style18">
                <table class="auto-style16">
                    <tr>
                        <td>&nbsp;</td>
                        <td style="text-align: center">
                <asp:Image ID="Image1" runat="server" Height="108px" ImageUrl="~/image/empty-box.png" Width="114px" />
                            <br />
                <asp:Label ID="Label2" runat="server" ForeColor="Red" style="font-weight: 700; color: #003366" Text="No Feedback"></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
                <br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#FFFF66" BorderColor="#FFFF66" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" Height="199px" style="text-align: center" Width="430px">
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                    <Columns>
                        <asp:BoundField DataField="Email" HeaderText="valuable Customer" />
                        <asp:BoundField DataField="Fmsg" HeaderText="Feedback" />
                        <asp:BoundField DataField="Rating" HeaderText="Rating Out of 5 Stars" />
                        <asp:BoundField DataField="FeedbackBy" HeaderText="By" />
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
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
