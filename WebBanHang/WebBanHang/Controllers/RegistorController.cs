using System;
using System.Collections.Generic;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.Mvc;
using WebBanHang.Context;

namespace WebBanHang.Controllers
{

   
    public class RegistorController : Controller
    {
        WebsitebanhangEntities3 objModel = new WebsitebanhangEntities3();
        //create a string MD5
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
      
        // GET: Registor
        [HttpGet]
        public ActionResult Registor()
        {
            return View();
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Registor(User _user)
        {
            if (ModelState.IsValid)
            {
                var check = objModel.User.FirstOrDefault(s => s.Email == _user.Email);
                if (check == null)
                {
                    _user.Password = GetMD5(_user.Password);
                    objModel.Configuration.ValidateOnSaveEnabled = false;
                    objModel.User.Add(_user);
                    objModel.SaveChanges();
                    return RedirectToAction("Registor");
                }
                else
                {
                    ViewBag.error = "Email already exists";
                    return View();
                }


            }
            return View();
        }
    }
   
}