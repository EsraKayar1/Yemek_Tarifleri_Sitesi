<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="TarifOnerDetay.aspx.cs" Inherits="TarfiOnerDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style18 {
            width: 100%;
        }
        .auto-style20 {
            text-align: center;
            font-size: large;
            height: 20px;
        }
        .auto-style21 {
            height: 20px;
        }
        .auto-style19 {
            text-align: center;
            font-size: large;
        }
        .auto-style22 {
            font-size: x-small;
        }
        .auto-style23 {
            font-size: large;
        }
        .auto-style24 {
            text-align: center;
        }
        .auto-style25 {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style18">
            <tr>
                <td class="auto-style20"></td>
                <td class="auto-style21"></td>
            </tr>
            <tr>
                <td class="auto-style19">Ad Soyad:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style19">Mail:</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style19">Yapılış:</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="116px" TextMode="MultiLine" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style19">Tarif Resim:</td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="auto-style19">Tarif Öneren:</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style19">Öneren Mail:</td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style19">Kategoriler:</td>
                <td class="auto-style25">
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="250px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style23">&nbsp;</td>
                <td class="auto-style24">
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style22" Font-Bold="True" Font-Size="Medium" Height="38px" OnClick="Button1_Click" Text="Onayla" Width="131px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style23">&nbsp;</td>
                <td class="auto-style24">&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

