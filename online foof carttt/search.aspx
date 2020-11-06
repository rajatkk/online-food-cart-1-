<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="search.aspx.cs" Inherits="online_foof_carttt.search" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style15 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p style="vertical-align: middle; text-align: center; font-size: xx-large; color: #000066; font-weight: 700;">
        Online Food Cart</p>
    <p style="vertical-align: middle; " class="auto-style15">
        &nbsp; &nbsp;&nbsp;<asp:TextBox ID="TextBox1" runat="server" Height="24px" Width="408px"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" style="font-weight: 700" Text="Search" OnClick="Button1_Click" />
</p>
    <p style="vertical-align: middle; " class="auto-style15">
        <asp:Label ID="Label5" runat="server" style="font-weight: 700; color: #3333FF; font-size: x-large" Text="All products"></asp:Label>
</p>
    <p style="vertical-align: middle; font-weight: 700;" class="auto-style15">
               <asp:DataList ID="DataList1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyField="FoodID" DataSourceID="SqlDataSource1" GridLines="Both" RepeatColumns="4" RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand">
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
                        <asp:Image ID="Image1" runat="server" Height="300px" ImageUrl='<%# Eval("image") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">Rs.
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("price") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:ImageButton ID="ImageButton1" runat="server" Height="25px" ImageUrl="~/image/addtocart.png" Width="90px" CommandName="addtocart" CommandArgment='<%# Eval("FoodID") %>'/>
                    </td>
                </tr>
            </table>
            <br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
    </asp:DataList>
</p>
    <p style="vertical-align: middle; " class="auto-style15">
        &nbsp;</p>
    <p style="vertical-align: middle; " class="auto-style15">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:online_food_cartConnectionString %>" OnSelecting="SqlDataSource1_Selecting" SelectCommand="SELECT * FROM [FoodItemDetails]"></asp:SqlDataSource>
</p>
    <p style="vertical-align: middle; " class="auto-style15">
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:online_food_cartConnectionString2 %>" SelectCommand="SELECT * FROM [FoodItemDetails] WHERE ([keyword] LIKE '%' + @keyword + '%')">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="keyword" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
</p>
    <p style="vertical-align: middle; " class="auto-style15">
        &nbsp;</p>
</asp:Content>
