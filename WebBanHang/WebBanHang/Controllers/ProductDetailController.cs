using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebBanHang.Context;

namespace WebBanHang.Controllers
{
    public class ProductDetailController : Controller
    {
        // GET: ProductDetail
        WebsitebanhangEntities3 con=new WebsitebanhangEntities3();
        public ActionResult ProductDetail(int Id)
        {
            var product=con.Product.Where(p=>p.Id==Id).FirstOrDefault();
            return View(product);
        }
    }
}