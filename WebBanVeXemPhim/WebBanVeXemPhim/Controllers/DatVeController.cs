using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System.ComponentModel.DataAnnotations;
using WebBanVeXemPhim.Models;

namespace WebBanVeXemPhim.Controllers
{
    [TypeFilter(typeof(CheckLoginFilter))]
    public class DatVeController : Controller
    {
        private readonly QuanLyBanVeXemPhimContext _context;

        public DatVeController(QuanLyBanVeXemPhimContext context)
        {
            _context = context;
        }
        
        [HttpPost]
        public IActionResult XacNhanDatVe([FromBody] DatVeRequest request)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            var ticketIds = DatVe(request);

            if (ticketIds == null || ticketIds.Count == 0)
            {
                return BadRequest(new { message = "Không thể đặt vé. Vui lòng thử lại." });
            }

            return Ok(new { ticketIds, message = "Đặt vé thành công!" });
        }

        public List<int> DatVe(DatVeRequest request)
        {
            int MaNguoiDung = HttpContext.Session.GetInt32("NguoiDung") ?? 0;
            List<int> ticketIds = new List<int>();
            using (var transaction = _context.Database.BeginTransaction())
            {
                try
                {
                    foreach (var maGhe in request.Seats)
                    {
                        bool isSeatBooked = _context.Ves.Any(v => v.MaLichChieu == request.MaLichChieu && v.MaGhe == maGhe);
                        if (isSeatBooked)
                        {
                            throw new Exception($"Ghế {maGhe} đã có người đặt. Vui lòng chọn ghế khác!");
                        }

                        var ve = new Ve
                        {
                            MaLichChieu = request.MaLichChieu,
                            MaGhe = maGhe,
                            MaKhachHang = MaNguoiDung,
                            GiaVe = request.TotalPrice / request.SoSeats,
                            NgayDat = DateTime.Now,
                            TrangThai = false
                        };

                        _context.Ves.Add(ve);
                        _context.SaveChanges();

                        ticketIds.Add(ve.MaVe);
                    }

                    transaction.Commit();
                    return ticketIds;
                }
                catch (Exception ex)
                {
                    transaction.Rollback();
                    Console.WriteLine("Lỗi đặt vé: " + ex.Message);
                    return new List<int>();
                }
            }
        }

        public IActionResult Index(int orderId)
        {

            var ve = _context.Ves
                .Include(v => v.MaGheNavigation)
                .Where(v => v.MaVe == orderId && v.TrangThai==false)
                .Select(v => new
                {
                    v.MaLichChieu,
                    v.MaKhachHang
                })
                .FirstOrDefault();
            var order = _context.Ves
                .Include(v => v.MaGheNavigation)
                .Include(v => v.MaLichChieuNavigation)
                .Include(v => v.MaLichChieuNavigation.MaPhimNavigation)
                .Include(v => v.MaKhachHangNavigation)
                .Where(v => v.MaKhachHang == ve.MaKhachHang && v.MaLichChieu == ve.MaLichChieu && v.TrangThai == false)
                .Select(v => new
                {
                    v.MaVe,
                    GioChieu = v.MaLichChieuNavigation.GioChieu,
                    v.MaLichChieu,
                    v.MaKhachHang,
                    TenPhim = v.MaLichChieuNavigation.MaPhimNavigation.TenPhim,
                    TenKhach = v.MaKhachHangNavigation.TenNguoiDung,
                    SoGhe = v.MaGheNavigation != null ? v.MaGheNavigation.SoGhe : "Chưa rõ",
                    v.MaGhe,
                    v.GiaVe,
                    v.NgayDat
                })
                .ToList();

            if (order == null)
            {
                return NotFound("Không tìm thấy đơn hàng!");
            }

            return View(order);
        }
        public async Task<IActionResult> ThongTinVe( bool check)
        {
            if (check == true)
            {
                int MaNguoiDung = HttpContext.Session.GetInt32("NguoiDung") ?? 0;

                var order = _context.Ves
                    .Include(v => v.MaGheNavigation)
                    .Include(v => v.MaLichChieuNavigation)
                    .Include(v => v.MaLichChieuNavigation.MaPhimNavigation)
                    .Include(v => v.MaLichChieuNavigation.MaPhongNavigation)
                    .Where(v => v.MaKhachHang == MaNguoiDung && v.TrangThai == false)
                    .Select(v => new
                    {
                        SoGhe = v.MaGheNavigation.SoGhe,
                        SoPhong = v.MaLichChieuNavigation.MaPhongNavigation.TenPhong,
                        GioChieu = v.MaLichChieuNavigation.GioChieu,
                        Ngaychieu = v.MaLichChieuNavigation.NgayChieu,
                        TenPhim = v.MaLichChieuNavigation.MaPhimNavigation.TenPhim,
                        ThoiLuong = v.MaLichChieuNavigation.MaPhimNavigation.ThoiLuong,
                        v.GiaVe,
                        v.MaVe,
                        v.MaLichChieu,
                        v.MaKhachHang
                    })
                    .ToArray();
                ViewBag.VeDaMua = order;
                if (!order.Any())
                {
                    return NotFound("Không tìm thấy đơn hàng!");
                }

                var payments = new List<ThanhToan>();
                foreach (var item in order)
                {
                    var existingPayment = _context.ThanhToans.FirstOrDefault(p => p.MaVe == item.MaVe);
                    if (existingPayment != null)
                    {
                        return BadRequest("Vé này đã được thanh toán!");
                    }

                    payments.Add(new ThanhToan
                    {
                        MaVe = item.MaVe,
                        PhuongThuc = "Chuyển khoản qua ngân hàng",
                        NgayThanhToan = DateTime.Now,
                        TrangThai = "Đã Thanh Toán"
                    });
                }

                _context.ThanhToans.AddRange(payments);
                await _context.SaveChangesAsync();

                await UpdateVe(MaNguoiDung);

                return RedirectToAction("Index", "Home");
              
            }
            return RedirectToAction("ThanhToanThanhCong", "DatVe");

        }


