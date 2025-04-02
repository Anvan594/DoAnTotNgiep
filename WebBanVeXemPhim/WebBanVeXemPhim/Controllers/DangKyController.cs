using System;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;
using MailKit.Search;
using MailKit;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using WebBanVeXemPhim.Models;
using MailKit.Net.Imap;

[Route("dangky")]
public class DangKyController : Controller
{
    private readonly QuanLyBanVeXemPhimV2Context _context;

    public DangKyController(QuanLyBanVeXemPhimV2Context context)
    {
        _context = context;
    }

    // Đăng ký tài khoản
    [HttpPost("dangky")]
    public async Task<IActionResult> DangKy([FromBody] RegisterRequest model)
    {
        if (model == null || string.IsNullOrEmpty(model.Email) || string.IsNullOrEmpty(model.Username) || string.IsNullOrEmpty(model.Password))
        {
            return Ok("Vui lòng điền đầy đủ thông tin.");
        }

        if (!IsValidEmail(model.Email))
        {
            return Ok("Email không hợp lệ.");
        }

        if (await _context.NguoiDungs.AnyAsync(u => u.Email == model.Email))
        {
            return Ok("Email đã tồn tại.");
        }

        var scheme = Request.Scheme; // http hoặc https
        var host = Request.Host.Value; // tên miền + cổng, ví dụ "localhost:7126"
        var domain = $"{scheme}://{host}";
        string confirmationLink = $"{domain}/dangky/xacnhan?email={model.Email}&token={GenerateToken()}";

        // Gửi email xác nhận (chỉ gửi một lần)
        bool emailSent = await GuiXacNhanEmail(model.Email, model.Username, confirmationLink);
        if (!emailSent)
        {
            return Ok("Có lỗi khi gửi email xác nhận. Vui lòng thử lại sau.");
        }

        // Kiểm tra email tồn tại dựa trên email vừa gửi
        /* bool emailTonTai = await KiemTraEmailTonTai(model.Email);
         if (!emailTonTai)
         {
             return Ok("Email không tồn tại hoặc hộp thư đã đầy!");
         }
 */
        // Nếu email hợp lệ, lưu tài khoản
        var user = new NguoiDung
        {
            TenNguoiDung = model.Username,
            Email = model.Email,
            MatKhau = HashPassword(model.Password),
            TrangThai = false
        };

        _context.NguoiDungs.Add(user);
        await _context.SaveChangesAsync();

        return Ok("Vui lòng kiểm tra email để xác nhận tài khoản!");
    }

    // Xác nhận tài khoản qua email
    [HttpGet("xacnhan")]
    public async Task<IActionResult> XacNhan(string email, string token)
    {
        var user = await _context.NguoiDungs.FirstOrDefaultAsync(u => u.Email == email);

        if (user == null)
        {
            return BadRequest("Tài khoản không tồn tại.");
        }

        // Cập nhật trạng thái tài khoản
        user.TrangThai = true;
        await _context.SaveChangesAsync();
        HttpContext.Session.SetInt32("NguoiDung", user.MaNguoiDung);
        HttpContext.Session.SetString("TenNguoiDung", user.TenNguoiDung);
        return RedirectToAction("Index", "Home");
    }

    [HttpGet("xacnhan_code")]
    public async Task<IActionResult> XacNhan_code(string email, string token)
    {
        var user = await _context.NguoiDungs.FirstOrDefaultAsync(u => u.Email == email);

        if (user == null)
        {
            return BadRequest("Tài khoản không tồn tại.");
        }

        // Cập nhật trạng thái tài khoản
        user.TrangThai = true;
        await _context.SaveChangesAsync();

        return Ok($"Tài khoản của {email} đã được xác nhận thành công!");
    }

    // Kiểm tra email hợp lệ
    private bool IsValidEmail(string email)
    {
        try
        {
            var emailAddress = new MailAddress(email);
            return true;
        }
        catch
        {
            return false;
        }
    }

    // Hàm băm mật khẩu
    private string HashPassword(string password)
    {
        using (SHA256 sha256 = SHA256.Create())
        {
            byte[] bytes = sha256.ComputeHash(Encoding.UTF8.GetBytes(password));
            return BitConverter.ToString(bytes).Replace("-", "").ToLower();
        }
    }

    // Tạo token ngẫu nhiên
    private string GenerateToken()
    {
        return Guid.NewGuid().ToString();
    }

