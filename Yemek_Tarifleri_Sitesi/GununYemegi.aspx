<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="GununYemegi.aspx.cs" Inherits="GununYemegi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style9 {
            text-align: right;
            font-size: large;
        }
        .auto-style10 {
            font-size: large;
        }
        .auto-style12 {
        font-size: large;
        width: 700px;
        height: 30px;
    }
        .auto-style13 {
            font-size: large;
            text-align: center;
            font-weight: bold;
            background-color: #9999FF;
        }
        .auto-style14 {
            font-size: large;
            text-align: center;
            font-weight: bold;
            background-color: #FFFFFF;
        }
        .auto-style15 {
            font-size: large;
            text-align: center;
            font-weight: bold;
            background-color: #9898FE;
        }
        .auto-style16 {
            background-color: #9898FE;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <table class="auto-style1">
        <tr>
            <td>
                <asp:DataList ID="DataList2" runat="server">
                    <ItemTemplate>
                        <table class="auto-style1">
                            <tr>
                                <td class="auto-style6"><strong>
                                    <asp:Label ID="Label17" runat="server" CssClass="auto-style5" Text='<%# Eval("YemekAdı") %>'></asp:Label>
                                    </strong></td>
                            </tr>
                            <tr>
                                <td>
                                    <strong><span class="auto-style12">Malzemeler</span><span class="auto-style13">: </span></strong>
                                    <asp:Label ID="Label18" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <strong><span class="auto-style14"><span class="auto-style16">Tarif</span></span><span class="auto-style15">: </span></strong>
                                    <asp:Label ID="Label19" runat="server" Text='<%# Eval("YemekTarifi") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style6">
                                    <asp:Image ID="Image1" runat="server" Height="139px" Width="371px" ImageUrl="~/resimler/Mücver.jpg" />
                                </td>
                            </tr>
                            <tr>
                                <td><strong><span class="auto-style12">Puan:</span></strong> <asp:Label ID="Label20" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td><strong><span class="auto-style12">Tarih:</span></strong> <asp:Label ID="Label21" runat="server" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </td>
        </tr>
    </table>
</asp:Content>


