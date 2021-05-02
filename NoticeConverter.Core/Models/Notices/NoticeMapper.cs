using System.Collections.Generic;
using System.Data;

namespace NoticeConverter.Core.Models.Notices
{
    public static class NoticeMapper
    {
        public static Notice ToNotice(this DataRow row)
        {
            return new Notice()
            {
                Cote = (string)row["Cote"],
                ISBN = (string)row["ISBN"],
                Titre = (string)row["Titre"],
                Auteur = (string)row["Auteur"],
                Pages = (int)row["Pages"]
            };
        }

        public static List<Notice> ToNotices(this DataTable table)
        {
            List<Notice> liste = new List<Notice>();
            foreach (DataRow row in table.Rows)
            {
                liste.Add(row.ToNotice());
            }

            return liste;
        }
    }
}