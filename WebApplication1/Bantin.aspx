<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Bantin.aspx.cs" Inherits="WebApplication1.Bantin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <fieldset>
        <legend style=" Background:darkgray," >
            <asp:Repeater ID="Rpbantin" runat="server">
                <ItemTemplate>
                    <h1 style="color:red"><%# Eval("Tieude") %></h1>
                </ItemTemplate>
            </asp:Repeater>
        </legend>
     <asp:Repeater ID="rpHIENTHI" runat="server">
            <ItemTemplate>
                <ul>
                    
                    <li>
                        <a href="chitiet.aspx?loaitin=<%# Eval("Maloaitin") %>&id=<%# Eval("Matin") %>"><%# Eval("Tieud") %></a>
                    </li>
                </ul>
            </ItemTemplate>
        </asp:Repeater>
    </fieldset>

</asp:Content>
