<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="paginaProduto.aspx.cs" Inherits="ProjetoBD.paginaProduto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <asp:TextBox ID="txtNomeProd" runat="server"></asp:TextBox>
            <asp:TextBox ID="txtQnt" runat="server"></asp:TextBox>
            <asp:Button ID="btnPedido" runat="server" Text="Button" OnClick="btnPedido_Click" />

        </div>
    </form>
</body>
</html>
