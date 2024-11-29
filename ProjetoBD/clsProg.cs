using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System;
using System.Data;
using System.Data.SqlClient;
using System.Linq.Expressions;

namespace ProjetoBD
{
    public class ClsProg
    {
        private string _situacao;
        static private string _idUser;
        private bool _verificacao;


        private SqlConnection conexao;

        public string Situacao { get => _situacao; }
        public bool Verificacao { get => _verificacao; }
        public string IdUser { get => _idUser; }

        public ClsProg()
        {
            string connectionString = "Password=Senha123;Persist Security Info=True;User ID=sa;Initial Catalog=BancoDeDados;Data Source=LAPTOP-VOSLTUJG";
            conexao = new SqlConnection(connectionString);
        }

        public void cadUser(string Nome, string Cpf, string Email, string Senha, string Rua, string CEP, string Cidade, string Estado, string Complemento)
        {
            try
            {
                conexao.Open();
                SqlCommand comando = new SqlCommand("usp_cadastroCliente", conexao);
                comando.CommandType = CommandType.StoredProcedure;
                comando.Parameters.AddWithValue("@cpfcli", Nome);
                comando.Parameters.AddWithValue("@nomeCli", Cpf);
                comando.Parameters.AddWithValue("@emailCli", Email);
                comando.Parameters.AddWithValue("@senhaCli", Senha);
                comando.Parameters.AddWithValue("@rua", Rua);
                comando.Parameters.AddWithValue("@cep", CEP);
                comando.Parameters.AddWithValue("@cidade", Cidade);
                comando.Parameters.AddWithValue("@estado", Estado);
                comando.Parameters.AddWithValue("@complemento", Complemento);
                int resultado = comando.ExecuteNonQuery();
                if (resultado > 0)
                {
                    _situacao = "usuario cadastrado";
                }
                else
                {
                    _situacao = "erro no login";
                }


            }
            catch
            {
                return;
            }
            conexao.Close();
        }
        public void logUser(string email, string senha)
        {
            try
            {
                conexao.Open();

                SqlCommand comando = new SqlCommand("usp_loginCliente", conexao)
                {
                    CommandType = CommandType.StoredProcedure
                };

                comando.Parameters.AddWithValue("@emailCli", email);
                comando.Parameters.AddWithValue("@senhaCli", senha);


                SqlDataReader reader = comando.ExecuteReader();

                if (reader.HasRows)
                {
                    reader.Read();
                    _idUser = reader["id"].ToString();
                    _situacao = "usuario logado";
                }
                else
                {
                    _situacao = "erro no login: informações inválidas";
                }

                reader.Close();
            }
            catch (Exception ex)
            {
                _situacao = $"Erro ao acessar o banco: {ex.Message}";
            }
            finally
            {
                if (conexao.State == ConnectionState.Open)
                {
                    conexao.Close();
                }
            }
        }




        public void fazerPedido(int quantidade, string nomeProd)
        {
            try
            {
                conexao.Open();

                SqlCommand comando = new SqlCommand();
                comando.Connection = conexao;
                comando.CommandType = CommandType.StoredProcedure;
                comando.CommandText = "usp_fazerPedido";
                comando.Parameters.AddWithValue("@idCli", _idUser);
                comando.Parameters.AddWithValue("qntPedido", quantidade);
                comando.Parameters.AddWithValue("nomeProduto", nomeProd);
                int resultado = comando.ExecuteNonQuery();
                if (resultado > 0)
                {
                    _situacao = "pedido realizado";
                }
                else
                {
                    _situacao = "erro ao fazer pedido";
                }
            }
            catch (SqlException ex)
            {
                _situacao = "Erro ao entrar no banco de dados: " + ex.Message;
                return;
            }
        }


        public void pegarInfoPedidos()
        {
            conexao.Open();
            SqlCommand comando = new SqlCommand();
            comando.CommandType = CommandType.StoredProcedure;
            comando.CommandText = "usp_consultarPedidos";
            comando.Parameters.AddWithValue("@idCli", _idUser);

        } // falta arrumar isso aqui

        public void verificarInfo(string[] info)
        {
            _verificacao = false;

            foreach (string item in info)
            {
                if (string.IsNullOrEmpty(item) || item.Length <= 5 || item.Length > 100)
                {
                    _verificacao = false;
                    break;
                }
            }

            _verificacao = true;
        }
    }
}
