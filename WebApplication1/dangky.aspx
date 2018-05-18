<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="dangky.aspx.cs" Inherits="WebApplication1.dangky" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            margin-left: 69px;
        }
        .auto-style3 {
            margin-left: 121px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
         <h4> Tên đăng nhập&nbsp; <asp:TextBox ID="Txtuser" runat="server" CssClass="auto-style2" Width="300px"></asp:TextBox>
        </h4>
        <h4>Mât khẩu<asp:TextBox ID="Txtpass" runat="server"  CssClass="auto-style3" Width="300px"></asp:TextBox></h4>
	<h4>Họ và tên: 
		<asp:TextBox ID="Txthoten" runat="server" style="margin-left: 113px" Width="296px"></asp:TextBox>
	 </h4>
        <br />
        <br />
        <asp:Button ID="butlogin" runat="server" Text="Đăng nhập" CssClass="auto-style5"  Width="300px" OnClick="butlogin_Click" Height="39px"  />
        <br />
        <br />
        <asp:Label ID="Lab" runat="server" Text="" ></asp:Label>
</asp:Content>
