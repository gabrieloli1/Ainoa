using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjetoBD
{
    public partial class paginaProduto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnPedido_Click(object sender, EventArgs e)
        {
            ClsProg prog = new ClsProg();
            int quantidade = Convert.ToInt32(txtQnt.Text);
            prog.fazerPedido(quantidade, txtNomeProd.Text);
            Response.Write($"<script>alert('{prog.Situacao}');</script>");
            //testeeeeeeeeee
            //teste joao
        }
    }
}