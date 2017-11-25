using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace WebAppPosto
{
    public class VendedorOad
    {
        public static List<Vendedor> Listar()
        {
            List<Vendedor> list = new List<Vendedor>();
            Banco banco = new Banco();
            SqlConnection con = banco.Conexao();
            string str_sql = "SELECT * FROM VENDEDOR";
            SqlCommand command = new SqlCommand(str_sql, con);
            command.CommandType = CommandType.Text;
            try
            {
                SqlDataReader dataReader = command.ExecuteReader();
                while (dataReader.Read())
                {
                    Vendedor result = new Vendedor();
                    result.CodVendedor = Convert.ToInt16(dataReader["codVendedor"]);
                    result.Nome = Convert.ToString(dataReader["nome"]);
                    list.Add(result);
                }
                return list;
            }
            catch (SqlException err)
            {
                throw new ApplicationException(err.Message);
            }
            finally
            {
                con.Close();
            }
        }

        public static void Inserir(Vendedor vendedor)
        {
            Banco banco = new Banco();
            SqlConnection con = banco.Conexao();
            string str_sql = "INSERT INTO Vendedor (nome) VALUES (@nome)";
            SqlCommand command = new SqlCommand(str_sql, con);
            command.CommandType = CommandType.Text;
            command.Parameters.AddWithValue("@nome", vendedor.Nome);
            try
            {
                command.ExecuteNonQuery();
            }
            catch (SqlException err)
            {
                throw new ApplicationException(err.Message);
            }
            finally
            {
                con.Close();
            }
        }

        public static void Alterar(Vendedor vendedor)
        {
            Banco banco = new Banco();
            SqlConnection con = banco.Conexao();
            string str_sql = "UPDATE VENDEDOR SET nome = @nome WHERE codVendedor = @codVendedor";
            SqlCommand command = new SqlCommand(str_sql, con);
            command.CommandType = CommandType.Text;
            command.Parameters.AddWithValue("@codVendedor", vendedor.CodVendedor);
            command.Parameters.AddWithValue("@nome", vendedor.Nome);
            try
            {
                command.ExecuteNonQuery();
            }
            catch (SqlException err)
            {
                throw new ApplicationException(err.Message);
            }
            finally
            {
                con.Close();
            }
        }

        public static void Excluir(Vendedor vendedor)
        {
            Banco banco = new Banco();
            SqlConnection con = banco.Conexao();
            string str_sql = "DELETE FROM VENDEDOR WHERE codVendedor = @codVendedor";
            SqlCommand command = new SqlCommand(str_sql, con);
            command.CommandType = CommandType.Text;
            command.Parameters.AddWithValue("@codVendedor",vendedor.CodVendedor);
            try
            {
                command.ExecuteNonQuery();
            }
            catch (SqlException err)
            {
                throw new ApplicationException(err.Message);
            }
            finally
            {
                con.Close();
            }
        }

        public static Vendedor Obter(Vendedor vendedor)
        {
            Banco banco = new Banco();
            SqlConnection con = banco.Conexao();
            string str_sql = "SELECT * FROM VENDEDOR WHERE codVendedor = @codVendedor";
            SqlCommand command = new SqlCommand(str_sql, con);
            command.CommandType = CommandType.Text;
            command.Parameters.AddWithValue("@codVendedor", vendedor.CodVendedor);
            try
            {
                SqlDataReader dataReader = command.ExecuteReader();
                if (dataReader.Read())
                {
                    Vendedor result = new Vendedor();
                    result.CodVendedor = Convert.ToInt16(dataReader["codVendedor"]);
                    result.Nome = Convert.ToString(dataReader["nome"]);
                    return result;
                }
                else
                {
                    return null;
                }
            }
            catch (SqlException err)
            {
                throw new ApplicationException(err.Message);
            }
            finally
            {
                con.Close();
            }
        }
    }
}
