using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static ProjetoBD.ClsProg;

namespace ProjetoBD
{
    public partial class paginaPedidos : System.Web.UI.Page
    {
        private ClsProg _clsProg;


        public paginaPedidos()
        {
            _clsProg = new ClsProg();
        }

  

        protected void btnImage_Click(object sender, EventArgs e)
        {
            pnlSidenav.CssClass = "sidenav visible";
        }

        protected void btnClose_Click(object sender, EventArgs e)
        {
            pnlSidenav.CssClass = "sidenav closing";
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                 pnlSidenav.CssClass = "sidenav";
                List<Pedido> pedidos = _clsProg.pegarInfoPedidos();
                StringBuilder htmlBuilder = new StringBuilder();

                foreach (var pedido in pedidos)
                {
                    htmlBuilder.Append("<div class='pedido-item'>");
                    htmlBuilder.AppendFormat("<p>Nome do Produto: {0}</p>", pedido.NomeProd);
                    htmlBuilder.AppendFormat("<p>Valor do Pedido: {0}</p>", pedido.ValorPedido);
                    htmlBuilder.AppendFormat("<p>Data do Pedido: {0}</p>", pedido.DataPed);
                    htmlBuilder.AppendFormat("<p>Quantidade do Pedido: {0}</p>", pedido.QntPedido);
                    htmlBuilder.Append("</div>");
                }

                litPedidos.Text = htmlBuilder.ToString();
            }


        }
    }
}