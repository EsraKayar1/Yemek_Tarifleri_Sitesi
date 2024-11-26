<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="YemekDetay.aspx.cs" Inherits="YemekDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
 .auto-style9 {
     text-align: right;
     font-size: large;
 }
 .auto-style10 {
     font-size: large;
 }
    .auto-style11 {
        text-align: left;
        background-color: #9999FF;
            font-size: large;
        }
    .auto-style12 {
        font-size: large;
        text-align: center;
        background-color: #9898FE;
    }
        .auto-style14 {
            background-color: #9999FF;
        }
        .auto-style15 {
            text-align: center;
            background-color: #9999FF;
        }
        .auto-style16 {
            font-size: large;
        }
        .auto-style17 {
            text-align: center;
            text-decoration: underline;
            background-color: #CC99FF;
            height: 28px;
            font-size: large;
        }
        .auto-style18 {
            width: 100%;
        }
        .auto-style19 {
            text-align: center;
            font-size: large;
        }
        .auto-style20 {
            text-align: center;
            font-size: large;
            height: 20px;
        }
        .auto-style21 {
            height: 20px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <strong>
<asp:Label ID="Label3" runat="server" CssClass="auto-style4" Text="Label"></asp:Label>
&nbsp;<br />
<asp:DataList ID="DataList2" runat="server">
    <ItemTemplate>
        <table class="auto-style1">
            <tr>
                <td class="auto-style15"><strong>
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("YorumAdıSoyadı") %>' CssClass="auto-style16"></asp:Label>
                    </strong></td>
            </tr>
            </strong>
            <tr>
                <td style="border-bottom-style: inset; border-bottom-width: thin" class="auto-style1">
                    <em>
                    <asp:Label ID="Label5" runat="server" CssClass="auto-style11" Font-Bold="False" Text='<%# Eval("Yorumicerik") %>'></asp:Label>
                    </em>
                </td>
            </tr>
            <tr>
                <td class="auto-style14" style="border-bottom-style: inset; border-bottom-width: thin"><strong>&nbsp;<em>Saat-Tarih:</em></strong><em><asp:Label ID="Label6" runat="server" CssClass="auto-style12" Font-Bold="False" Text='<%# Eval("YorumTarih") %>'></asp:Label>
                    </em></td>
            </tr>
        </table>
        
    </ItemTemplate>
</asp:DataList>
        <br />
        </strong>
        <div class="auto-style17"><strong>Yorum Yapma Paneli </strong></div>
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style18">
            <tr>
                <td class="auto-style20"></td>
                <td class="auto-style21"></td>
            </tr>
            <tr>
                <td class="auto-style19">Ad Soyad:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="203px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style19">Mail:</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Width="202px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style19">Yorum:</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="116px" TextMode="MultiLine" Width="204px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style19">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Size="Larger" Height="38px" OnClick="Button1_Click" Text="Yorum Yap" Width="131px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style19">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>


