<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="paginaProduto.aspx.cs" Inherits="ProjetoBD.paginaProduto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Panel ID="pnlSidenav" runat="server" CssClass="sidenav">
            <asp:LinkButton ID="btnClose" runat="server" OnClick="btnClose_Click" CssClass="closebtn" Text="&times;"></asp:LinkButton>
            <a href="index.aspx">Home</a>
            <a href="sobre.aspx">Sobre</a>
            <a href="paginaCatalogo.aspx">Produtos</a>
            <a id="txtLogin" href="paginaLogin.aspx">Login</a>
        </asp:Panel>
    <header>
            <asp:ImageButton ID="btnImage" ImageUrl="assets/imgs/menu.png" runat="server" OnClick="btnImage_Click   "/>
            <a id="amano" href="index.aspx">AINOA</a>
    </header>
        <main>
             <asp:TextBox ID="txtNomeProd" runat="server"></asp:TextBox>
            <asp:TextBox ID="txtQnt" runat="server"></asp:TextBox>
            <asp:Button ID="btnPedido" runat="server" Text="Button" OnClick="btnPedido_Click" />
        </main>
     <footer>
 <div class="row">
     <div class="colu">
       <p id="especial">
         Esse site foi criado por Gabriel Eiki e Gabriel Oliveira.
       </p>
     </div>
     <div class="colu">
       <h3>Instituição</h3>
       <p>ETESP</p>
       <p>Av. Tiradentes, 615 - Luz, São Paulo</p>
       <p>SP, 01101-010</p>
       <p class="email-id">ainoa@gmail.com</p>
       <h4>+11 97154-8992</h4>
     </div>
     <div class="colu">
       <h3>Links</h3>
       <div id="left">
       <ul id="links">
         <li><a href="index.aspx">Home</a></li>
         <li><a href="sobre.aspx">Sobre</a></li>
         <li><a href="paginaCatalogo.aspx">Produtos</a></li>
         <li><a href="paginaLogin.aspx">Login</a></li>
       </ul></div>
     </div>
     <div class="colu">
       <h3>Contact-us</h3>
       <div class="social-icons">
         <a href="https://www.facebook.com/profile.php?id=100015094987882" target="_blank"><i class="fab fa-facebook-f" id="facebook"></i></a>
         <a href="https://github.com/gabrielzinhods23" target="_blank"><i class="fab fa-github" id="github"></i></a>
         <a href="https://twitter.com/GabrielAmano5" target="_blank"><i class="fab fa-twitter" id="twitter"></i></a>
         <a href="https://www.instagram.com/eikiamanoo_/"><i class="fab fa-instagram" id="instagram"></i></a>
       </div>
     </div>
   </div>
   <hr>
   <p class="copyright">
     © 2024 - Todos os direitos reservados
   </p>
</footer>
    </form>
</body>
</html>
