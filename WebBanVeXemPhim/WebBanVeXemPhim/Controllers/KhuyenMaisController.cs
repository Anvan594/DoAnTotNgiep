using Microsoft.AspNetCore.Mvc;
using WebBanVeXemPhim.Models;

namespace WebBanVeXemPhim.Controllers
{
    public class KhuyenMaisController : Controller
    {
        private readonly QuanLyBanVeXemPhimV2Context _context;
        public KhuyenMaisController(QuanLyBanVeXemPhimV2Context context)
        {
            _context = context;
        }
        public IActionResult Index()
        {
            var khuyenmai=_context.KhuyenMais.ToList();
            return View(khuyenmai);
        }
    }
}
