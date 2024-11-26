<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="KategoriDetay.aspx.cs" Inherits="KategoriDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style12 {
        width: 100%;
        height: 30px;
        text-align: center;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList2" runat="server" CellPadding="1" EditItemIndex="1">
    <ItemTemplate>
        <table class="auto-style1" style="border-bottom-style: inset; border-bottom-width: thin; border-bottom-color: #C0C0C0">
            <tr>
                <td class="auto-style12"><strong><%--Deteya inmek için yemekid ekledik--%><a href="YemekDetay.aspx?Yemekid=<%# Eval("Yemekid")  %>">
                    <asp:Label ID="Label3" runat="server" CssClass="auto-style4" Text='<%# Eval("YemekAdı") %>'></asp:Label>
                    </a></strong></td>
            </tr>
            <tr>
                <td class="auto-style1"><strong>Malzemeler</strong>:
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekMalzeme") %>' Font-Bold="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1"><strong>Yemek</strong> <strong>Tarifi</strong>:
                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekTarifi") %>' Font-Bold="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1"><strong>Eklenme</strong> <strong>Tarihi</strong>:<asp:Label ID="Label6" runat="server" Text='<%# Eval("YemekTarih") %>' Font-Bold="False"></asp:Label>
                    &nbsp;-<strong><em> Puan:&nbsp;
                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                    </em></strong></td>
            </tr>
            <tr>
                <td style="border-bottom-style: groove; border-bottom-width: medium; border-bottom-color: #C0C0C0" class="auto-style1" aria-checked="undefined" aria-expanded="undefined" aria-grabbed="undefined" aria-atomic="False">&nbsp;</td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
</asp:Content>