        public IActionResult Success(int orderId)
        {
            return View(orderId);
        }
        public async Task<IActionResult> dieuhuong()
        {
            int MaNguoiDung = HttpContext.Session.GetInt32("NguoiDung")??0;
            if (MaNguoiDung != 0)
            {
                var veCanXoa = await _context.Ves
               .Where(v => v.TrangThai == false && v.MaKhachHang == MaNguoiDung)
               .ToListAsync();
                _context.Ves.RemoveRange(veCanXoa);
                await _context.SaveChangesAsync();
                return RedirectToAction("Index", "Home");
            }
            return RedirectToAction("Index", "Home");
        }
        public IActionResult ThanhToanThanhCong()
        {
            long MaDonHang = HttpContext.Session.GetInt32("MaDonHang") ?? 0;
            return RedirectToAction("CheckOrderStatus", "PayOS", new { orderCode = MaDonHang });

        }
        public async Task<IActionResult> UpdateVe(int MaNguoiDung)
        {
            // Tìm vé cần cập nhật
            var veCanUpdate = _context.Ves
                .Where(v => v.TrangThai == false && v.MaKhachHang == MaNguoiDung)
                .ToList(); // Thêm `await` vì đây là truy vấn async

            // Kiểm tra nếu không tìm thấy vé nào
            if (veCanUpdate == null)
            {
                return NotFound("Không tìm thấy vé nào cần cập nhật!");
            }
            foreach (var ve in veCanUpdate)
            {
                ve.TrangThai = true;
               
            }
            await _context.SaveChangesAsync();
            // Cập nhật trạng thái của vé

            // Lưu thay đổi vào database
            return Ok("Cập nhật vé thành công!");
        }




        public class DatVeRequest
        {
            [Required(ErrorMessage = "Mã lịch chiếu không được để trống.")]
            public int MaLichChieu { get; set; }

            [Required(ErrorMessage = "Vui lòng chọn ít nhất một ghế.")]
            public List<int> Seats { get; set; } = new List<int>();

            [Required]
            [Range(1, int.MaxValue, ErrorMessage = "Số ghế phải lớn hơn 0.")]
            public int SoSeats { get; set; }

            [Required]
            [Range(1000, double.MaxValue, ErrorMessage = "Tổng tiền phải lớn hơn 1.000 VNĐ.")]
            public decimal TotalPrice { get; set; }
        }
    }
}
