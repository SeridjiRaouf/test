using NoticeConverter.Core.Models.Notices;
using System.Collections.Generic;

namespace NoticeConverter.Core.Managers.Notices
{
    public interface INoticeManager
    {
        List<Notice> SelectAllNotices();
    }
}