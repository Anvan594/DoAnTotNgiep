using System;
using System.Collections.Generic;

namespace WebBanVeXemPhim.Models;

public partial class ThanhToan
{
    public int MaThanhToan { get; set; }

    public int MaVe { get; set; }

    public string PhuongThuc { get; set; } = null!;

    public string TrangThai { get; set; } = null!;

    public DateTime? NgayThanhToan { get; set; }

    public virtual ICollection<Combo> Combos { get; set; } = new List<Combo>();

    public virtual Ve MaVeNavigation { get; set; } = null!;
}
