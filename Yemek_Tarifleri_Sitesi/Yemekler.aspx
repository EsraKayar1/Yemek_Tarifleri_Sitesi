<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Yemekler.aspx.cs" Inherits="Yemekler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style12 {
            font-size: x-large;
        }

        .auto-style13 {
            text-align: right;
        }

        .auto-style14 {
            width: 184px;
        }

        .auto-style15 {
            font-size: x-large;
            font-weight: bold;
        }

        .auto-style18 {
            text-align: left;
            width: 35px;
        }

        .auto-style19 {
            width: 30px;
        }

        .auto-style20 {
            width: 46px;
            text-align: left;
        }

        .auto-style21 {
            font-size: medium;
            font-weight: bold;
        }

        .auto-style22 {
            font-size: large;
        }
        .auto-style23 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style10">
            <tr>
                <td class="auto-style18"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style15" Height="30px" Text="+" Width="42px" OnClick="Button1_Click1"  />
                </strong></td>
                <td class="auto-style19"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style21" Height="30px" Text="-" Width="41px" OnClick="Button2_Click" />
                </strong></td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong><span class="auto-style12">YEMEK LİSTESİ</span></strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <div>
            <asp:DataList ID="DataList1" runat="server" Width="439px">
                <ItemTemplate>
                    <table class="auto-style10">
                        <tr>
                            <td class="auto-style14"><strong>
                                <asp:Label ID="Label1" runat="server" CssClass="auto-style12" Text='<%# Eval("YemekAdı") %>'></asp:Label>
                            </strong></td>
                            <td class="auto-style13">
                                <a href="Yemekler.aspx?Yemekid=<%#Eval("Yemekid") %>&islem=sil">
                                    <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/resimler/delete.jpg" Width="30px" /></a>
                            </td>
                            <td class="auto-style13">
                                <a href="YemekDüzenle.aspx?Yemekid=<%# Eval("Yemekid")%>">
                                    <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/resimler/güncelle.jpg" Width="30px" /></a>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </div>

    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server">
        <asp:Panel ID="Panel4" runat="server">
            <table class="auto-style10">
                <tr>
                    <td class="auto-style18"><strong>
                        <asp:Button ID="Button3" runat="server" CssClass="auto-style15" Height="30px" Text="+" Width="42px" OnClick="Button3_Click" />
                    </strong></td>
                    <td class="auto-style20"><strong>
                        <asp:Button ID="Button4" runat="server" CssClass="auto-style21" Height="30px" Text="-" Width="41px" OnClick="Button4_Click" />

                    </strong></td>
                    <td>&nbsp;&nbsp;<span class="auto-style12"><strong>YEMEK EKLEME</strong></span></td>
                </tr>
            </table>
        </asp:Panel>
    </asp:Panel>
    <asp:Panel ID="Panel5" runat="server">
        <table class="auto-style10">
            <tr>
                <td class="auto-style22">&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style22"><strong>YEMEK AD:</strong></td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="275px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style22"><strong>MALZEMELER:</strong></td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="100px" TextMode="MultiLine" Width="275px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style22"><strong>YEMEK TARİFİ:</strong></td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="200px" TextMode="MultiLine" Width="275px"></asp:TextBox>
                </td>
            </tr>

            
            <tr>
                <td class="auto-style22"><strong>KATEGORİ:</strong></td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="30px" Width="275px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style22">&nbsp;</td>
                <td class="auto-style23">
                    <asp:Button ID="Button6" runat="server" CssClass="auto-style22" Font-Bold="True" Height="32px" OnClick="Button6_Click" Text="EKLE" Width="85px" />
                </td>
            </tr>

            
        </table>
    </asp:Panel>
</asp:Content>

