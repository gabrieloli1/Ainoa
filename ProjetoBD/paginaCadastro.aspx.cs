using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjetoBD
{
    public partial class paginaCadastro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCadastrar_Click(object sender, EventArgs e)
        {
            ClsProg prog = new ClsProg();
            if (string.IsNullOrEmpty(txtNome.Text) ||
                string.IsNullOrEmpty(txtCPF.Text) ||
                string.IsNullOrEmpty(txtEmail.Text) ||
                string.IsNullOrEmpty(txtSenha.Text) ||
                string.IsNullOrEmpty(txtRua.Text) ||
                string.IsNullOrEmpty(txtCEP.Text) ||
                string.IsNullOrEmpty(txtCidade.Text) ||
                string.IsNullOrEmpty(txtEstado.Text))
            {
                
                Response.Write("<script>alert('Por favor, preencha todos os campos.');</script>");
                return;
            }

            else
            {
                prog.cadUser(txtNome.Text, txtCPF.Text, txtEmail.Text, txtSenha.Text, txtRua.Text, txtCEP.Text, txtCidade.Text, txtEstado.Text, txtComplemento.Text);
                string script = $@"
            <script>
            alert('{prog.Situacao}');
            window.location.href = 'paginaLogin.aspx';
            </script>";

                Response.Write(script);
            }
        }
      }
    
};