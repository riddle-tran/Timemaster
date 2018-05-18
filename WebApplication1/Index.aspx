<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="WebApplication1.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <fieldset>
        <legend><h1> TIN MỚI NHẤT</h1></legend>
    <div id="conten2">
        <asp:Repeater ID="rpHIENTHI" runat="server">
            <ItemTemplate>

                <table class="auto-style1">
                    <tr>
                        <td colspan="2">
                            <a href="chitiet.aspx?loaitin=<%# Eval("Maloaitin") %>&id=<%# Eval("Matin") %>"><%# Eval("Tieud") %></a>
                        </td>
                    </tr>
                    <tr>
                        <td style="width:80px; height:50px"><%# Eval("Hinhanh") %></td>
                        <td><%# Eval("Noidungtt") %></td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:Repeater>
    </div>
    </fieldset>
</asp:Content>
