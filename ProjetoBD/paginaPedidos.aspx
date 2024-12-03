<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="paginaPedidos.aspx.cs" Inherits="ProjetoBD.paginaPedidos" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>Meus Pedidos</title>
    <link href="assets/css/header.css" rel="stylesheet" />
    <link href="assets/css/footer.css" rel="stylesheet" />
    <link href="assets/css/pedidos.css" rel="stylesheet" />
    <style>
        main {
            display: flex;
            flex-direction: column;
            align-items: center;
            padding: 60px 20px;
            min-height: 120vh;
            background-color: #f5f5f5;
            font-family: 'Montserrat', sans-serif;
        }

        main h1 {
            font-family: 'Playfair Display', serif;
            font-size: 36px;
            color: #e63980;
            margin-bottom: 40px;
            text-align: center;
        }

        .pedido-container {
            background-color: #ffffff;
            border-radius: 20px;
            box-shadow: 0 12px 30px rgba(0, 0, 0, 0.1);
            padding: 40px;
            width: 90%;
            max-width: 900px;
            text-align: center;
            color: #444;
        }

        .pedido-item {
            margin: 25px auto;
            padding: 20px;
            background-color: #f9f9f9;
            border-radius: 15px;
            box-shadow: 0 8px 15px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s, box-shadow 0.3s;
        }

        .pedido-item:hover {
            transform: translateY(-5px);
            box-shadow: 0 12px 20px rgba(0, 0, 0, 0.2);
        }

        .pedido-item p {
            margin: 10px 0;
            color: #555;
            font-size: 18px;
            line-height: 1.6;
            font-family: 'Open Sans', sans-serif;
        }

        .pedido-item p strong {
            color: #e63980;
            font-family: 'Montserrat', sans-serif;
            font-size: 20px;
        }

        @media (max-width: 768px) {
            main {
                padding: 30px;
            }

            .pedido-container {
                padding: 20px;
            }

            .pedido-item {
                padding: 15px;
            }

            .pedido-item p {
                font-size: 16px;
            }

            main h1 {
                font-size: 28px;
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
            <h1></h1>
            <div class="pedido-container">
                <asp:Literal ID="litPedidos" runat="server"></asp:Literal>
            </div>
        </main>
        <footer>
            <div class="row">
                <div class="colu">
                    <p id="especial">Esse site foi criado por Gabriel Eiki e Gabriel Oliveira.</p>
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
                        </ul>
                    </div>
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
            <p class="copyright">© 2024 - Todos os direitos reservados</p>
        </footer>
    </form>
</body>
</html>
