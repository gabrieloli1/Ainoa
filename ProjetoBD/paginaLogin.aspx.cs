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
            if (
                string.IsNullOrEmpty(txtEmail.Text) ||
                string.IsNullOrEmpty(txtSenha.Text) )
            {

                Response.Write("<script>alert('Por favor, preencha todos os campos.');</script>");
                return;
            }
            else
            {
                ClsProg prog = new ClsProg();
                prog.logUser(txtEmail.Text, txtSenha.Text);
                string script = $@"
            <script>
            alert('{prog.Situacao}');
            window.location.href = 'index.aspx';
            </script>";

                Response.Write(script);
            }
        }

        protected void btnVoltar_Click(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
        }
    }
}