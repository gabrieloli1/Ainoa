﻿using System;
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
            string[] dados = { txtNome.Text, txtCPF.Text, txtEmail.Text, txtSenha.Text, txtRua.Text, txtCEP.Text, txtCidade.Text, txtEstado.Text, txtComplemento.Text };
            prog.VerificarInfo(dados);
            prog.cadUser(txtNome.Text, txtCPF.Text, txtEmail.Text, txtSenha.Text, txtRua.Text, txtCEP.Text, txtCidade.Text, txtEstado.Text, txtComplemento.Text);
            Response.Write($"<script>alert('{prog.Situacao}');</script>");
            Response.Redirect("paginaLogin.aspx");
            //oiiii tudobwmm
        }
      }
    
};