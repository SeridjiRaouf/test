using NoticeConverter.Core.Models.Notices;
using System.Collections.Generic;

namespace NoticeConverter.Core.Services.Notices
{
    public interface INoticeService
    {
        List<Notice> GetNotices();
    }
}