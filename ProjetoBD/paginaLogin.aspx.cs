using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjetoBD
{
    public partial class paginaLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            ClsProg prog = new ClsProg();
            prog.logUser(txtEmail.Text, txtSenha.Text);
            Response.Write($"<script>alert('{prog.Situacao}');</script>");
            Response.Write($"<script>alert('{prog.IdUser}');</script>");
            Response.Redirect("testeProd.aspx");

        }
    }
}