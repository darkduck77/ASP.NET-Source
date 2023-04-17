using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebBanHang.Context;

namespace WebBanHang.Models
{
    public class HomeModels
    {
        public List<Category> ListCategories { get; set; }
        public List<User> ListUsers { get; set;}
        public List<Product> ListProducts { get; set; }
        public List<Brand> ListBrands { get; set; }

        internal object ToPagedList(int pageNumber, int pageSize)
        {
            throw new NotImplementedException();
        }

    }
}