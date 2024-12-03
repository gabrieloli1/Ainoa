<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="paginaLogin.aspx.cs" Inherits="ProjetoBD.paginaLogin" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Login</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            background-image: url('fundo.jpg'); 
            background-size: cover; 
            background-position: center;
            background-repeat: no-repeat;
            background-attachment: fixed; 
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh; 
            padding: 0;
        }

        .container {
            background-color: #E5BEBF;
            padding: 3vh 5%; 
            border-radius: 10px;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2);
            width: 100%;
            max-width: 800px; 
            min-width: 500px; 
            min-height: 50vh; 
            text-align: center;
            margin: 5vh 0;
        }

        h1 {
            color: #944242; 
            font-size: 2.2rem; 
            margin-bottom: 2vh;
            font-weight: bold;
        }

        .form-group {
            margin-bottom: 3vh; 
            text-align: left;
        }

        .form-group label {
            display: block;
            margin-bottom: 1vh;
            color: #5a5a5a;
            font-size: 1rem;
            font-weight: bold;
        }

        .form-group input, .form-group .asp-textbox {
            width: 100%;
            padding: 2vh; 
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 1rem;
        }

        .form-group input:focus, .form-group .asp-textbox:focus {
            outline: none;
            border-color: #944242;
            box-shadow: 0px 0px 5px rgba(148, 66, 66, 0.5);
        }

        button, .asp-button {
            background-color: #944242; 
            color: white;
            padding: 1.5vh 2vw;
            border: none;
            border-radius: 5px;
            font-size: 1rem;
            cursor: pointer;
            margin-top: 2vh; 
            width: 100%;
        }

        button:hover, .asp-button:hover {
            background-color: #7a3535; 
        }

        #linkCad {
            display: flex;
            flex-direction: column;
        }

        .btn-sair {
            position: absolute;
            top: 20px;
            left: 20px; 
            background-color: #d9534f;
            color: white;
            border: none;
            border-radius: 5px;
            padding: 10px 15px;
            font-size: 1rem;
            cursor: pointer;
            box-shadow: 0px 2px 5px rgba(0, 0, 0, 0.3);
            transition: background-color 0.3s;
        }

        .btn-sair:hover {
            background-color: #c9302c; 
        }

        @media screen and (max-width: 600px) {
            .container {
                padding: 4%;
                width: 70%;
            }

            button, .asp-button, .form-group input, .form-group, .asp-textbox {
                width: 70%;
            }

            h1 {
                font-size: 1.6rem;
            }

            .form-group label {
                font-size: 0.9rem;
            }

            .form-group input, .form-group .asp-textbox {
                font-size: 0.9rem; 
                padding: 1.5vh; 
            }

            button, .asp-button {
                font-size: 0.9rem; 
                padding: 1.2vh; 
            }
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <header>
                
                <asp:Button ID="btnVoltar" runat="server" Text="Sair" CssClass="btn-sair" OnClick="btnVoltar_Click" />
            </header>
            <div class="container">
                <h1>Login</h1>
                <div class="form-group">
                    <label for="txtEmail">E-mail:</label>
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="asp-textbox" placeholder="Digite seu e-mail"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="txtSenha">Senha:</label>
                    <asp:TextBox ID="txtSenha" runat="server" TextMode="Password" CssClass="asp-textbox" placeholder="Digite sua senha"></asp:TextBox>
                </div>
                <div id="linkCad">
                    <div>
                        <p>Ainda não tem login?</p>
                    </div>
                    <div>
                        <a href="paginaCadastro.aspx">Cadastre-se</a>
                    </div>
                </div>
                <asp:Button ID="btnLogin" runat="server" Text="Logar" CssClass="asp-button" OnClick="btnLogin_Click" />
            </div>
        </div>
    </form>
</body>
</html>
