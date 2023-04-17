using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace WebBanHang.Models
{
    public partial class ProductMasterData
    {
        public int Id { get; set; }
        [Required]
        [Display(Name = "Tên sản phẩm")]
        public string Name { get; set; }
        [Display(Name = "Hình ảnh")]
        public string Avatar { get; set; }
        [Display(Name = "Loại sản phẩm")]
        public Nullable<int> CategoryId { get; set; }
        [Display(Name = "Mô tả ngắn")]
        public string ShortDes { get; set; }
        [Display(Name = "Mô tả dài")]
        public string FullDestription { get; set; }
        [Required]
        [Display(Name = "Giá")]
        public Nullable<double> Price { get; set; }
        [Display(Name = "Giá khuyến mãi")]
        public Nullable<double> PriceDiscount { get; set; }
        [Display(Name = "Kiểu")]
        public Nullable<int> TypeId { get; set; }
        [Required]
        [Display(Name = "Đường dẫn")]
        public string Slug { get; set; }
        [Display(Name = "Thương hiệu")]
        public Nullable<int> BrandID { get; set; }
        public Nullable<bool> Deleted { get; set; }
        public Nullable<bool> ShowOnHomePage { get; set; }
        public Nullable<int> DisplayOrder { get; set; }
        [Display(Name = "Ngày tạo")]
        public Nullable<System.DateTime> CreatedOnUtc { get; set; }
        [Display(Name = "Ngày sửa")]
        public Nullable<System.DateTime> UpdatedOnUtc { get; set; }
        [NotMapped]
        public System.Web.HttpPostedFileBase ImageUpload { get; set; }

    }
   
}