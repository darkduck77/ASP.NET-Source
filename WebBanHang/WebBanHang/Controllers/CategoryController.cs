using PagedList;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebBanHang.Context;

namespace WebBanHang.Controllers
{
    public class CategoryController : Controller
    {
        // GET: Category
        // GET: Listing_Grid
        WebsitebanhangEntities4 pd = new WebsitebanhangEntities4();
        public ActionResult Category(int Id, string currentFilter, string SearchString, int? page)
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
                lstPd = pd.Product.Where(n => n.Name.Contains(SearchString) && n.TypeId == Id).ToList();

            }
            else
            {
                lstPd = pd.Product.Where(p => p.TypeId == Id).ToList();
            }
            ViewBag.CurrentFilter = SearchString;
            int pageSize = 8;
            int pageNumber = (page ?? 1);

            lstPd = lstPd.OrderByDescending(n => n.Id).ToList();
            return View(lstPd.ToPagedList(pageNumber, pageSize));
        }
    }
}