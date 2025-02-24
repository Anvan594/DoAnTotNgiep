using Microsoft.AspNetCore.Mvc;
using Net.payOS;
using Net.payOS.Types;

namespace WebBanVeXemPhim.Controllers
{
    public class CheckoutApiController : Controller
    {
        private readonly PayOS _payOS;

        // Inject PayOS service
        public CheckoutApiController(PayOS payOS)
        {
            _payOS = payOS;
        }
        [HttpPost]
        public async Task<IActionResult> Create(string maKhach, decimal giave, string soghe, DateTime ngaydat, string giochieu,int MaLichChieu)
        {
            // Dữ liệu của đơn hàng
            Console.WriteLine("mã khách là " + maKhach);
            var domain = "https://localhost:7126"; // Đảm bảo đây là domain thực tế của bạn

            var paymentLinkRequest = new PaymentData(
                orderCode: int.Parse(DateTimeOffset.Now.ToString("ffffff")),
                amount: Convert.ToInt32(giave),
                description: $"Thanh toán đơn hàng {MaLichChieu}",
                items: [new($"Số ghế: {soghe}, Giờ chiếu: {giochieu}, Giá vé: {giave}", 1, Convert.ToInt32(giave))], // Khởi tạo mảng items đúng cách
                returnUrl: domain + "/success.html",
                cancelUrl: domain + "/DatVe/dieuhuong"
            );

            var response = await _payOS.createPaymentLink(paymentLinkRequest);

            // Chuyển hướng đến trang thanh toán
            Response.Headers.Append("Location", response.checkoutUrl);
            return new StatusCodeResult(303); // Mã trạng thái 303 để chuyển hướng
        }

    }
}

