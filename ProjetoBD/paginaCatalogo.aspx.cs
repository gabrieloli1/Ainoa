using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjetoBD
{
    public partial class paginaPaleta : System.Web.UI.Page
    {
        ClsProg prog = new ClsProg();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                pnlSidenav.CssClass = "sidenav";
            }
        }

        protected void btnImage_Click(object sender, EventArgs e)
        {
            pnlSidenav.CssClass = "sidenav visible";
        }

        protected void btnClose_Click(object sender, EventArgs e)
        {
            pnlSidenav.CssClass = "sidenav closing";
        }

        protected void btnCompra1_Click(object sender, EventArgs e)
        {
            if(prog.IdUser == null)
            {
                Response.Write("<script>alert('Você precisa estar logado para comprar');</script>");
                return;
            }
            else
            {
                prog.fazerPedido(lblprod1.Text);
                Response.Write("<script>alert('pedido realizado com sucesso');</script>");
            }
        }

        protected void btnCompra2_Click(object sender, EventArgs e)
        {
            if (prog.IdUser == null)
            {
                Response.Write("<script>alert('Você precisa estar logado para comprar');</script>");
                return;
            }
            else
            {
                prog.fazerPedido(lblprod2.Text);
                Response.Write("<script>alert('pedido realizado com sucesso');</script>");
            }
        }

        protected void btnCompra3_Click(object sender, EventArgs e)
        {
            if (prog.IdUser == null)
            {
                Response.Write("<script>alert('Você precisa estar logado para comprar');</script>");
                return;
            }
            else
            {
                prog.fazerPedido(lblprod3.Text);
                Response.Write("<script>alert('pedido realizado com sucesso');</script>");
            }
        }

        protected void btnCompra4_Click(object sender, EventArgs e)
        {
            if (prog.IdUser == null)
            {
                Response.Write("<script>alert('Você precisa estar logado para comprar');</script>");
                return;
            }
            else
            {
                prog.fazerPedido(lblprod4.Text);
                Response.Write("<script>alert('pedido realizado com sucesso');</script>");
            }
        }

        protected void btnCompra5_Click(object sender, EventArgs e)
        {
            if (prog.IdUser == null)
            {
                Response.Write("<script>alert('Você precisa estar logado para comprar');</script>");
                return;
            }
            else
            {
                prog.fazerPedido(lblprod5.Text);
                Response.Write("<script>alert('pedido realizado com sucesso');</script>");
            }
        }
    }
}