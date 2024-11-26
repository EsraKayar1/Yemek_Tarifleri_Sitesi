<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="TarifOnerAdmin.aspx.cs" Inherits="TarifOnerAdmin" %>

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
        .auto-style12 {
        font-size: x-large;
    }
        .auto-style22 {
            text-align: right;
        }
        .auto-style23 {
            font-size: large;
        }
        .auto-style24 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style10">
            <tr>
                <td class="auto-style18"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style15" Height="30px" Text="+" Width="42px" OnClick="Button1_Click"  />
                    </strong></td>
                <td class="auto-style19"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style21" Height="30px" Text="-" Width="41px" OnClick="Button2_Click"  />
                    </strong></td>
                <td class="auto-style24"> <strong><span class="auto-style23">ONAYSIZ TARİFLER LİSTESİ</span></strong></td>
            </tr>
        </table>
    </asp:Panel>
        <asp:Panel ID="Panel2" runat="server">
    <div>
        <asp:DataList ID="DataList1" runat="server" Width="439px">
            <ItemTemplate>
                <table class="auto-style10">
                    <tr>
                        <td class="auto-style14"><strong>
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style12" Text='<%# Eval("TarifAd") %>'></asp:Label>
                            </strong></td>
                        
                        <td class="auto-style22">
                            <a href="TarifOnerDetay.aspx?Tarifid=<%# Eval("Tarifid") %>">
                           <asp:Image ID="Image3" runat="server" Height="42px" ImageUrl="~/resimler/tarif-öner.jpg" Width="42px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </div>
    
</asp:Panel>
        <asp:Panel ID="Panel3" runat="server">
        <table class="auto-style10">
            <tr>
                <td class="auto-style18"><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style15" Height="30px" Text="+" Width="42px" OnClick="Button3_Click"   />
                    </strong></td>
                <td class="auto-style19"><strong>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style21" Height="30px" Text="-" Width="41px" OnClick="Button4_Click"   />
                    </strong></td>
                <td class="auto-style24"><strong><span class="auto-style23">ONAYLI TARİFLER LİSTESİ</span></strong></td>
            </tr>
        </table>
    </asp:Panel>
        <asp:Panel ID="Panel4" runat="server">
    <div>
        <asp:DataList ID="DataList2" runat="server" Width="439px">
            <ItemTemplate>
                <table class="auto-style10">
                    <tr>
                        <td class="auto-style14"><strong>
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style12" Text='<%# Eval("TarifAd") %>'></asp:Label>
                            </strong></td>
                        
                        <td class="auto-style22">
                            <a href="TarifOnerDetay.aspx?Tarifid=<%# Eval("Tarifid") %>">
                           <asp:Image ID="Image3" runat="server" Height="42px" ImageUrl="~/resimler/tarif-öner.jpg" Width="42px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </div>
    
</asp:Panel>
</asp:Content>

