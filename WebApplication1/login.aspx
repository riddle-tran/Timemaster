<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WebApplication1.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            margin-left: 93px;
        }
        .auto-style3 {
            margin-left: 93px;
        }
        .auto-style4 {}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            <h1>Dăng nhập quản trị Web</h1>
    <div id="ndcontent">
        <h4> Tên đăng nhập<asp:TextBox ID="Txtuser" runat="server" CssClass="auto-style2" Width="300px" Height="28px"></asp:TextBox>
        </h4>
        <h4>Mât khẩu&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="Txtpass" runat="server"  CssClass="auto-style3" Width="300px" Height="31px"></asp:TextBox>
        </h4>
        <br />
        <br />
        <asp:Button ID="butlogin" runat="server" Text="Đăng nhập" CssClass="auto-style4"  Width="218px" OnClick="butlogin_Click" Height="35px"  />
        <br />
        <asp:Label ID="Lab" runat="server" Text=""></asp:Label>
    </div>
</asp:Content>
