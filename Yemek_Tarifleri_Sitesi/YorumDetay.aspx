<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="YorumDetay.aspx.cs" Inherits="YorumDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style12 {
            margin-left: 480px;
        }
        .auto-style13 {
            margin-left: 680px;
        }
        .auto-style14 {
            font-size: large;
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style10">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14"><strong>Ad Soyad:</strong></td>
            <td class="auto-style12">
                <asp:TextBox ID="TextBox1" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style14"><strong>Mail Adresi:</strong></td>
            <td class="auto-style13">
                <asp:TextBox ID="TextBox2" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style14"><strong>İçerik:</strong></td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Height="119px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style14"><strong>Yemek:</strong></td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Font-Bold="True" Height="40px" Text="Onayla" Width="121px" OnClick="Button1_Click"/>
            </td>
        </tr>
    </table>
</asp:Content>

