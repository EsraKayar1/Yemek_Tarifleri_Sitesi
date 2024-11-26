<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="YemekDüzenle.aspx.cs" Inherits="YemekDüzenle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style12 {
            width: 154px;
            text-align: center;
        }
        .auto-style13 {
            margin-left: 40px;
        }
        .auto-style14 {
            text-align: left;
        }
        .auto-style15 {
            font-size: large;
        }
    .auto-style16 {
        width: 115px;
    }
    .auto-style18 {
        text-align: center;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style10">
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12"><strong>Yemek Ad:</strong></td>
            <td class="auto-style13">
                <asp:TextBox ID="TextBox1" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style12"><strong>Malzemeler:</strong></td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Height="100px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style12"><strong>Tarif:</strong></td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Height="200px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style12"><strong>Kategori:</strong></td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="250px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style12"><strong>Yemek Görüntü:</strong></td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" Width="250px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style14">
                <table class="auto-style10">
                    <tr>
                        <td class="auto-style16"><strong>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style15" Font-Bold="True" Height="31px" OnClick="Button1_Click" Text="Güncelle" Width="114px" />
                </strong></td>
                        <td class="auto-style18">
                            <strong>
                            <asp:Button ID="Button2" runat="server" Font-Bold="True" OnClick="Button2_Click1" Text="Günün Yemeği Seç" Width="160px" />
                            </strong>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

