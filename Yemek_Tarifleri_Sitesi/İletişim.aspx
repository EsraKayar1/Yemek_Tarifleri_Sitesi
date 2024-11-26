<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="İletişim.aspx.cs" Inherits="İletişim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style11 {
        width: 100%;
    }
    .auto-style12 {
        text-align: right;
    }
    .auto-style13 {
        text-align: center;
        font-size: large;
    }
        .auto-style14 {
            border: 2px solid #456879;
            border-radius: 10px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style11">
    <tr>
        <td class="auto-style13" colspan="2"><strong>MESAJ PANELİ</strong></td>
    </tr>
    <tr>
        <td class="auto-style12">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style12">Adı Soyadı:</td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server" Width="189px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style12">Mail Adresi:</td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server" Width="189px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style12">Konu:</td>
        <td>
            <asp:TextBox ID="TextBox3" runat="server" Width="189px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style12">Mesaj:</td>
        <td>
            <asp:TextBox ID="TextBox4" runat="server" Width="189px" CssClass="auto-style14" Height="155px" TextMode="MultiLine"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style12">&nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" Font-Bold="True" Height="43px" Text="Gönder" Width="117px" OnClick="Button1_Click" />
        </td>
    </tr>
</table>
</asp:Content>

