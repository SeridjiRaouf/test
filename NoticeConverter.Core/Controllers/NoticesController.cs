using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Routing;
using NoticeConverter.Core.Models.Notices;
using NoticeConverter.Core.Services.Notices;
using System;
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
        [Route("Find/{isbn?}/{titre?}/{auteur?}")]
        public IActionResult Find(string isbn = null, string titre = null, string auteur = null)
        {
            List<Notice> result = _service.FindNotices(isbn, titre, auteur);
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

        [HttpGet]
        [Route("Cote/{cote}")]
        public IActionResult GetByCote(string cote)
        {
            try
            {
                Notice notice = _service.GetByCote(cote);
                return notice == null ? (IActionResult)NotFound() : Ok(notice);
            }
            catch (Exception e)
            {
                return Problem(e.Message);
            }
        }

        [HttpGet]
        [Route("isbn/{isbn}")]
        public IActionResult GetByIsbn(string isbn)
        {
            try
            {
                Notice notice = _service.GetByIsbn(isbn);
                return notice == null ? (IActionResult)NotFound() : Ok(notice);
            }
            catch (Exception e)
            {
                return Problem(e.Message);
            }
        }

        [HttpPost]
        public IActionResult CreateNotice(Notice notice)
        {
            try
            {
                _service.CreateNotice(notice);
                return Ok(notice.Cote);
            }
            catch (Exception e)
            {
                return BadRequest($"Echec de la création de la notice :{e.Message}");
            }
        }
    }
}