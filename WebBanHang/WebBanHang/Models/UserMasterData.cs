using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using System.Xml.Linq;

namespace WebBanHang.Models
{
    public partial class UserMasterData
    {
        public int Id { get; set; }
        [Required]
        [Display(Name = "Họ")]
        public string FirstName { get; set; }
        [Required]
        [Display(Name = "Tên")]
        public string LastName { get; set; }
        [Required]
        public string Email { get; set; }
        [Required]
        [Display(Name = "Mật khẩu")]
        public string Password { get; set; }
        [Display(Name = "Admin")]
        public Nullable<bool> IsAdmin { get; set; }
    }
}