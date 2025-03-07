using System;
using System.Collections.Generic;

namespace WebBanVeXemPhim.Models;

public partial class Combo
{
    public int MaThanhToan { get; set; }

    public string? Anh { get; set; }

    public decimal? Gia { get; set; }

    public string? TenCombo { get; set; }

    public int MaCombo { get; set; }

    public virtual ThanhToan MaThanhToanNavigation { get; set; } = null!;
}
