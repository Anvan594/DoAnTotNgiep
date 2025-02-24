using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System.ComponentModel.DataAnnotations;
using WebBanVeXemPhim.Models;

namespace WebBanVeXemPhim.Controllers
{
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
                            MaKhachHang = 1,
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
                .Where(v => v.MaVe == orderId)
                .Select(v => new
                {
                    v.MaLichChieu,
                    v.MaKhachHang
                })
                .FirstOrDefault();
            var order = _context.Ves
                .Include(v => v.MaGheNavigation)
                .Include(v => v.MaLichChieuNavigation)
                .Include(v => v.MaKhachHangNavigation)
                .Where(v => v.MaKhachHang==ve.MaKhachHang&&v.MaLichChieu==ve.MaLichChieu)
                .Select(v => new
                {
                    v.MaVe,
                    GioChieu=v.MaLichChieuNavigation.GioChieu,
                    v.MaLichChieu,
                    TenKhach=v.MaKhachHangNavigation.TenNguoiDung,
                    SoGhe = v.MaGheNavigation != null ? v.MaGheNavigation.SoGhe : "Chưa rõ",
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

        [HttpPost]
        public IActionResult ThanhToan(int orderId, string paymentMethod)
        {
            var order = _context.Ves.FirstOrDefault(v => v.MaVe == orderId);
            if (order == null)
            {
                return NotFound("Không tìm thấy đơn hàng!");
            }

            var existingPayment = _context.ThanhToans.FirstOrDefault(p => p.MaVe == orderId);
            if (existingPayment != null)
            {
                return BadRequest("Vé này đã được thanh toán!");
            }

            var payment = new ThanhToan
            {
                MaVe = order.MaVe,
                PhuongThuc = paymentMethod,
                NgayThanhToan = DateTime.Now,
                TrangThai = "Đã Thanh Toán"
            };

            _context.ThanhToans.Add(payment);
            _context.SaveChanges();

            return RedirectToAction("Success", new { orderId = order.MaVe });
        }

        public IActionResult Success(int orderId)
        {
            return View(orderId);
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
