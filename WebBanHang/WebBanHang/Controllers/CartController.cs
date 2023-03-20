using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebBanHang.Context;
using WebBanHang.Models;

namespace WebBanHang.Controllers
{
    public class CartController : Controller
    {
        // GET: Cart
        WebsitebanhangEntities3 pd = new WebsitebanhangEntities3();
        public ActionResult Cart()
        {
            CartModels model = new CartModels();
            model.ListProducts =pd.Product.ToList();
            return View(model);
        }
    }
}