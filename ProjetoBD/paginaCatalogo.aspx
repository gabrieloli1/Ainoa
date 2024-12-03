<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="paginaCatalogo.aspx.cs" Inherits="ProjetoBD.paginaPaleta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@400..700&family=Julius+Sans+One&family=Poetsen+One&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Julius+Sans+One&family=Poetsen+One&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Julius+Sans+One&display=swap" rel="stylesheet">
    <title></title>
<link href="assets/css/header.css?v=2" rel="stylesheet" />
<link href="assets/css/footer.css?v=2" rel="stylesheet" />
<link href="assets/css/catalogo.css?v=2" rel="stylesheet" />
    <style>

main {
  width: 100%;
  margin: 0 auto;
  display: flex;
  flex-direction: column;
}

.marca {
    font-family: 'Montserrat', sans-serif; 
    font-weight: bold;
    font-size: 1.5em;
    text-align: center; 
    margin: 5px 0; 
    color: #d5006d; 
}

.produto {
 font-family: 'Montserrat', sans-serif;
 font-size: 1.1em;
 text-align: center;
 margin: 5px 0;
        }

.preco {
 font-family: 'Montserrat', sans-serif; 
 font-weight: bold;
 font-size: 1.5em; 
 text-align: center; 
 color: #d5006d; 
 margin: 5px 0; 
}

.asp-button {
 
  display: flex; 
  justify-content: center; 
  align-items: center; 
  width: 80%;
  padding: 15px 30px;
  font-size: 18px;
  letter-spacing: 1px;
  text-decoration: none;
  color: #000; 
  background: transparent; 
  cursor: pointer;
  transition: ease-out 0.5s; 
  border: 2px solid #d5006d; 
  border-radius: 10px;
  box-shadow: inset 0 0 0 0 #f5e3ae; 
}

.asp-button:hover {
  color: rgb(255, 255, 255); 
  box-shadow: inset 0 -100px 0 0 rgba(255, 182, 193, 0.8); 
}

.asp-button:active {
  transform: scale(0.9);
}



#p1{
  padding-top: 10vh;
  }

.ficprod {
    display: flex;
    flex: 1;
    align-items: center;
    flex-direction: column;
    margin: 7vh; 
    padding-top: 2vh; 
}

.ficprod img {
  width: 28vh;
  height: 38vh;
  transition: all .3s ease-in-out;
}

.ficprod img:hover {
  width: 29vh;
  height: 39vh;
}

.paginas{
  flex-direction: row;
  display: flex;
}

#p4{
  padding-bottom: 3vh;
}
@media screen and (max-width: 600px) {
  main{
      display: flex;
      flex: 1;
      align-items: center;
      flex-direction: column;
  
  }

  main p{
    font-size: 1.4em;
  }


  .paginas{flex-direction: column;
  
  }

  #p4{
    padding-bottom: 5vh;
  }

  #p1{
  padding-top: 10vh;
  }
}
    </style>
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
        <asp:ImageButton ID="btnImage" ImageUrl="assets/imgs/menu.png" runat="server" OnClick="btnImage_Click"/>
        <a id="amano" href="index.aspx">AINOA</a>
    </header>
        <main>
        <div id="p1" class="paginas">

          <div id="fic1" class="ficprod">
            <img src="assets/imgs/imgBatom.png">
            <p class="marca">NARS</p> 
             <asp:Label ID="lblprod1" CssClass="produto" runat="server" Text="Batom NARS Explicit"></asp:Label>
            <p class="preco">R$ 237,15</p> 
            <asp:Button ID="btnCompra1"  CssClass="asp-button" runat="server" Text="Comprar" OnClick="btnCompra1_Click" />
        </div>
          <div id="fic2" class="ficprod">
            <img src="assets/imgs/imgGloss.png">
            <p class="marca">RABANNE</p> 
            <asp:Label ID="lblprod2" CssClass="produto" runat="server" Text="lipgloss rabanne glowies"></asp:Label>
            <p class="preco">R$ 126,65</p> 
            <asp:Button ID="btnCompra2"  CssClass="asp-button" runat="server" Text="Comprar" OnClick="btnCompra2_Click" />
        </div>

         <div id="fic3" class="ficprod">
            <img src="assets/imgs/imgBody.png">
            <p class="marca">LANCÔME</p> 
            <asp:Label ID="lblprod3" CssClass="produto" runat="server" Text="body & hair mist lancôme"></asp:Label>
            <p class="preco">R$ 233,23</p> 
            <asp:Button ID="btnCompra3"  CssClass="asp-button" runat="server" Text="Comprar" OnClick="btnCompra3_Click" />
        </div>

           <div id="fic4" class="ficprod">
            <img src="assets/imgs/imgDelineado.png">
            <p class="marca">CLINIQUE</p> 
             <asp:Label ID="lblprod4" CssClass="produto" runat="server" Text="lápis delineador em gel</"></asp:Label>
            <p class="preco">R$ 185,15</p> 
            <asp:Button ID="btnCompra4"  CssClass="asp-button" runat="server" Text="Comprar" OnClick="btnCompra4_Click" />
        </div>

           <div id="fic5" class="ficprod">
            <img src="assets/imgs/imgPerfume.png">
            <p class="marca">RABANNE</p> 
            <asp:Label ID="lblprod5" CssClass="produto" runat="server" Text="perfume rabanne"></asp:Label>
            <p class="preco">R$ 237,15</p> 
            <asp:Button ID="btnCompra5"  CssClass="asp-button" runat="server" Text="Comprar" OnClick="btnCompra5_Click" />
        </div>

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
