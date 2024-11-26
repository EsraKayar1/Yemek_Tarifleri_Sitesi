<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Yorumlar.aspx.cs" Inherits="Yorumlar" %>

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
        .auto-style14 {
            width: 184px;
        }
    .auto-style13 {
        text-align: right;
    }
        .auto-style22 {
            font-size: large;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style10">
            <tr>
                <td class="auto-style18"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style15" Height="30px" Text="+" Width="42px" OnClick="Button1_Click" />
                    </strong></td>
                <td class="auto-style19"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style21" Height="30px"  Text="-" Width="41px" OnClick="Button2_Click" />
                    </strong></td>
                <td> <strong><span class="auto-style22">ONAYLIYORUMLAR LİSTESİ</span></strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <div>
            <asp:DataList ID="DataList1" runat="server" Width="439px" >
                <ItemTemplate>
                    <table class="auto-style10">
                        <tr>
                            <td class="auto-style14"><strong>
                                <asp:Label ID="Label1" runat="server" CssClass="auto-style12" Text='<%# Eval("YorumAdıSoyadı") %>'></asp:Label>
                                </strong></td>
                            <td class="auto-style13">
                               <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/resimler/delete.jpg" Width="30px" />
                            </td>
                            <td class="auto-style13">
                              <a href="YorumDetay.aspx?Yorumid=<%#Eval("Yorumid")%>"><asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/resimler/güncelle.jpg" Width="30px" /></a> 
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
                <asp:Button ID="Button5" runat="server" CssClass="auto-style15" Height="30px" Text="+" Width="42px" OnClick="Button5_Click" />
                </strong></td>
            <td class="auto-style19"><strong>
                <asp:Button ID="Button6" runat="server" CssClass="auto-style21" Height="30px"  Text="-" Width="41px" OnClick="Button6_Click"   />
                </strong></td>
            <td> <strong><span class="auto-style22">ONAYSIZ YORUMLAR LİSTESİ</span></strong></td>
        </tr>
    </table>
</asp:Panel>
      <asp:Panel ID="Panel4" runat="server">
      <div>
          <asp:DataList ID="DataList2" runat="server" Width="439px" >
              <ItemTemplate>
                  <table class="auto-style10">
                      <tr>
                          <td class="auto-style14"><strong>
                              <asp:Label ID="Label1" runat="server" CssClass="auto-style12" Text='<%# Eval("YorumAdıSoyadı") %>'></asp:Label>
                              </strong></td>
                          <td class="auto-style13">
                             <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/resimler/delete.jpg" Width="30px" />
                          </td>
                          <td class="auto-style13">
                           <a href="YorumDetay.aspx?Yorumid=<%#Eval("Yorumid") %>"><asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/resimler/güncelle.jpg" Width="30px" /></a>  
                          </td>
                      </tr>
                  </table>
              </ItemTemplate>
          </asp:DataList>
          
      </div>
      
  </asp:Panel>
    </asp:Content>

