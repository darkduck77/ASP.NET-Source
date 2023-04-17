using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;
using System.Xml.Linq;

namespace WebBanHang.Models
{
    public partial class BrandMasterData
    {
        public int Id { get; set; }
        [Required]
        [Display(Name = "Tên thương hiệu")]
        public string Name { get; set; }
        [Display(Name = "Hình ảnh")]
        public string Avatar { get; set; }
        [Required]
        [Display(Name = "Đường dẫn")]
        public string Slug { get; set; }
       
        [Display(Name = "Hiển thị trên trang chủ")]
        public Nullable<bool> ShowOnHomePage { get; set; }
        [Display(Name = "Sắp xếp")]
        public Nullable<int> DisplayOrder { get; set; }
        [Display(Name = "Ngày tạo")]
        public Nullable<System.DateTime> CreatedOnUtc { get; set; }
        [Display(Name = "Ngày sửa")]
        public Nullable<System.DateTime> UpdatedOnUtc { get; set; }
        [Display(Name = "Trạng thái xóa")]
        public Nullable<bool> Deleted { get; set; }
        [NotMapped]
        public System.Web.HttpPostedFileBase ImageUpload { get; set; }
    }
}