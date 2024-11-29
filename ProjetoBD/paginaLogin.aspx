<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="paginaLogin.aspx.cs" Inherits="ProjetoBD.paginaLogin" %>

<!DOCTYPE html>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
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
            height: 110vh;
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
        /* Estilos gerais já existentes permanecem aqui */

/* Ajustes específicos para dispositivos móveis */
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

/* Estilos gerais */
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
    min-height: 100vh; /* Ajusta o fundo ao tamanho da tela */
    margin: 0 auto; /* Centraliza o conteúdo */
    padding: 0;
}

.container {
    background-color: #E5BEBF;
    padding: 3vh 5%; 
    border-radius: 5px; /* Bordas menos arredondadas */
    box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2);
    width: 100%;
    max-width: 400px; /* Ajusta para telas menores */
    text-align: center;
}

h1 {
    color: #944242;
    font-size: 1.8rem;
    margin-bottom: 2vh;
    font-weight: bold;
}

.form-group {
    margin-bottom: 2.5vh;
    text-align: left;
}

.form-group label {
    display: block;
    margin-bottom: 0.5vh;
    color: #5a5a5a;
    font-size: 0.9rem;
    font-weight: bold;
}

.form-group input, .form-group .asp-textbox {
    width: 100%;
    padding: 1.5vh;
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

/* Responsividade para dispositivos móveis */
/* Estilos gerais */
* {
    padding: 0;
    box-sizing: border-box;
                margin-left: 0;
                margin-right: 0;
                margin-top: 0;
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
    min-height: 100vh; /* Fundo ocupa o tamanho total da tela */
    margin: 0 auto;
    padding: 0;
}

.container {
    background-color: #E5BEBF;
    padding: 3vh 5%;
    border-radius: 8px;
    box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2);
    width: 100%;
    max-width: 600px; /* Largura máxima para desktops */
    text-align: center;
}

h1 {
    color: #944242;
    font-size: 2rem;
    margin-bottom: 2vh;
    font-weight: bold;
}

.form-group {
    margin-bottom: 3vh;
    text-align: left;
}

.form-group label {
    display: block;
    margin-bottom: 0.8vh;
    color: #5a5a5a;
    font-size: 1rem;
    font-weight: bold;
}

.form-group input, .form-group .asp-textbox {
    width: 100%;
    padding: 1.5vh;
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
    padding: 1.8vh 2vw;
    border: none;
    border-radius: 5px;
    font-size: 1.1rem;
    cursor: pointer;
    margin-top: 2vh;
    width: 100%;
}

button:hover, .asp-button:hover {
    background-color: #7a3535; 
}

/* Responsividade para dispositivos móveis */
@media (max-width: 768px) {
    .container {
        max-width: 90%; /* Aumenta a largura para 90% da tela */
        padding: 4%;
    }

    h1 {
        font-size: 1.6rem; /* Ajuste do tamanho do título */
    }

    .form-group label {
        font-size: 0.9rem; /* Ajuste do tamanho da fonte do label */
    }

    .form-group input, .form-group .asp-textbox {
        font-size: 1rem; /* Ajuste do tamanho da fonte dos campos */
        padding: 1.5vh; /* Ajuste de espaçamento */
    }

    button, .asp-button {
        font-size: 1rem; /* Ajuste de tamanho do botão */
        padding: 1.6vh 2vw; /* Ajuste de espaçamento interno do botão */
    }
}

@media (max-width: 480px) {
    .container {
        max-width: 100%; /* Ainda mais largo em telas muito pequenas */
        padding: 5%;
    }

    h1 {
        font-size: 1.4rem; /* Título menor para telas muito pequenas */
    }

    .form-group input, .form-group .asp-textbox {
        padding: 1.09vh; /* Reduzindo o padding em telas menores */
    }

    button, .asp-button {
        font-size: 0.9rem; /* Ajuste do tamanho do botão */
        padding: 1.4vh 2vw; /* Ajuste do tamanho do botão em telas menores */
    }
}

}


    </style>
<body>
    <form id="form1" runat="server">
        <div>
                <header>

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
        <asp:Button ID="btnLogin" runat="server" Text="Cadastrar" CssClass="asp-button" OnClick="btnLogin_Click" />
    </div>
</form>

</body>
</html>
