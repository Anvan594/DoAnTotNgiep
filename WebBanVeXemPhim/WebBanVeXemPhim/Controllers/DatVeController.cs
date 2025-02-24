using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System.ComponentModel.DataAnnotations;
using System.Net.Sockets;
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

            // Gọi phương thức DatVe để đặt vé
            var ticketIds = DatVe(request);

            if (ticketIds == null || ticketIds.Count == 0)
            {
                return BadRequest(new { message = "Không thể đặt vé. Vui lòng thử lại." });
            }

            return Ok(new { ticketIds = ticketIds, message = "Đặt vé thành công!" });
        }

        public List<int> DatVe(DatVeRequest request)
        {
            List<int> ticketIds = new List<int>(); // Danh sách mã vé đã đặt

            try
            {
                foreach (var maGhe in request.Seats)
                {
                    // 🔎 Kiểm tra xem ghế đã có người đặt chưa
                    bool isSeatBooked = _context.Ves.Any(v =>
                        v.MaLichChieu == request.MaLichChieu &&
                        v.MaGhe == maGhe &&
                        v.TrangThai == false || v.TrangThai == true); // Chỉ kiểm tra vé đã đặt

                    if (isSeatBooked)
                    {
                        // Nếu ghế đã có người đặt, thông báo lỗi
                        throw new Exception($"Ghế {maGhe} đang được ng khác đặt. Vui lòng chọn ghế khác!");
                    }

                    // 🆕 Nếu ghế chưa có ai đặt, tiến hành đặt vé
                    var ve = new Ve
                    {
                        MaLichChieu = request.MaLichChieu,
                        MaGhe = maGhe,
                        MaKhachHang = 1, // TODO: Lấy từ User đang đăng nhập
                        GiaVe = request.TotalPrice / request.SoSeats,
                        NgayDat = DateTime.Now,
                        TrangThai = false // Đánh dấu đã đặt
                    };

                    _context.Ves.Add(ve);
                    _context.SaveChanges();

                    ticketIds.Add(ve.MaVe); // Lưu mã vé
                }

                return ticketIds; // Trả về danh sách mã vé đã đặt
            }
            catch (Exception ex)
            {
                Console.WriteLine("Lỗi đặt vé: " + ex.Message);
                return new List<int>(); // Trả về danh sách rỗng nếu lỗi
            }
        }



        public class DatVeRequest
        {
            [Required(ErrorMessage = "Mã lịch chiếu không được để trống.")]
            public int MaLichChieu { get; set; }

            [Required(ErrorMessage = "Vui lòng chọn ít nhất một ghế.")]
            public List<int> Seats { get; set; } = new List<int>();

            [Required(ErrorMessage = "Số lượng ghế không hợp lệ.")]
            [Range(1, int.MaxValue, ErrorMessage = "Số ghế phải lớn hơn 0.")]
            public int SoSeats { get; set; }

            [Required(ErrorMessage = "Tổng tiền không hợp lệ.")]
            [Range(1000, double.MaxValue, ErrorMessage = "Tổng tiền phải lớn hơn 1.000 VNĐ.")]
            public decimal TotalPrice { get; set; }
        }
        public IActionResult Index(int orderId)
        {
            var order = _context.Ves
                .Where(v => v.MaVe == orderId)
                .Select(v => new
                {
                    v.MaVe,
                    v.MaLichChieu,
                    v.MaKhachHang,
                    v.MaGheNavigation.SoGhe,
                    v.GiaVe,
                    v.NgayDat
                })
                .FirstOrDefault();

            if (order == null)
            {
                return NotFound("Không tìm thấy đơn hàng!");
            }

            return View(order);
        }

        // Xử lý thanh toán
        [HttpPost]
        public IActionResult ProcessPayment(int orderId, string paymentMethod)
        {
            var order = _context.Ves.FirstOrDefault(v => v.MaVe == orderId);
            if (order == null)
            {
                return BadRequest("Đơn hàng không hợp lệ.");
            }

            // Cập nhật trạng thái thanh toán
            var payment = new ThanhToan
            {
                MaVe = order.MaVe,
                PhuongThuc = paymentMethod,
                NgayThanhToan = DateTime.Now,
                TrangThai = "Đã Thanh Toán"
            };

            _context.ThanhToans.Add(payment);
            _context.SaveChanges();

            return RedirectToAction("Success", new { orderId = order.MaVe });
        }

        // Trang thanh toán thành công
        public IActionResult Success(int orderId)
        {
            return View(orderId);
        }
    }
}

