using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebBanHang.Context;
using WebBanHang.Models;

namespace WebBanHang.Controllers
{
    public class Listing_GridController : Controller
    {
        // GET: Listing_Grid
        WebsitebanhangEntities4 pd = new WebsitebanhangEntities4();
        
        
        public ActionResult Listing_Grid(int Id)
        {
            HomeModels homeModels = new HomeModels();
            homeModels.ListCategories = pd.Category.Where(c => c.Id == Id).ToList();
            homeModels.ListProducts = pd.Product.Where(p => p.CategoryId == Id).ToList();
            return View(homeModels);
        }
    }
}