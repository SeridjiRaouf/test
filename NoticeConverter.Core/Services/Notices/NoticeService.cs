using NoticeConverter.Core.Managers.Notices;
using NoticeConverter.Core.Models.Notices;
using System.Collections.Generic;

namespace NoticeConverter.Core.Services.Notices
{
    public class NoticeService : INoticeService
    {
        private readonly INoticeManager _manager;

        public NoticeService(INoticeManager manager)
        {
            _manager = manager;
        }

        public List<Notice> GetNotices()
        {
            return _manager.SelectAllNotices();
        }

        public int GetCount()
        {
            return _manager.SelectAllNotices().Count;
        }
    }
}