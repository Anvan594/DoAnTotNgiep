
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System.Diagnostics;
using WebBanVeXemPhim.Models;

namespace WebBanVeXemPhim.Controllers
{
    public class HomeController : Controller
    {
        private readonly QuanLyBanVeXemPhimContext _context;

        public HomeController(QuanLyBanVeXemPhimContext context)
        {
            _context = context;
        }

        public async Task<IActionResult> IndexAsync(string searchString)
        {
            // Lấy danh sách phim
            var query = _context.Phims.AsQueryable();
            HttpContext.Session.SetInt32("MaKhachHang", 1);
            if (!string.IsNullOrEmpty(searchString))
            {
                query = query.Where(p => p.TenPhim.Contains(searchString));
            }

            var danhSachPhim = await query.OrderBy(p => p.MaPhim).ToListAsync();
            ViewBag.SearchString = searchString;

            // Lấy danh sách trailer
            var danhSachTrailer = await _context.Trailers.ToListAsync();
            ViewBag.DanhSachTrailer = danhSachTrailer;

            // Lấy danh sách lịch chiếu + số ghế trống
            var danhSachLichChieu = await _context.LichChieus
            .Include(lc => lc.MaPhongNavigation) // Load phòng chiếu
            .Select(lc => new
            {
                lc.NgayChieu,
                lc.GioChieu,
                lc.MaPhim,
                lc.MaLichChieu,
                lc.MaPhong,
                lc.GiaVe,
                TongGhe = lc.MaPhongNavigation.SoLuongGhe,
                SoGheDaDat = _context.Ves
                    .Where(dv => dv.MaLichChieu == lc.MaLichChieu && dv.TrangThai == true)
                    .Count()
            })
            .OrderBy(lc => lc.NgayChieu) // 🟢 Sắp xếp theo ngày chiếu tăng dần
            .ThenBy(lc => lc.GioChieu)  // 🟢 Sắp xếp tiếp theo giờ chiếu tăng dần
            .ToListAsync();

            // Tính số ghế trống và truyền vào ViewBag
            ViewBag.DanhSachLichChieu = danhSachLichChieu.Select(lc => new
            {
                lc.NgayChieu,
                lc.GioChieu,
                lc.MaPhim,
                lc.MaLichChieu,
                lc.MaPhong,
                lc.TongGhe,
                lc.GiaVe,
                TongGheTrong = lc.TongGhe - lc.SoGheDaDat

            }).ToList();
            var DanhSachVe = await _context.Ves
             .Include(v => v.MaGheNavigation) // Load thông tin ghế
             .Select(v => new {
                 MaVe = v.MaVe,         // Mã vé
                 Giave=v.GiaVe,
                 MaLichChieu = v.MaLichChieu, // Mã lịch chiếu
                 MaGhe = v.MaGhe,       // Mã ghế
                 SoGhe = v.MaGheNavigation.SoGhe, // Số ghế
                 TrangThai = v.TrangThai // Trạng thái vé (true: đã đặt, false: còn trống)
             })
             .ToListAsync();
            var danhSachGhe = await _context.Ghes
             .Select(g => new
             {
                 g.LoaiGhe,
                 g.MaGhe,   // Mã ghế
                 g.SoGhe,   // Số ghế (A1, A2, B1, B2)
                 g.MaPhong  // Mã phòng
             })
             .OrderBy(g => g.SoGhe) // Sắp xếp theo số ghế
             .ToListAsync();

            ViewBag.DanhSachGhe = danhSachGhe;



            ViewBag.DanhSachVe = DanhSachVe;
           
            return View(danhSachPhim);
        }

        
        public IActionResult BookTickets([FromBody] BookingRequest request)
        {
            try
            {
                if (request.Seats == null || request.Seats.Count == 0)
                {
                    return BadRequest(new { message = "Bạn chưa chọn ghế nào!" });
                }

                int? maKhachHang = HttpContext.Session.GetInt32("MaKhachHang");
                //if (!maKhachHang.HasValue)
                //{
                //    return Unauthorized(new { message = "Bạn chưa đăng nhập!" });
                //}

                foreach (var seat in request.Seats) // Xóa vòng lặp dư thừa
                {
                    var newVes = new Ve
                    {
                        MaKhachHang = maKhachHang.Value,
                        MaLichChieu = request.MaLichChieu,
                        MaGhe = seat.MaGhe,
                        GiaVe = seat.GiaGhe,
                        TrangThai = true
                    };

                    _context.Ves.Add(newVes);
                }

                _context.SaveChanges();
                return Ok(new { message = "Đặt vé thành công!" });
            }
            catch (Exception ex)
            {
                return StatusCode(500, new { message = "Lỗi hệ thống!", error = ex.Message });
            }
        }




        // Model nhận dữ liệu từ FE
        public class BookingRequest
        {
            public int MaLichChieu { get; set; }
            public List<SeatInfo> Seats { get; set; }
            public int TotalPrice { get; set; }
        }

        public class SeatInfo
        {
            public int MaGhe { get; set; }
            public decimal GiaGhe { get; set; }
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
