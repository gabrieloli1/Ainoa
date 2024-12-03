<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="paginaCadastro.aspx.cs" Inherits="ProjetoBD.paginaCadastro" %>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cadastro</title>
    <link href="assets/css/cadastro.css?v=2" rel="stylesheet" />
</head>

<body>
    <form id="form1" runat="server">
        <header>
            
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
