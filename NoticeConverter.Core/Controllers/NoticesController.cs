using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Routing;
using NoticeConverter.Core.Models.Notices;
using NoticeConverter.Core.Services.Notices;
using System.Collections.Generic;

namespace NoticeConverter.Core.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class NoticesController : ControllerBase
    {
        private readonly INoticeService _service;

        public NoticesController(INoticeService service)
        {
            _service = service;
        }

        [HttpGet]
        public IActionResult GetAll()
        {
            List<Notice> result = _service.GetNotices();
            return result.Count != 0
                ? (IActionResult)Ok(result)
                : NotFound();
        }

        [HttpGet]
        [Route("getCount")]
        public int GetCount()
        {
            return _service.GetCount();
        }
    }
}