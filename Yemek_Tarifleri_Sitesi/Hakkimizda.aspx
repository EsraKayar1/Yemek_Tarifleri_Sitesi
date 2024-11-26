<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="Hakkimizda.aspx.cs" Inherits="Hakkimizda" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style11 {
            font-size: x-large;
            text-align: center;
        }
        .auto-style12 {
            margin-left: 0px;
            margin-top: 28px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="auto-style11">
        &nbsp;<strong>HAKKIMIZDA</strong></p>
    <p class="auto-style6">
        <asp:DataList ID="DataList2" runat="server" Width="447px">
            <ItemTemplate>
                <asp:Label ID="Label3" runat="server" Text='<%# Eval("Metin") %>'></asp:Label>
            </ItemTemplate>
        </asp:DataList>
        <asp:Image ID="Image1" runat="server" CssClass="auto-style12" Height="319px" ImageUrl="~/resimler/YemekTarifiSiteHakkimizdaResim.jpg" Width="448px" />
</asp:Content>

