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
using System.Security.Cryptography;
using System.Text;
using System.Data.Entity.Infrastructure;

namespace WebBanHang.Areas.Admin.Controllers
{
    public class UserController : Controller
    {
        public static string GetMD5(string str)
        {
            MD5 md5 = new MD5CryptoServiceProvider();
            byte[] fromData = Encoding.UTF8.GetBytes(str);
            byte[] targetData = md5.ComputeHash(fromData);
            string byte2String = null;

            for (int i = 0; i < targetData.Length; i++)
            {
                byte2String += targetData[i].ToString("x2");

            }
            return byte2String;
        }
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
            var lstB = new List<User>();
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
                lstB = pd.User.Where(n => n.FirstName.Contains(SearchString)&&n.LastName.Contains(SearchString)).ToList();

            }
            else
            {
                lstB = pd.User.ToList();
            }
            ViewBag.CurrentFilter = SearchString;
            int pageSize = 3;
            int pageNumber = (page ?? 1);

            lstB = lstB.OrderByDescending(n => n.Id).ToList();
            return View(lstB.ToPagedList(pageNumber, pageSize));
        }
        public ActionResult Details(int Id)
        {
            var objpd = pd.User.Where(n => n.Id == Id).FirstOrDefault();
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
        public ActionResult Create(User objUser)
        {

            this.LoadData();
            if (ModelState.IsValid)
            {
                var check = pd.User.FirstOrDefault(s => s.Email == objUser.Email);
                if (check == null)
                {
                    objUser.Password = GetMD5(objUser.Password);
                    pd.Configuration.ValidateOnSaveEnabled = false;
                    pd.User.Add(objUser);
                    pd.SaveChanges();
                    return RedirectToAction("Index");
                }
                else
                {
                    ViewBag.error = "Email already exists";
                    return View();
                }


            }
            return View();
        }
        [HttpGet]
        public ActionResult Delete(int Id)
        {
            var objpd = pd.User.Where(n => n.Id == Id).FirstOrDefault();
            return View(objpd);
        }
        [HttpPost]
        public ActionResult Delete(User obpd)
        {
            var objpd = pd.User.Where(n => n.Id == obpd.Id).FirstOrDefault();
            pd.User.Remove(objpd);
            pd.SaveChanges();
            return RedirectToAction("Index");
        }
        [HttpGet]
        public ActionResult Edit(int Id)
        {
            var objpd = pd.User.Where(n => n.Id == Id).FirstOrDefault();
            return View(objpd);
        }
        [HttpPost]
        public ActionResult Edit(User obpd)
        {
           
                obpd.Password = GetMD5(obpd.Password);
                pd.Configuration.ValidateOnSaveEnabled = false;
            pd.Entry(obpd).State = EntityState.Modified;
            pd.SaveChanges();
                return RedirectToAction("Index");
        }
    }
}