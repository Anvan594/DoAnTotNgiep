using Microsoft.AspNetCore.Mvc;
using WebBanVeXemPhim.Models;

namespace WebBanVeXemPhim.Controllers
{
    public class LoginController : Controller
    {
        public QuanLyBanVeXemPhimContext _context;
        public LoginController(QuanLyBanVeXemPhimContext context)
        {
            _context = context;
        }
        public IActionResult Index()
        {
            return View();
        }
        [HttpPost] // POST -> khi submit form
        public IActionResult Index(Models.LoginNguoiDung model)
        {
            if (!ModelState.IsValid)
            {
                return View(model);// trả về trạng thái lỗi
            }
            // sẽ xử lý logic phần đăng nhập tại đây
            var pass = model.MatKhau;
            var dataLogin = _context.NguoiDungs
    .Where(x => x.Email == model.Email && x.MatKhau == pass)
    .Select(x => new { x.MaNguoiDung, x.Email, x.TrangThai }) // Chỉ lấy cột cần thiết
    .FirstOrDefault();


            if (dataLogin == null)
            {
                ModelState.AddModelError("", "Email hoặc mật khẩu không đúng!");
                return View(model);
            }

            // Kiểm tra trạng thái tài khoản
            if (dataLogin.TrangThai == false)
            {
                ModelState.AddModelError("", "Tài khoản của bạn đã bị khóa!");
                return View(model);
            }

            // Đăng nhập thành công
            
            HttpContext.Session.SetInt32("NguoiDung", dataLogin.MaNguoiDung);
            var user = HttpContext.Session.GetInt32("NguoiDung");
            HttpContext.Session.SetString("Email", dataLogin.Email);
                return RedirectToAction("index", "Home");

        }
        [HttpGet]// thoát đăng nhập, huỷ session
        public IActionResult Logout()
        {
            HttpContext.Session.Remove("NguoiDung"); // huỷ session với key AdminLogin đã lưu trước đó

            return RedirectToAction("Index");
        }
    }
}
