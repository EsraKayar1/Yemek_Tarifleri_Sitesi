<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="TarifOner.aspx.cs" Inherits="TarifOner" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style9 {
            text-align: right;
            font-size: large;
        }
        .auto-style11 {
            text-align: center;
            height: 29px;
            width: 672px;
            font-size: large;
        }
        .auto-style12 {
            height: 29px;
        }
        .auto-style13 {
            margin-left: 25px;
        }
        .auto-style14 {
            text-align: center;
            font-size: large;
            width: 672px;
            height: 30px;
        }
        .auto-style15 {
            text-align: center;
            width: 672px;
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style15">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style15"><strong>Tarih Ad:</strong></td>
            <td>
                <asp:TextBox ID="TxtTarifAd" runat="server" Height="30px" Width="230px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11"><strong>Malzemeler:</strong></td>
            <td class="auto-style12">
                <asp:TextBox ID="TxtMalzemeler" runat="server" Height="90px" Width="230px" TextMode="MultiLine" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style15"><strong>Yapılış:</strong></td>
            <td>
                <asp:TextBox ID="TxtYapilis" runat="server" Height="130px" Width="230px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style15"><strong>Resim:</strong></td>
            <td>
                <asp:FileUpload ID="FileResimOner" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="auto-style15"><strong>Tarif Öneren:</strong></td>
            <td>
                <asp:TextBox ID="TxtTarifOneren" runat="server" Height="25px" Width="230px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style15"><strong>Mail Adresi:</strong></td>
            <td>
                <asp:TextBox ID="TxtMailAdresi" runat="server" Height="25px" Width="230px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td>
                <asp:Button ID="BtnTarifOner" runat="server" CssClass="auto-style13" Font-Bold="True" Font-Italic="True" Height="46px" Text="Tarif Öner" Width="156px" OnClick="BtnTarifOner_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

