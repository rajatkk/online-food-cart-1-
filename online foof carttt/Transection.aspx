<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Transection.aspx.cs" Inherits="online_foof_carttt.Transection" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style15 {
        width: 100%;
    }
    .auto-style16 {
        text-align: center;
        width: 674px;
    }
    .auto-style17 {
        text-align: center;
        font-size: xx-large;
        color: #000066;
        width: 674px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style15">
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style17"><strong>View Transection</strong></td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style16">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
                <Columns>
                    <asp:BoundField DataField="PId" HeaderText="Payment ID" />
                    <asp:BoundField DataField="orderID" HeaderText="Order ID" />
                    <asp:BoundField DataField="Email" HeaderText="Customer ID" />
                    <asp:BoundField DataField="PaymentType" HeaderText="Payment Mode" />
                    <asp:BoundField DataField="PStaus" HeaderText="Payment Stauts" />
                    <asp:BoundField DataField="price" HeaderText="Item Price" />
                    <asp:BoundField DataField="Restaurant" HeaderText="Restaurant ID" />
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
        <td>&nbsp;</td>
        <td class="auto-style16">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
