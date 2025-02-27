﻿
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
        public async Task<IActionResult> VeDaDat()
        {
            int MaNguoiDung = HttpContext.Session.GetInt32("NguoiDung") ?? 0;
            if (MaNguoiDung == 0)
            {
                return RedirectToAction("Index", "Login");
            }

            var order = await _context.Ves
                .Include(v => v.MaGheNavigation)
                .Include(v => v.MaLichChieuNavigation)
                .Include(v => v.MaLichChieuNavigation.MaPhimNavigation)
                .Include(v => v.MaLichChieuNavigation.MaPhongNavigation)
                .Where(v => v.MaKhachHang == MaNguoiDung && v.TrangThai == true)
                .OrderByDescending(v => v.MaVe)
                .Select(v => new
                {
                    SoGhe = v.MaGheNavigation.SoGhe,
                    SoPhong = v.MaLichChieuNavigation.MaPhongNavigation.TenPhong,
                    GioChieu = v.MaLichChieuNavigation.GioChieu, 
                    NgayChieu = v.MaLichChieuNavigation.NgayChieu, 
                    TenPhim = v.MaLichChieuNavigation.MaPhimNavigation.TenPhim,
                    ThoiLuong = v.MaLichChieuNavigation.MaPhimNavigation.ThoiLuong,
                    GiaVe = v.GiaVe,
                    MaVe = v.MaVe,
                    MaLichChieu = v.MaLichChieu,
                    MaKhachHang = v.MaKhachHang
                })
                .ToListAsync(); // Dùng ToListAsync để tránh lỗi kiểu dữ liệu Task
            ViewBag.VeDaDat = order;
            return View();
        }
        public IActionResult Privacy()
        {
            return View();
        }
        public async Task<IActionResult> IndexAsync(string searchString)
        {
            var currentTime = DateTime.Now;

            // Lấy danh sách mã vé đã thanh toán
            var danhSachMaVeThanhToan = _context.ThanhToans.Select(t => t.MaVe).ToList();

            // Cập nhật trạng thái vé đã thanh toán
            var danhSachVeThanhToan = _context.Ves
                .Where(v => danhSachMaVeThanhToan.Contains(v.MaVe) && v.TrangThai == false)
                .ToList();

            foreach (var ve in danhSachVeThanhToan)
            {
                ve.TrangThai = true;
            }

            // Xóa vé chưa thanh toán sau 10 phút
            var danhSachVeHetHan = _context.Ves
                .Where(v => !danhSachMaVeThanhToan.Contains(v.MaVe) 
                            && v.TrangThai == false  
                            && EF.Functions.DateDiffMinute(v.NgayDat, currentTime) > 10)
                .ToList();

            _context.Ves.RemoveRange(danhSachVeHetHan); // Xóa tất cả vé quá hạn
            _context.SaveChanges();


            var query = _context.Phims.AsNoTracking().AsQueryable();
            if (!string.IsNullOrEmpty(searchString))
            {
                query = query.Where(p => p.TenPhim.Contains(searchString));
            }

            var danhSachPhim = await query.AsNoTracking().OrderBy(p => p.MaPhim).ToListAsync();
            ViewBag.SearchString = searchString;

            // Lấy danh sách trailer
            var danhSachTrailer = await _context.Trailers.AsNoTracking().ToListAsync();
            ViewBag.DanhSachTrailer = danhSachTrailer;

            // Lấy danh sách lịch chiếu + số ghế trống
            var danhSachLichChieu = await _context.LichChieus.AsNoTracking()
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
            var DanhSachVe = await _context.Ves.AsNoTracking()
             .Include(v => v.MaGheNavigation) // Load thông tin ghế
             .Select(v => new
             {
                 MaVe = v.MaVe,         // Mã vé
                 Giave = v.GiaVe,
                 MaLichChieu = v.MaLichChieu, // Mã lịch chiếu
                 MaGhe = v.MaGhe,       // Mã ghế
                 SoGhe = v.MaGheNavigation.SoGhe, // Số ghế
                 TrangThai = v.TrangThai // Trạng thái vé (true: đã đặt, false: còn trống)
             })
             .ToListAsync();
            var danhSachGhe = await _context.Ghes.AsNoTracking()
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
        public async Task<IActionResult> XoaVe(int MaLichChieu)
        {
            if(MaLichChieu != 0)
            {
                int MaKhachHang = HttpContext.Session.GetInt32("NguoiDung") ?? 0;
                // Lọc các vé có trạng thái là false và thời gian đặt vé quá 10 phút
                var veCanXoa = await _context.Ves
                    .Where(v => v.TrangThai == false && v.MaKhachHang == MaKhachHang &&v.MaLichChieu==MaLichChieu)
                    .ToListAsync();
                _context.Ves.RemoveRange(veCanXoa);
                await _context.SaveChangesAsync();
                return RedirectToAction("Index");
            }
            else
            {
                var currentTime = DateTime.Now;
                int MaKhachHang = HttpContext.Session.GetInt32("NguoiDung") ?? 0;
                // Lọc các vé có trạng thái là false và thời gian đặt vé quá 10 phút
                var veCanXoa = await _context.Ves
                    .Where(v => v.TrangThai == false && v.MaKhachHang == MaKhachHang &&
                                EF.Functions.DateDiffMinute(v.NgayDat, currentTime) > 10)
                    .ToListAsync();
                _context.Ves.RemoveRange(veCanXoa);
                await _context.SaveChangesAsync();
                return RedirectToAction("Index");
            }
            
        }
        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
