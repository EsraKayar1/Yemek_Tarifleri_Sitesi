<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Kategoriler.aspx.cs" Inherits="Kategoriler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style10">
            <tr>
                <td class="auto-style18"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style15" Height="30px" Text="+" Width="42px" OnClick="Button1_Click" />
                    </strong></td>
                <td class="auto-style19"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style21" Height="30px" OnClick="Button2_Click" Text="-" Width="41px" />
                    </strong></td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong><span class="auto-style12">KATEGORİ LİSTESİ</span></strong></td>
            </tr>
        </table>
</asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <div>
            <asp:DataList ID="DataList1" runat="server" Width="439px" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
                <ItemTemplate>
                    <table class="auto-style10">
                        <tr>
                            <td class="auto-style14"><strong>
                                <asp:Label ID="Label1" runat="server" CssClass="auto-style12" Text='<%# Eval("KategoriAd") %>'></asp:Label>
                                </strong></td>
                            <td class="auto-style13">
                                <a href="Kategoriler.aspx?Kategoriid=<%#Eval("Kategoriid") %>&islem=sil"><asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/resimler/delete.jpg" Width="30px" /></a>
                            </td>
                            <td class="auto-style13">
                               <a href="KategoriDüzenle.aspx?Kategoriid=<%# Eval("Kategoriid")%>"><asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/resimler/güncelle.jpg" Width="30px" /></a>
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
                        <asp:Button ID="Button3" runat="server" CssClass="auto-style15" Height="30px" Text="+" Width="42px" OnClick="Button3_Click"  />
                        </strong></td>
                    <td class="auto-style20"><strong>
                        <asp:Button ID="Button4" runat="server" CssClass="auto-style21" Height="30px"  Text="-" Width="41px" OnClick="Button4_Click" />
                        </strong></td>
                    <td>&nbsp;&nbsp;<span class="auto-style12"><strong>KATEGORİ EKLEME</strong></span></td>
                </tr>
            </table>
        </asp:Panel>
    </asp:Panel>
    <asp:Panel ID="Panel5" runat="server">
        <table class="auto-style10">
            <tr>
                <td>KATEGORİ AD:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>KATEGORİ İKON:</td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="Button5" runat="server" Font-Bold="True" Text="EKLE" CssClass="auto-style22" Height="32px" OnClick="Button5_Click" Width="85px" />
                </td>
            </tr>
        </table>
    </asp:Panel>
    </asp:Content>

