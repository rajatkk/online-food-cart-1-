<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdMarestaurantlist.aspx.cs" Inherits="online_foof_carttt.customerlist" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style14 {
        width: 100%;
    }
    .auto-style15 {
        width: 763px;
        text-align: center;
    }
    .auto-style16 {
        width: 763px;
        text-align: center;
        font-size: xx-large;
        color: #333399;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style14">
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style16"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Manage&nbsp; Restaurant</strong></td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style15">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="Image1" runat="server" Height="79px" ImageUrl="~/image/empty-box.png" Width="93px" />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" style="font-size: medium; font-weight: 700; color: #FF0000"></asp:Label>
            <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="800px" AutoGenerateColumns="False" style="text-align: center; font-weight: 700" OnRowDeleting="GridView1_RowDeleting">
                <Columns>
                    <asp:BoundField DataField="Res_id" HeaderText="Restaurant ID" />
                    <asp:BoundField DataField="Res_Name" HeaderText="Restuarant Name" />
                    <asp:BoundField DataField="Owner_Name" HeaderText="Owner Name" />
                    <asp:BoundField DataField="Restaurant_Type" HeaderText="Restaurant Type" />
                    <asp:BoundField DataField="Email" HeaderText="Email ID" />
                    <asp:BoundField DataField="MobileNo" HeaderText="Mobile Number" />
                    <asp:BoundField DataField="State" HeaderText="State" />
                    <asp:BoundField DataField="city" HeaderText="City" />
                    <asp:BoundField DataField="Pincode" HeaderText="Restaurant Pincode" />
                    <asp:BoundField DataField="Full_Address" HeaderText="Address" />
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
        <td>&nbsp;</td>
        <td class="auto-style15">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
