using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebBanHang.Context;

namespace WebBanHang.Controllers
{
    public class RegistorController : Controller
    {
        // GET: Registor
        public ActionResult Registor()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Registor(User objuser)
        {
            return View();
        }
    }
}