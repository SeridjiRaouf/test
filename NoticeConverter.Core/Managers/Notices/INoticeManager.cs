using NoticeConverter.Core.Models.Notices;
using System.Collections.Generic;

namespace NoticeConverter.Core.Managers.Notices
{
    public interface INoticeManager
    {
        List<Notice> SelectAllNotices();

        List<Notice> SelectNotices(string isbn, string titre, string auteur);

        void InsertNotice(Notice notice);

        Notice SelectByCote(string cote);

        Notice SelectByISBN(string isbn);
    }
}