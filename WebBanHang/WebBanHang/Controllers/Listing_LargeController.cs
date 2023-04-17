using PagedList;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebBanHang.Context;
using WebBanHang.Models;

namespace WebBanHang.Controllers
{
    public class Listing_LargeController : Controller
    {
        // GET: Listing_Large
        WebsitebanhangEntities4 pd = new WebsitebanhangEntities4();
        public ActionResult Listing_Large(int Id, string currentFilter, string SearchString, int? page)
        {

            var lstPd = new List<Product>();
            if (SearchString != null)
            {
                page = 1;
            }
            else
            {
                SearchString = currentFilter;
            }
            if (!string.IsNullOrEmpty(SearchString))
            {
                lstPd = pd.Product.Where(n => n.Name.Contains(SearchString)&&n.BrandID==Id).ToList();
                
            }
            else
            {
                lstPd = pd.Product.Where(p => p.BrandID == Id).ToList();
            }
            ViewBag.CurrentFilter = SearchString;
            int pageSize = 6;
            int pageNumber = (page ?? 1);

            lstPd = lstPd.OrderByDescending(n => n.Id).ToList();
            return View(lstPd.ToPagedList(pageNumber, pageSize));
        }
       /* public ActionResult Listing_Large(int Id)
        {
            HomeModels homeModels = new HomeModels();
            homeModels.ListBrands = pd.Brand.Where(c => c.Id == Id).ToList();
            homeModels.ListProducts = pd.Product.Where(p => p.BrandID == Id).ToList();
            return View(homeModels);
            
        }*/
    }
}