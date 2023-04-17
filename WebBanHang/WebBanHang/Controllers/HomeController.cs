using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebBanHang.Context;
using WebBanHang.Models;

namespace WebBanHang.Controllers
{
    public class HomeController : Controller
    {
        WebsitebanhangEntities4 pd=new WebsitebanhangEntities4();
        public ActionResult Index()
        {
            HomeModels homeModels = new HomeModels();
            homeModels.ListProducts = pd.Product.ToList();
            homeModels.ListBrands= pd.Brand.ToList();
            homeModels.ListCategories=pd.Category.ToList();
            homeModels.ListUsers=pd.User.ToList();
            return View(homeModels);
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}