<%@ Page Title="" Language="C#" MasterPageFile="~/customer.Master" AutoEventWireup="true" CodeBehind="food.aspx.cs" Inherits="online_foof_carttt.food" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style16 {
            width: 100%;
            background-color: #FFFF99;
        }
    .auto-style17 {
        width: 100%;
    }
    .auto-style18 {
        text-align: center;
    }
    .auto-style19 {
        text-align: center;
        font-weight: bold;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style17">
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style19">
                <asp:TextBox ID="TextBox2" runat="server" Height="32px" Width="442px"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" style="font-weight: 700" Text="Search" OnClick="Button1_Click" />
            </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style19">
            <asp:Label ID="Label5" runat="server" Text="All product"></asp:Label>
            <br />
            <asp:Image ID="Image2" runat="server" Height="107px" ImageUrl="~/image/empty-box.png" Width="135px" />
            <br />
            <asp:Label ID="Label6" runat="server" ForeColor="Red" style="color: #444B54; background-color: #FFFFFF" Text="Sorry! we don't have"></asp:Label>
&nbsp;
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style18">
        <asp:DataList ID="DataList1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyField="FoodID" DataSourceID="SqlDataSource1" GridLines="Both" RepeatColumns="4" RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand" style="margin-left: 62px" Width="1195px">
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <ItemTemplate>
                <table border="1" class="auto-style16">
                    <tr>
                        <td style="text-align: center">Product Id
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("FoodID") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: center">
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Name_Name") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: center">
                            <asp:Image ID="Image1" runat="server" Height="282px" ImageUrl='<%# Eval("image") %>' Width="263px" />
                            <asp:HiddenField ID="HFImage" runat="server" Value='<%# Eval("image") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: center">Rs.
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("price") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: center">
                            <asp:ImageButton ID="ImageButton1" runat="server" Height="25px" ImageUrl="~/image/addtocart.png" Width="90px" CommandName="addtocart" CommandArgment='<%# Eval("image") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: center">By.<asp:Label ID="Label7" runat="server" Text='<%# Eval("Email") %>'></asp:Label>
                        </td>
                    </tr>
                </table>
                <br />
            </ItemTemplate>
            <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        </asp:DataList>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style19">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
<p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:online_food_cartConnectionString %>" SelectCommand="SELECT * FROM [FoodItemDetails]"></asp:SqlDataSource>
    </p>
<p>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:online_food_cartConnectionString2 %>" SelectCommand="SELECT * FROM [FoodItemDetails] WHERE ([keyword] LIKE '%' + @keyword + '%')">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox2" Name="keyword" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>
