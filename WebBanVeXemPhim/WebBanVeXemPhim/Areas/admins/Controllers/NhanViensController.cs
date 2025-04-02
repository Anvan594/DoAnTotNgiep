using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using WebBanVeXemPhim.Models;

namespace WebBanVeXemPhim.Areas.admins.Controllers
{
    public class NhanViensController : BaseController
    {
        private readonly QuanLyBanVeXemPhimV2Context _context;

        public NhanViensController(QuanLyBanVeXemPhimV2Context context)
        {
            _context = context;
        }
        public async Task<IActionResult> Index(string searchString, int page = 1)
        {
            int pageSize = 5;
            var query = _context.NguoiDungs
                            .Where(n => n.Token.Trim() == "Nhan Vien")
                            .OrderByDescending(n => n.TrangThai) // Đang hoạt động (1) trước, không hoạt động (0) sau
                            .ThenByDescending(n => n.MaNguoiDung) // Sau đó tiếp tục sắp xếp theo MaNguoiDung
                            .AsQueryable();
            if (!string.IsNullOrEmpty(searchString))
            {
                query = query.Where(u => u.TenNguoiDung.Contains(searchString));
            }

            var danhSachNguoiDung = await query.Skip((page - 1) * pageSize)
                                               .Take(pageSize)
                                               .ToListAsync();
                                               

            int totalRecords = await query.CountAsync();
            int totalPages = (int)Math.Ceiling((double)totalRecords / pageSize);

            ViewBag.CurrentPage = page;
            ViewBag.TotalPages = totalPages;
            ViewBag.SearchString = searchString;

            return View(danhSachNguoiDung);
        }
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
                return NotFound();

            var nguoiDung = await _context.NguoiDungs.FindAsync(id);
            if (nguoiDung == null)
                return NotFound();

            return PartialView("Edit", nguoiDung);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, NguoiDung nguoiDung)
        {
            if (id != nguoiDung.MaNguoiDung)
                return NotFound();

            var existingUser = await _context.NguoiDungs.FindAsync(id);
            if (existingUser == null)
                return NotFound();

            if (ModelState.IsValid)
            {
                try
                {
                    if (string.IsNullOrEmpty(nguoiDung.MatKhau))
                    {
                        nguoiDung.MatKhau = existingUser.MatKhau;
                    }               
                    _context.Entry(existingUser).CurrentValues.SetValues(nguoiDung);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!_context.NguoiDungs.Any(e => e.MaNguoiDung == nguoiDung.MaNguoiDung))
                        return NotFound();
                    else
                        throw;
                }
                return RedirectToAction(nameof(Index));
            }
            return PartialView("Edit", nguoiDung);
        }

    }
}
