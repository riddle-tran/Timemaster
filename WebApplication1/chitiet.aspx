<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="chitiet.aspx.cs" Inherits="WebApplication1.chitiet" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Repeater ID="rploaitin" runat="server">
        <ItemTemplate>
            <h1><%# Eval("Tieude") %></h1>
        </ItemTemplate>
    </asp:Repeater>
    <div>
        <asp:Repeater ID="rpchitiet" runat="server">
            <ItemTemplate>
                <h3 style="color:red"><%# Eval("tieud") %></h3>
                <p style="text-align:right"> 
                    Cập nhật: <%# Eval("Ngaydang") %>
                    Lần xem: <%# Eval("Lanxem") %>
                </p>
                <%# Eval("Noidung") %>
            </ItemTemplate>

        </asp:Repeater>
    </div>
    <div>
        <asp:TextBox ID="Txtnd" runat="server" Height="56px" Width="804px"></asp:TextBox>
        <br />
&nbsp;<asp:Button ID="Button1" runat="server" Text="Đăng" Height="35px" Width="176px" OnClick="Button1_Click" />
        <br />
        <br />
        <fieldset>
            <legend>
                <h3>Bình luận</h3>
            
            </legend>
            <asp:Repeater ID="Rpbinhluan" runat="server">
                <ItemTemplate>
                    <%# Eval("Noidung") %>
                    <p style="text-align:right"> 
                           Người đăng: <%# Eval("UserName") %>
                           Cập nhật: <%# Eval("Ngaydang") %>
                    </p>
               </ItemTemplate>
            </asp:Repeater>
        </fieldset>
    </div>
    <fieldset>
        <legend><h3>Bản tin khác:</h3></legend>
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
