using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Web;
using System.Web.Mvc;
using WebBanHang.Context;
using static WebBanHang.Common;

namespace WebBanHang.Areas.Admin.Controllers
{
    public class ProductController : Controller
    {
        WebsitebanhangEntities3 pd = new WebsitebanhangEntities3();
        // GET: Admin/Product
        public ActionResult LoadData()
        {
            // Tải dữ liệu sản phẩm
            var data = pd.Product.ToList();

            // Trả về View với dữ liệu sản phẩm
            return View("ViewName", data);
        }
        public ActionResult Index()
        {
            var lstPd = pd.Product.ToList();
            return View(lstPd);
        }
        public ActionResult Details(int Id)
        {
            var objpd = pd.Product.Where(n => n.Id == Id).FirstOrDefault();
            return View(objpd);
        }
        [HttpGet]
        public ActionResult Create()
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
            objpdt.Name = "Giảm Giá";
           
            lstpdt.Add(objpdt);
            objpdt = new ProductType();
            objpdt.Id = 02;
            objpdt.Name = "Đề Xuất";
            lstpdt.Add(objpdt);
            DataTable dtpdtype = converter.ToDataTable(lstpdt);
            ViewBag.ListPDType   = cm.ToSelectList(dtpdtype, "Id", "Name");
            return View();


        }

       


        [ValidateInput(false)]
        [HttpPost]
        public ActionResult Create(Product objProduct)
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
                        objProduct.ImageUpload.SaveAs(Path.Combine(Server.MapPath("~/Content/images/"), fileName));
                    }
                    objProduct.CreatedOnUtc = DateTime.Now;
                    pd.Product.Add(objProduct);
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
            var objpd = pd.Product.Where(n => n.Id == Id).FirstOrDefault();
            return View(objpd);
        }
        [HttpPost]
        public ActionResult Delete(Product obpd)
        {
            var objpd = pd.Product.Where(n => n.Id == obpd.Id).FirstOrDefault();
            pd.Product.Remove(objpd);
            pd.SaveChanges();
            return RedirectToAction("Index");
        }
        [HttpGet]
        public ActionResult Edit(int Id)
        {
            var objpd = pd.Product.Where(n => n.Id == Id).FirstOrDefault();
            return View(objpd);
        }
        [HttpPost]
        public ActionResult Edit(Product obpd)
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
                obpd.ImageUpload.SaveAs(Path.Combine(Server.MapPath("~/Content/images/"), fileName));
            }
            pd.Entry(obpd).State= EntityState.Modified;
            pd.SaveChanges();
            return RedirectToAction("Index");
        }
    }
}