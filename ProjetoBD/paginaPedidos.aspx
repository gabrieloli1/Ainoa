<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="paginaPedidos.aspx.cs" Inherits="ProjetoBD.paginaPedidos" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>Meus Pedidos</title>
    <link href="assets/css/header.css" rel="stylesheet" />
    <link href="assets/css/footer.css" rel="stylesheet" />
    <link href="assets/css/pedidos.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <header>
            <h1>Meus Pedidos</h1>
        </header>
        <main>
            <asp:GridView ID="gridPedidos" runat="server" AutoGenerateColumns="false">
                <Columns>
                    <asp:BoundField DataField="NomeProduto" HeaderText="Nome do Produto" />
                    <asp:BoundField DataField="Valor" HeaderText="Valor" />
                    <asp:BoundField DataField="Data" HeaderText="Data do Pedido" />
                    <asp:BoundField DataField="Detalhe" HeaderText="Detalhe do Pedido" />
                </Columns>
            </asp:GridView>
        </main>
        <footer>
            <p>© 2024 - Todos os direitos reservados</p>
        </footer>
    </form>
</body>
</html>
