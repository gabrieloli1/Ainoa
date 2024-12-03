<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="paginaLogin.aspx.cs" Inherits="ProjetoBD.paginaLogin" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Login</title>
    <link href="assets/css/login.css?v=2" rel="stylesheet" />
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
