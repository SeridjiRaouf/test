using NoticeConverter.Core.Models.Notices;
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
    }
}