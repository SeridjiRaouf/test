using NoticeConverter.Core.Managers.Notices;
using NoticeConverter.Core.Models.Notices;
using System;
using System.Collections.Generic;

namespace NoticeConverter.Core.Services.Notices
{
    public partial class NoticeService : INoticeService
    {
        private readonly INoticeManager _manager;

        public NoticeService(INoticeManager manager) => _manager = manager;

        public List<Notice> GetNotices() => _manager.SelectAllNotices();

        public List<Notice> FindNotices(string isbn, string titre, string auteur)
        {
            if (isbn == null) isbn = string.Empty;
            if (titre == null) titre = string.Empty;
            if (auteur == null) auteur = string.Empty;
            return _manager.SelectNotices(isbn, titre, auteur);
        }

        public Notice GetByCote(string Cote)
        {
            try
            {
                ValiderEntree(Cote);
                return _manager.SelectByCote(Cote);
            }
            catch (Exception)
            {
                throw new Exception("La Cote est vide");
            }
        }

        public Notice GetByIsbn(string Isbn)
        {
            try
            {
                ValiderEntree(Isbn);
                return _manager.SelectByISBN(Isbn);
            }
            catch (Exception)
            {
                throw new Exception("L'ISBN est vide");
            }
        }

        public int GetCount() => _manager.SelectAllNotices().Count;

        public void CreateNotice(Notice notice)
        {
            try
            {
                ValiderNotice(notice);
                _manager.InsertNotice(notice);
            }
            catch (Exception e)
            {
                throw new Exception(e.Message);
            }
        }
    }
}