    // Gửi email xác thực
    private async Task<bool> GuiXacNhanEmail(string email, string username, string confirmationLink)
    {
        try
        {
            var smtpClient = new SmtpClient("smtp.gmail.com")
            {
                Port = 587,
                Credentials = new NetworkCredential("vanan9524@gmail.com", "xfaiihtrombafguy"),
                EnableSsl = true,
            };
            var mailMessage = new MailMessage
            {
                From = new MailAddress("vanan9524@gmail.com", "Web Bán Vé Xem Phim"),
                Subject = "Xác nhận đăng ký tài khoản",
                Body = $"Chào {username},<br>Vui lòng nhấp vào link sau để xác nhận tài khoản: <a href='{confirmationLink}'>Xác nhận ngay</a>",
                IsBodyHtml = true,
            };

            mailMessage.To.Add(email);
            await smtpClient.SendMailAsync(mailMessage);
            return true;
        }
        catch (Exception ex)
        {
            Console.WriteLine("Lỗi gửi email: " + ex.Message);
            return false;
        }
    }

    // Kiểm tra email tồn tại (đã sửa)
    public async Task<bool> KiemTraEmailTonTai(string email_kt)
    {
        string email = "vanan9524@gmail.com";  // Email gửi
        string password = "xfaiihtrombafguy";  // Mật khẩu ứng dụng

        try
        {
            using (var client = new ImapClient())
            {
                // Kết nối Gmail bằng IMAP
                client.Connect("imap.gmail.com", 993, true);
                client.Authenticate(email, password);

                // Mở hộp thư đến
                var inbox = client.Inbox;
                inbox.Open(FolderAccess.ReadOnly);

                // Ghi lại thời gian gửi email
                DateTime sendTime = DateTime.Now;
                Console.WriteLine($"⏳ Thời gian gửi email: {sendTime}");

                // Chờ 15 giây để email lỗi có thời gian gửi về
                Console.WriteLine("⏳ Đang chờ email lỗi (15 giây)...");
                await Task.Delay(TimeSpan.FromSeconds(15));

                // Tìm email lỗi trong 1 phút gần nhất
                var uids = inbox.Search(SearchQuery.SentSince(DateTime.Now.AddMinutes(-1))
                    .And(SearchQuery.FromContains("mailer-daemon")
                        .Or(SearchQuery.FromContains("postmaster"))));

                if (uids.Count == 0)
                {
                    Console.WriteLine("✅ Không tìm thấy email báo lỗi → Địa chỉ có thể tồn tại.");
                    return true;
                }

                foreach (var uid in uids.Take(5)) // Kiểm tra 5 email gần nhất
                {
                    var message = inbox.GetMessage(uid);
                    string content = message.TextBody?.ToLower() ?? "";
                    DateTime messageDate = message.Date.DateTime;

                    // Chỉ xem xét email lỗi chứa email_kt trong nội dung và gần với thời gian gửi
                    if (content.Contains(email_kt) && Math.Abs((sendTime - messageDate).TotalSeconds) <= 30)
                    {
                        if (content.Contains("mail delivery failed") ||
                            content.Contains("undelivered mail returned to sender") ||
                            content.Contains("không tìm thấy địa chỉ") ||
                            content.Contains("recipient address rejected") ||
                            content.Contains("failed") ||
                            content.Contains("not found") ||
                            content.Contains("mailbox full") ||
                            content.Contains("quota exceeded") ||
                            content.Contains("over quota"))
                        {
                            Console.WriteLine("❌ Email không tồn tại hoặc gặp vấn đề!");
                            Console.WriteLine($"📩 Tiêu đề: {message.Subject}");
                            Console.WriteLine($"📅 Ngày: {message.Date}");
                            Console.WriteLine($"📧 Nội dung: {content.Substring(0, Math.Min(300, content.Length))}...");

                            if (content.Contains("mailbox full") ||
                                content.Contains("quota exceeded") ||
                                content.Contains("over quota"))
                            {
                                Console.WriteLine("📛 Lý do: Hộp thư của người dùng đã đầy.");
                            }
                            else
                            {
                                Console.WriteLine("📛 Lý do: Email không tồn tại hoặc bị từ chối.");
                            }
                            return false;
                        }
                    }
                    else
                    {
                        Console.WriteLine($"⚠️ Email lỗi không liên quan: {message.Subject} ({message.Date})");
                    }
                }

                Console.WriteLine("✅ Không có lỗi rõ ràng liên quan đến email vừa gửi → Địa chỉ có thể tồn tại.");
                client.Disconnect(true);
                return true;
            }
        }
        catch (Exception ex)
        {
            Console.WriteLine($"❌ Lỗi trong KiemTraEmailTonTai: {ex.Message}");
            return false; // Nếu có lỗi, giả định email không tồn tại
        }
    }
}
