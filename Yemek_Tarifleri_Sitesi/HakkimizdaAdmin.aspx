<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="HakkimizdaAdmin.aspx.cs" Inherits="HakkimizdaAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">



        .auto-style18 {
            text-align: left;
            width: 35px;
        }
        .auto-style15 {
        font-size: x-large;
        font-weight: bold;
    }
        .auto-style19 {
            width: 30px;
        }
        .auto-style21 {
            font-size: medium;
            font-weight: bold;
        }
        .auto-style24 {
            text-align: center;
        }
        .auto-style23 {
            font-size: large;
        }
        .auto-style25 {
        font-size: medium;
        font-style: italic;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style10">
            <tr>
                <td class="auto-style18"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style15" Height="30px" Text="+" Width="42px" OnClick="Button1_Click"   />
                    </strong></td>
                <td class="auto-style19"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style21" Height="30px" Text="-" Width="41px" OnClick="Button2_Click"  />
                    </strong></td>
                <td class="auto-style24"><span class="auto-style23">HAKKIMIZDA</span></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <table class="auto-style10">
            <tr>
                <td><em>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style25" Height="250px" TextMode="MultiLine" Width="440px"></asp:TextBox>
                    </em></td>
            </tr>
            <tr>
                <td class="auto-style24">
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style21" Text="GÜNCELLE" OnClick="Button3_Click" />
                </td>
            </tr>
        </table>
</asp:Panel>
</asp:Content>

