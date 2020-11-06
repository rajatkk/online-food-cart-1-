<%@ Page Title="" Language="C#" MasterPageFile="~/Master2.Master" AutoEventWireup="true" CodeBehind="RMangeFoodItems.aspx.cs" Inherits="online_foof_carttt.ManageOlist" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style26 {
        width: 100%;
    }
    .auto-style27 {
        font-size: xx-large;
        color: #000066;
        width: 590px;
    }
    .auto-style28 {
            width: 590px;
            text-align: center;
        }
        .auto-style29 {
            width: 590px;
            text-align: center;
            font-size: x-large;
        }
        .auto-style30 {
            font-size: x-large;
            color: #000066;
            width: 590px;
        }
        .auto-style31 {
            text-align: left;
            width: 175px;
            font-weight: bold;
        }
        .auto-style32 {
            width: 175px;
            font-weight: bold;
        }
        .auto-style33 {
            text-align: left;
        }
        .auto-style34 {
            font-weight: normal;
            color: #FF3300;
        }
    </style>
  

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style26">
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style27" style="text-align: center"><strong>Manage Food Items</strong></td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style30" style="text-align: center">View Your Food Items</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style28">
            <asp:Image ID="Image1" runat="server" Height="73px" ImageUrl="~/image/empty-box.png" Width="88px" />
            <br />
            <asp:Label ID="Label2" runat="server" style="font-weight: 700; color: #FF0000" Text="Empty"></asp:Label>
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" style="text-align: center" Width="583px">
                <Columns>
                    <asp:BoundField DataField="FoodID" HeaderText="Food ID" />
                    <asp:BoundField DataField="Name_Name" HeaderText="Item" />
                    <asp:BoundField DataField="FOOD_DETAIL" HeaderText="Description" />
                    <asp:BoundField DataField="price" HeaderText="Price" />
                    <asp:BoundField DataField="keyword" HeaderText="Search Key Word " />
                    <asp:ImageField DataImageUrlField="image" HeaderText="Item Image">
                        <ControlStyle Height="150px" Width="150px" />
                        <ItemStyle Height="150px" Width="150px" />
                    </asp:ImageField>
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
        <td class="auto-style28">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style29">Add Food Items</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style28">
            <table class="auto-style26">
                <tr>
                    <td class="auto-style32" style="text-align: left; vertical-align: top;">Item Name</td>
                    <td class="auto-style33" style="vertical-align: top; text-align: left">
                        <asp:TextBox ID="TextBox1" runat="server" Width="164px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style32" style="text-align: left; vertical-align: top;">Discription</td>
                    <td class="auto-style33" style="vertical-align: top; text-align: left">
                        <asp:TextBox ID="TextBox2" runat="server" Width="164px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style31" style="vertical-align: top; text-align: left">Price</td>
                    <td class="auto-style33" style="vertical-align: top; text-align: left">
                        <asp:TextBox ID="TextBox3" runat="server" Width="164px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style32" style="text-align: left; vertical-align: top;"><strong>Search Keywords<br />
                        </strong><b>
                        <br />
                        </b></td>
                    <td class="auto-style33" style="vertical-align: top; text-align: left">
                        <asp:TextBox ID="TextBox4" runat="server" Width="165px" TextMode="MultiLine"></asp:TextBox>
                        <b>
                        <span class="auto-style34">
                        <br />
                        Note- (please insert all search keywords that a coustumer can search it&nbsp; using coma(,) between the&nbsp; keywords.)</span></b></td>
                </tr>
                <tr>
                    <td class="auto-style32" style="text-align: left; vertical-align: top;">Upload Image</td>
                    <td class="auto-style33" style="vertical-align: top; text-align: left">
                        <table class="auto-style26">
                            <tr>
                                <td style="font-size: large">
                                    <asp:FileUpload ID="FileUpload1" runat="server" />
                <tr>
                    <td class="auto-style32" style="text-align: left; vertical-align: top;">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" style="font-weight: 700" Text="Save" />
                        </td>
                    <td class="auto-style33" style="vertical-align: top; text-align: left">
                        &nbsp;<tr>
        <td>
                        <asp:Label ID="Label3" runat="server" style="font-weight: 700; color: #FF0000"></asp:Label>
                                </td>
        <td class="auto-style28">
            &nbsp;</asp:Content>
