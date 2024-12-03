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
        private string _nomeProd;
        private int _qntPedido;
        private int _valorPedido;
        private string _dataPed;

        private SqlConnection conexao;

        public int qntPedido { get => _qntPedido;}
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




        public void fazerPedido(string nomeProd)
        {
            try
            {

                if (conexao.State == ConnectionState.Closed)
                {
                    conexao.Open();
                }

                SqlCommand comando = new SqlCommand("usp_fazerPedido", conexao)
                {
                    CommandType = CommandType.StoredProcedure
                };
                comando.Parameters.AddWithValue("@idCli", _idUser);
                comando.Parameters.AddWithValue("@qntPedido", 1);
                comando.Parameters.AddWithValue("@nomeProduto", nomeProd);

                int resultado = comando.ExecuteNonQuery();


                if (resultado > 0)
                {
                    _situacao = "Pedido realizado com sucesso.";
                }
                else
                {
                    _situacao = "Erro ao fazer pedido.";
                }
            }
            catch (SqlException ex)
            {
                _situacao = "Erro ao conectar ao banco de dados: " + ex.Message;
            }
        }



        public class Pedido
{
    public string NomeProd { get; set; }
    public int ValorPedido { get; set; }
    public string DataPed { get; set; }
    public int QntPedido { get; set; }
}

public List<Pedido> pegarInfoPedidos()
{
    List<Pedido> pedidos = new List<Pedido>();

    try
    {
        conexao.Open();
        SqlCommand comando = new SqlCommand("usp_consultarPedidos", conexao)
        {
            CommandType = CommandType.StoredProcedure
        };
        comando.Parameters.AddWithValue("@idCli", _idUser);

        SqlDataReader reader = comando.ExecuteReader();

        while (reader.Read())
        {
            Pedido pedido = new Pedido
            {
                NomeProd = reader["nomeProd"].ToString(),
                ValorPedido = Convert.ToInt32(reader["valorPed"]),
                DataPed = Convert.ToDateTime(reader["dataPed"]).ToString("dd/MM/yyyy"),
                QntPedido = Convert.ToInt32(reader["qntPed"])
            };
            pedidos.Add(pedido);
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

    return pedidos;
}







    }
}
