using NoticeConverter.Core.Models.Notices;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;

namespace NoticeConverter.Core.Managers.Notices
{
    public class NoticeManager : INoticeManager
    {
        private const string connectionString = "Data Source=laptop\\mssql;Initial Catalog=NoticeConverter;Integrated Security=True";

        public List<Notice> SelectAllNotices()
        {
            SqlConnection connection = new SqlConnection(connectionString);
            SqlCommand cmd = new SqlCommand("SELECT * FROM NOTICES", connection);
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            connection.Open();
            da.Fill(dt);
            return dt.ToNotices();
        }

        public List<Notice> SelectNotices(string isbn, string titre, string auteur)
        {
            SqlConnection connection = new SqlConnection(connectionString);
            SqlCommand cmd = new SqlCommand("SELECT * FROM FindNotice(@isbn, @titre, @auteur)", connection);
            cmd.Parameters.AddWithValue("@ISBN", isbn);
            cmd.Parameters.AddWithValue("@Titre", titre);
            cmd.Parameters.AddWithValue("@Auteur", auteur);
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            connection.Open();
            da.Fill(dt);
            return dt.ToNotices();
        }

        public void InsertNotice(Notice notice)
        {
            try
            {
                SqlConnection connection = new SqlConnection(connectionString);
                SqlCommand cmd = new SqlCommand("INSERT NOTICES(Cote, ISBN, Titre, Auteur, Editeur, Pages) " +
                                                "VALUES(@Cote, @ISBN, @Titre, @Auteur, @Editeur, @Pages)", connection);
                cmd.Parameters.AddWithValue("@Cote", notice.Cote);
                cmd.Parameters.AddWithValue("@ISBN", notice.ISBN);
                cmd.Parameters.AddWithValue("@Titre", notice.Titre);
                cmd.Parameters.AddWithValue("@Auteur", notice.Auteur);
                cmd.Parameters.AddWithValue("@Editeur", notice.Editeur);
                cmd.Parameters.AddWithValue("@Pages", notice.Pages);
                connection.Open();
                cmd.ExecuteNonQuery();
            }
            catch (Exception e)
            {
                throw new Exception(e.Message);
            }
        }

        public Notice SelectByCote(string cote)
        {
            SqlConnection connection = new SqlConnection(connectionString);
            SqlCommand cmd = new SqlCommand("SELECT * FROM NOTICES WHERE Cote = @Cote", connection);
            cmd.Parameters.AddWithValue("@Cote", cote);
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            connection.Open();
            da.Fill(dt);
            return dt.Rows.Count == 0 ? null : dt.Rows[0].ToNotice();
        }

        public Notice SelectByISBN(string isbn)
        {
            SqlConnection connection = new SqlConnection(connectionString);
            SqlCommand cmd = new SqlCommand("SELECT * FROM NOTICES WHERE ISBN = @ISBN", connection);
            cmd.Parameters.AddWithValue("@ISBN", isbn);
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            connection.Open();
            da.Fill(dt);
            return dt.Rows.Count == 0 ? null : dt.Rows[0].ToNotice();
        }
    }
}