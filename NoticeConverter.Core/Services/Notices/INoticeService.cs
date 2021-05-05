using NoticeConverter.Core.Models.Notices;
using System.Collections.Generic;

namespace NoticeConverter.Core.Services.Notices
{
    public interface INoticeService
    {
        List<Notice> GetNotices();

        List<Notice> FindNotices(string isbn, string titre, string auteur);

        Notice GetByCote(string Cote);

        Notice GetByIsbn(string Isbn);

        int GetCount();

        void CreateNotice(Notice notice);
    }
}