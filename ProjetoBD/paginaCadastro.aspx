<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="paginaCadastro.aspx.cs" Inherits="ProjetoBD.paginaCadastro" %>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cadastro</title>
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
            height: 160vh;
            padding: 0 5%;
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
            margin-top: 5vh;
            margin-bottom: 5vh; 
        }

        h1 {
            color: #944242; /* Cor do título */
            font-size: 2.2rem; /* Aumenta o tamanho da fonte */
            margin-bottom: 2vh;
            font-weight: bold;
        }

        .form-group {
            margin-bottom: 3vh; /* Ajusta o espaçamento entre os campos */
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

        .form-group + .form-group {
            margin-top: 3vh; 
        }

        /* Estilos do botão "Sair" */
        .btn-sair {
            position: absolute;
            top: 20px;
            left: 20px; /* Posicionando no canto esquerdo */
            background-color: #d9534f; /* Cor vermelha */
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
            background-color: #c9302c; /* Cor vermelha escura no hover */
        }

        /* Responsividade */
        @media (max-width: 768px) {
            body {
                padding: 0 3%;
                height: auto; /* Permite ajuste dinâmico da altura */
            }

            .container {
                padding: 5%;
                margin-top: 3vh;
                margin-bottom: 3vh;
                min-width: auto;
            }

            h1 {
                font-size: 1.8rem; /* Reduz o tamanho do título */
            }

            .form-group label {
                font-size: 0.9rem; /* Ajusta o tamanho da fonte do label */
            }

            .form-group input, .form-group .asp-textbox {
                font-size: 0.9rem; /* Ajusta o tamanho da fonte do input */
                padding: 1.5vh; /* Reduz o espaçamento interno */
            }

            button, .asp-button {
                font-size: 0.9rem; /* Ajusta o tamanho da fonte do botão */
                padding: 1.2vh; /* Ajusta o espaçamento interno */
            }
        }
    </style>
</head>

<body>
    <form id="form1" runat="server">
        <header>
            <!-- Botão de sair -->
            <asp:Button ID="btnSair" runat="server" Text="Sair" CssClass="btn-sair" OnClientClick="window.history.back(); return false;" />
        </header>
        <div class="container">
            <h1>Cadastro</h1>
            <div class="form-group">
                <label for="txtNome">Nome:</label>
                <asp:TextBox ID="txtNome" runat="server" CssClass="asp-textbox" placeholder="Digite seu nome"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="txtCPF">CPF:</label>
                <asp:TextBox ID="txtCPF" runat="server" CssClass="asp-textbox" placeholder="Digite seu CPF"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="txtRua">Rua:</label>
                <asp:TextBox ID="txtRua" runat="server" CssClass="asp-textbox" placeholder="Digite sua rua"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="txtBairro">Bairro:</label>
                <asp:TextBox ID="txtBairro" runat="server" CssClass="asp-textbox" placeholder="Digite seu bairro"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="txtCEP">CEP:</label>
                <asp:TextBox ID="txtCEP" runat="server" CssClass="asp-textbox" placeholder="Digite seu CEP"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="txtCidade">Cidade:</label>
                <asp:TextBox ID="txtCidade" runat="server" CssClass="asp-textbox" placeholder="Digite sua cidade"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="txtEstado">Estado:</label>
                <asp:TextBox ID="txtEstado" runat="server" CssClass="asp-textbox" placeholder="Digite seu estado"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="txtComplemento">Complemento:</label>
                <asp:TextBox ID="txtComplemento" runat="server" CssClass="asp-textbox" placeholder="Digite complementos"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="txtEmail">E-mail:</label>
                <asp:TextBox ID="txtEmail" runat="server" CssClass="asp-textbox" placeholder="Digite seu e-mail"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="txtSenha">Senha:</label>
                <asp:TextBox ID="txtSenha" runat="server" TextMode="Password" CssClass="asp-textbox" placeholder="Digite sua senha"></asp:TextBox>
            </div>
            <asp:Button ID="btnCadastrar" runat="server" Text="Cadastrar" CssClass="asp-button" OnClick="btnCadastrar_Click" />
        </div>
    </form>
</body>
</html>
