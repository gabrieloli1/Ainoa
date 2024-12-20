﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sobre.aspx.cs" Inherits="Ainoa.sobre" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@400..700&family=Julius+Sans+One&family=Poetsen+One&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Julius+Sans+One&family=Poetsen+One&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Julius+Sans+One&display=swap" rel="stylesheet">
    <title>Sobre</title>
<link href="assets/css/header.css?v=2" rel="stylesheet" />
<link href="assets/css/footer.css?v=2" rel="stylesheet" />
<link href="assets/css/sobre.css?v=2" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <asp:Panel ID="pnlSidenav" runat="server" CssClass="sidenav">
            <asp:LinkButton ID="btnClose" runat="server" OnClick="btnClose_Click" CssClass="closebtn" Text="&times;"></asp:LinkButton>
            <a href="index.aspx">Home</a>
            <a href="sobre.aspx">Sobre</a>
            <a href="paginaCatalogo.aspx">Produtos</a>
            <a href="paginaPedidos.aspx">Pedidos</a>
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
                <div id="white">
                    <div class="foto1">
                        <img src="assets/imgs/mulher.png" class="make" alt="Sample Photo" />
                    </div>
                    <div class="text">
                        <p>
                            A Ainoa é uma loja online de cosméticos criada pelos amigos Gabriel Eiki e Gabriel Oliveira. 
                            O objetivo é oferecer produtos de beleza de alta qualidade em uma plataforma prática e acessível, ideal para quem valoriza cuidados pessoais no dia a dia.</p>
                    </div>
                </div>
                <svg id="bg" style="background-color:#8A5858;" width="100%" height="70" viewBox="0 0 100 100" preserveAspectRatio="none">
                  <path id="wavepath" d="M0,0  L110,0C35,150 35,0 0,100z" fill="#ffffff"></path>
                </svg>    
                <div id="purple">
                    <div class="text" id="txtvir">
                        <p>
                            Com um catálogo diversificado, a Ainoa reúne produtos para pele, cabelo e maquiagem, priorizando marcas sustentáveis e cruelty-free. 
                            Gabriel e Gabriel trabalham para tornar a experiência de compra única, promovendo beleza com responsabilidade e estilo.
                        </p>
                    </div>
                    <div class="foto2">
                            <img src="assets/imgs/virginia.png" class="virginia" alt="Sample Photo" />
                    </div>
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
        <style>
            #title {
                background-image: url('assets/imgs/fundosobre.png');
            }
        </style>
    </form>
</body>
</html>
