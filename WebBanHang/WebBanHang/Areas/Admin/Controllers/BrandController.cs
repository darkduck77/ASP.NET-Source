using PagedList;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using static WebBanHang.Common;
using WebBanHang.Context;

namespace WebBanHang.Areas.Admin.Controllers
{
    public class BrandController : Controller
    {
        // GET: Admin/Brand
        WebsitebanhangEntities4 pd = new WebsitebanhangEntities4();
        void LoadData()
        {
            Common cm = new Common();
            var lstcat = pd.Category.ToList();
            ListtoDataTableConverter converter = new ListtoDataTableConverter();
            DataTable dtcat = converter.ToDataTable(lstcat);
            ViewBag.ListCategory = cm.ToSelectList(dtcat, "Id", "Name");

            var lstBrand = pd.Brand.ToList();
            DataTable dtbrand = converter.ToDataTable(lstBrand);
            ViewBag.ListBrand = cm.ToSelectList(dtbrand, "Id", "Name");

            List<ProductType> lstpdt = new List<ProductType>();
            ProductType objpdt = new ProductType();
            objpdt.Id = 01;
            objpdt.Name = "Giảm giá";

            lstpdt.Add(objpdt);
            objpdt = new ProductType();
            objpdt.Id = 02;
            objpdt.Name = "Đề xuất";
            lstpdt.Add(objpdt);
            DataTable dtpdtype = converter.ToDataTable(lstpdt);
            ViewBag.ListPDType = cm.ToSelectList(dtpdtype, "Id", "Name");
        }
        public ActionResult Index(string currentFilter, string SearchString, int? page)
        {
            var lstB = new List<Brand>();
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
                lstB = pd.Brand.Where(n => n.Name.Contains(SearchString)).ToList();

            }
            else
            {
                lstB = pd.Brand.ToList();
            }
            ViewBag.CurrentFilter = SearchString;
            int pageSize = 3;
            int pageNumber = (page ?? 1);

            lstB = lstB.OrderByDescending(n => n.Id).ToList();
            return View(lstB.ToPagedList(pageNumber, pageSize));
        }
        public ActionResult Details(int Id)
        {
            var objpd = pd.Brand.Where(n => n.Id == Id).FirstOrDefault();
            return View(objpd);
        }
        [HttpGet]
        public ActionResult Create()
        {
            this.LoadData();
            return View();


        }




        [ValidateInput(false)]
        [HttpPost]
        public ActionResult Create(Brand objProduct)
        {

            this.LoadData();
            if (ModelState.IsValid)
            {
                try
                {
                    if (objProduct.ImageUpload != null)
                    {
                        //tinhsang.png
                        string fileName = Path.GetFileNameWithoutExtension(objProduct.ImageUpload.FileName);
                        //tenhinh
                        string extension = Path.GetExtension(objProduct.ImageUpload.FileName);
                        //png
                        fileName = fileName + extension;
                        //tenhinh.png
                        objProduct.Avatar = fileName;
                        //lưu file hình
                        objProduct.ImageUpload.SaveAs(Path.Combine(Server.MapPath("~/Content/images/posts"), fileName));
                    }
                    objProduct.CreatedOnUtc = DateTime.Now;
                    pd.Brand.Add(objProduct);
                    pd.SaveChanges();

                    return RedirectToAction("Index");
                }
                catch
                {
                    return View();
                }
            }
            return View(objProduct);
        }
        [HttpGet]
        public ActionResult Delete(int Id)
        {
            var objpd = pd.Brand.Where(n => n.Id == Id).FirstOrDefault();
            return View(objpd);
        }
        [HttpPost]
        public ActionResult Delete(Brand obpd)
        {
            var objpd = pd.Brand.Where(n => n.Id == obpd.Id).FirstOrDefault();
            pd.Brand.Remove(objpd);
            pd.SaveChanges();
            return RedirectToAction("Index");
        }
        [HttpGet]
        public ActionResult Edit(int Id)
        {
            var objpd = pd.Brand.Where(n => n.Id == Id).FirstOrDefault();
            return View(objpd);
        }
        [HttpPost]
        public ActionResult Edit(Brand obpd)
        {
            if (obpd.ImageUpload != null)
            {
                //tinhsang.png
                string fileName = Path.GetFileNameWithoutExtension(obpd.ImageUpload.FileName);
                //tenhinh
                string extension = Path.GetExtension(obpd.ImageUpload.FileName);
                //png
                fileName = fileName + extension;
                //tenhinh.png
                obpd.Avatar = fileName;
                //lưu file hình
                obpd.ImageUpload.SaveAs(Path.Combine(Server.MapPath("~/Content/images/posts"), fileName));
            }
            pd.Entry(obpd).State = EntityState.Modified;
            pd.SaveChanges();
            return RedirectToAction("Index");
        }
    }
}