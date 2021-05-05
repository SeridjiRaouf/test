using NoticeConverter.Core.Models.Notices;
using System;

namespace NoticeConverter.Core.Services.Notices
{
    public partial class NoticeService
    {
        private void ValiderNotice(Notice notice)
        {
            ValiderNonNull(notice);
            ValiderEntree(notice.Cote);
            ValiderCoteInexsitante(notice.Cote);
            ValiderEntree(notice.ISBN);
            ValiderIsbnInexistant(notice.ISBN);
            ValiderEntree(notice.Titre);
            ValiderEntree(notice.Auteur);
            ValiderEntree(notice.Editeur);
        }

        private void ValiderIsbnInexistant(string isbn)
        {
            if (GetByIsbn(isbn) != null)
            {
                throw new Exception($"L'Isbn {isbn} est déja utilisée");
            }
        }

        private void ValiderCoteInexsitante(string Cote)
        {
            if (GetByCote(Cote) != null)
                throw new Exception($"La cote {Cote} est déja utilisée");
        }

        private void ValiderEntree(string value)
        {
            if (string.IsNullOrWhiteSpace(value))
                throw new Exception("Les informations de la notice doivent être correctement remplies");
        }

        private void ValiderNonNull(Notice notice)
        {
            if (notice is null)
                throw new Exception("La notice est vide");
        }
    }
}