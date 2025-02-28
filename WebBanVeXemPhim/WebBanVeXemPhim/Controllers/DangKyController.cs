using System;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using WebBanVeXemPhim.Models;

[Route("dangky")]
public class DangKyController : Controller
{
    private readonly QuanLyBanVeXemPhimContext _context;

    public DangKyController(QuanLyBanVeXemPhimContext context)
    {
        _context = context;
    }



    // Đăng ký tài khoản
    [HttpPost("dangky")]
    public async Task<IActionResult> DangKy([FromBody] RegisterRequest model)
    {
        if (model == null || string.IsNullOrEmpty(model.Email) || string.IsNullOrEmpty(model.Username) || string.IsNullOrEmpty(model.Password))
        {
            return BadRequest("Vui lòng điền đầy đủ thông tin.");
        }

        if (!IsValidEmail(model.Email))
        {
            return BadRequest("Email không hợp lệ.");
        }

        if (await _context.NguoiDungs.AnyAsync(u => u.Email == model.Email))
        {
            return BadRequest("Email đã tồn tại.");
        }

        // Tạo token xác nhận email
        string token = GenerateToken();
        string confirmationLink = $"{Request.Scheme}://{Request.Host}/dangky/xacnhan?email={model.Email}&token={token}";

        // Lưu vào database
        var user = new NguoiDung
        {
            TenNguoiDung = model.Username,
            Email = model.Email,
            MatKhau = HashPassword(model.Password),
            TrangThai = false
        };

        _context.NguoiDungs.Add(user);
        await _context.SaveChangesAsync();

        // Gửi email xác thực
        bool emailSent = await GuiXacNhanEmail(model.Email, model.Username, confirmationLink);

        if (emailSent)
        {
            return Ok("Vui lòng kiểm tra email để xác nhận tài khoản!");
        }
        else
        {
            return StatusCode(500, "Lỗi gửi email, vui lòng thử lại.");
        }
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
        return RedirectToAction("Index","home");
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
            //var smtpClient = new SmtpClient("sandbox.smtp.mailtrap.io")
            //{
            //    Port = 2525,
            //    Credentials = new NetworkCredential("3c5d7368d8f6f1", "9cb763ab93d660"),
            //    EnableSsl = true,
            //};
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
}
