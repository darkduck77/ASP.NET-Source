using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebBanHang.Context;
using WebBanHang.Models;

namespace WebBanHang.Controllers
{
    public class ProductDetailController : Controller
    {
        // GET: ProductDetail
        WebsitebanhangEntities4 pd=new WebsitebanhangEntities4();
        public ActionResult ProductDetail(int Id)
        {
            HomeModels homeModels = new HomeModels();
            homeModels.ListProducts=pd.Product.Where(p => p.Id == Id).ToList();
            
            return View(homeModels);
        }
    }
}