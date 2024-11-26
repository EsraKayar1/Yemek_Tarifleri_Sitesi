<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="KategoriDüzenle.aspx.cs" Inherits="KategoriAdminDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style12 {
            margin-left: 80px;
        }
        .auto-style13 {
            font-weight: bold;
        }
        .auto-style14 {
            text-align: left;
        }
        .auto-style15 {
            text-align: left;
            margin-left: 80px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style10">
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14">KATEGORİ AD:</td>
            <td class="auto-style12">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">ADET:</td>
            <td class="auto-style15">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">RESİM:</td>
            <td class="auto-style12">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style12"><strong>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style13" Height="29px" OnClick="Button1_Click" Text="GÜNCELLE" Width="104px" />
                </strong></td>
        </tr>
    </table>
</asp:Content>

