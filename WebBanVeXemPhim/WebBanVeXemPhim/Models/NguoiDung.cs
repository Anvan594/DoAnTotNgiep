using System;
using System.Collections.Generic;

namespace WebBanVeXemPhim.Models;

public partial class NguoiDung
{
    public int MaNguoiDung { get; set; }

    public string TenNguoiDung { get; set; } 

    public string Email { get; set; } 

    public string MatKhau { get; set; }

    public bool? TrangThai { get; set; }=false;

    public virtual ICollection<ThongBao> ThongBaos { get; set; } = new List<ThongBao>();

    public virtual ICollection<Ve> Ves { get; set; } = new List<Ve>();
}
