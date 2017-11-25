using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace WebAppPosto
{
    public class TipoOad
    {

        public static List<Tipo> Listar()
        {
            List<Tipo> list = new List<Tipo>();
            Banco banco = new Banco();
            SqlConnection con = banco.Conexao();
            string str_sql = "SELECT * FROM TIPO";
            SqlCommand command = new SqlCommand(str_sql, con);
            command.CommandType = CommandType.Text;
            try
            {
                SqlDataReader dataReader = command.ExecuteReader();
                while (dataReader.Read())
                {
                    Tipo result = new Tipo();
                    result.CodTipo = Convert.ToInt16(dataReader["codTipo"]);
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

        public static void Inserir(Tipo tipo)
        {
            Banco banco = new Banco();
            SqlConnection con = banco.Conexao();
            string str_sql = "INSERT INTO Tipo (nome) VALUES (@nome)";
            SqlCommand command = new SqlCommand(str_sql, con);
            command.CommandType = CommandType.Text;
            command.Parameters.AddWithValue("@nome", tipo.Nome);
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

        public static void Alterar(Tipo tipo)
        {
            Banco banco = new Banco();
            SqlConnection con = banco.Conexao();
            string str_sql = "UPDATE TIPO SET nome = @nome WHERE codTipo = @codTipo";
            SqlCommand command = new SqlCommand(str_sql, con);
            command.CommandType = CommandType.Text;
            command.Parameters.AddWithValue("@codTipo", tipo.CodTipo);
            command.Parameters.AddWithValue("@nome", tipo.Nome);
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

        public static void Excluir(Tipo tipo)
        {
            Banco banco = new Banco();
            SqlConnection con = banco.Conexao();
            string str_sql = "DELETE FROM TIPO WHERE codTipo = @codTipo";
            SqlCommand command = new SqlCommand(str_sql, con);
            command.CommandType = CommandType.Text;
            command.Parameters.AddWithValue("@codTipo", tipo.CodTipo);
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

        //public static Vendedor Obter(Tipo tipo)
        //{
        //    Banco banco = new Banco();
        //    SqlConnection con = banco.Conexao();
        //    string str_sql = "SELECT * FROM TIPO WHERE codTipo = @codTipo";
        //    SqlCommand command = new SqlCommand(str_sql, con);
        //    command.CommandType = CommandType.Text;
        //    command.Parameters.AddWithValue("@codTipo", tipo.CodigoTipo);
        //    try
        //    {
        //        SqlDataReader dataReader = command.ExecuteReader();
        //        if (dataReader.Read())
        //        {
        //            Vendedor result = new Vendedor();
        //            result.CodVendedor = Convert.ToInt16(dataReader["codTipo"]);
        //            result.Nome = Convert.ToString(dataReader["nome"]);
        //            return result;
        //        }
        //        else
        //        {
        //            return null;
        //        }
        //    }
        //    catch (SqlException err)
        //    {
        //        throw new ApplicationException(err.Message);
        //    }
        //    finally
        //    {
        //        con.Close();
        //    }
        //}
    }
}