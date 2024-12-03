<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sobre.aspx.cs" Inherits="Ainoa.sobre" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Julius+Sans+One&family=Poetsen+One&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Julius+Sans+One&display=swap" rel="stylesheet">
    <title></title>
<link href="assets/css/header.css?v=2" rel="stylesheet" />
<link href="assets/css/footer.css?v=2" rel="stylesheet" />
<link href="assets/css/sobre.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <asp:Panel ID="pnlSidenav" runat="server" CssClass="sidenav">
            <asp:LinkButton ID="btnClose" runat="server" OnClick="btnClose_Click" CssClass="closebtn" Text="&times;"></asp:LinkButton>
            <a href="index.aspx">Home</a>
            <a href="sobre.aspx">Sobre</a>
            <a href="produtos.aspx">Produtos</a>
            <a id="txtLogin" href="paginaLogin.aspx">Login</a>
        </asp:Panel>
        <header>
                <asp:ImageButton ID="btnImage" ImageUrl="assets/imgs/menu.png" runat="server" OnClick="btnImage_Click   "/>
                <a id="amano" href="index.aspx">AINOA</a>
        </header>
        <main>
        <div id="title">
                <h1>Conheça a mais nova revolucionária do mercado!</h1>
         </div>
            <div id="content">
                <div id="purple ">
                </div>
                <svg id="bg" style="background-color:#8A5858;" width="100%" height="70" viewBox="0 0 100 100" preserveAspectRatio="none">
                  <path id="wavepath" d="M0,0  L110,0C35,150 35,0 0,100z" fill="#ffffff"></path>
                </svg>    
                <div id="white" style="color:red">
                </div>
            </div>
        </main>
        <footer>
    <div class="row">
        <div class="colu">
        <a href="index.html">
          <a id="amano" href="index.aspx">AINOA</a>
        </a>
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
            <li><a href="index.html">The race</a></li>
            <li><a href="aboutme.html">About me</a></li>
            <li><a href="contact.html">Contact</a></li>
            <li><a href="whatis.html">What it is?</a></li>
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
        <style>
            #title {
                background-image: url('assets/imgs/fundosobre.png');
            }
        </style>
    </form>
</body>
</html>
