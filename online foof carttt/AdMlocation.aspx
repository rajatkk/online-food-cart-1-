<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdMlocation.aspx.cs" Inherits="online_foof_carttt.AdMlocation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style15 {
            width: 100%;
            height: 33px;
        }
        .auto-style16 {
            text-align: center;
        }
        .auto-style17 {
            font-size: x-large;
            color: #3366FF;
        }
        .auto-style18 {
            text-align: center;
            font-size: x-large;
            color: #3366FF;
        }
        .auto-style19 {
            font-size: xx-large;
            color: #000066;
        }
        .auto-style20 {
            height: 65px;
        }
        .auto-style21 {
            width: 100%;
        }
        .auto-style22 {
            width: 181px;
        }
        .auto-style23 {
            width: 181px;
            color: #000000;
        }
        .auto-style24 {
            width: 603px;
        }
        .auto-style25 {
            width: 169px;
        }
        .auto-style28 {
            width: 416px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style15">
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style19" style="text-align: center"><strong>Manage Location<br />
                </strong>
                <table class="auto-style21">
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" style="font-weight: 700; font-size: medium">Add New State/ City</asp:LinkButton>
                            <br />
                            <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" style="font-size: large; font-weight: 700">view All State &amp; city</asp:LinkButton>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <table class="auto-style15">
                    <tr>
                        <td class="auto-style17" style="text-align: center"><strong>Manage State</strong></td>
                        <td class="auto-style18"><strong>Manage city</strong></td>
                    </tr>
                    <tr>
                        <td style="vertical-align: top; text-align: center">
                            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" OnRowDeleting="GridView2_RowDeleting" Width="533px">
                                <Columns>
                                    <asp:BoundField DataField="Stateid" HeaderText="State ID" />
                                    <asp:BoundField DataField="State" HeaderText="State Name" />
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
                        <td class="auto-style16" style="vertical-align: top; text-align: center">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" Height="128px" OnRowDeleting="GridView1_RowDeleting" Width="535px">
                                <Columns>
                                    <asp:BoundField DataField="city_id" HeaderText="City id" />
                                    <asp:BoundField DataField="StateId" HeaderText="State id" />
                                    <asp:BoundField DataField="city" HeaderText="City Name" />
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
                    </tr>
                </table>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="text-align: center">
                <asp:Label ID="Label1" runat="server" ForeColor="Red" style="font-weight: 700; font-size: large"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="text-align: center">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style20"></td>
            <td class="auto-style20">
                <table class="auto-style15">
                    <tr>
                        <td class="auto-style24" style="text-align: center">
                            <asp:Label ID="Label8" runat="server" style="font-weight: 700; background-color: #99CCFF" Text="Add New State"></asp:Label>
                        </td>
                        <td style="text-align: center">
                            <asp:Label ID="Label9" runat="server" style="font-weight: 700; background-color: #99CCFF" Text="Add New City"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style24">
                            <table class="auto-style21">
                                <tr>
                                    <td class="auto-style22">
                                        <asp:Label ID="Label2" runat="server" ForeColor="Black" Text="State ID"></asp:Label>
                                    </td>
                                    <td class="auto-style28">
                                        <asp:TextBox ID="TextBox1" runat="server" Width="154px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style23">
                                        <asp:Label ID="Label3" runat="server" ForeColor="Black" Text="State Name"></asp:Label>
                                    </td>
                                    <td class="auto-style28">
                                        <asp:TextBox ID="TextBox2" runat="server" Width="154px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style22">&nbsp;</td>
                                    <td class="auto-style28">
                                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="font-weight: 700" Text="Add" />
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td>
                            <table class="auto-style21">
                                <tr>
                                    <td class="auto-style25">
                                        <asp:Label ID="Label4" runat="server" ForeColor="Black" Text="State ID"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox3" runat="server" MaxLength="3" Width="154px"></asp:TextBox>
&nbsp;<asp:Button ID="Button3" runat="server" OnClick="Button3_Click" style="font-weight: 700" Text="check state id" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style25">
                                        <asp:Label ID="Label7" runat="server" ForeColor="Black" Text="City ID"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox5" runat="server" Width="154px"></asp:TextBox>
                                        <asp:Label ID="Label6" runat="server" ForeColor="Red" style="font-weight: 700; font-size: large"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style25">
                                        <asp:Label ID="Label5" runat="server" ForeColor="Black" Text="City Name"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox4" runat="server" Width="154px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style25">&nbsp;</td>
                                    <td>
                                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" style="font-weight: 700" Text="Add" />
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
            <td class="auto-style20"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
