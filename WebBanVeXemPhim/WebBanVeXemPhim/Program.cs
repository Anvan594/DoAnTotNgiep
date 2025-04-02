using Microsoft.EntityFrameworkCore;
using Net.payOS;
using WebBanVeXemPhim.Models;

namespace WebBanVeXemPhim
{
    public class Program
    {
        public static void Main(string[] args)
        {
            var builder = WebApplication.CreateBuilder(args);
            builder.Services.AddDbContext<QuanLyBanVeXemPhimV2Context>(options =>
            options.UseSqlServer(builder.Configuration.GetConnectionString("Dbcontext")));
            builder.Services.AddDistributedMemoryCache();  // D?ch v? l?u tr? b? nh? cho session
            builder.Services.AddSession(options =>
            {
                options.IdleTimeout = TimeSpan.FromMinutes(30);  // Th?i gian h?t h?n session
                options.Cookie.HttpOnly = true;  // B?o m?t cookie
                options.Cookie.IsEssential = true;  // Cookie b?t bu?c cho session
            });

            builder.Services.AddHttpContextAccessor();

            builder.Services.AddControllersWithViews();
            builder.Services.AddHttpClient();

            builder.Services.AddDistributedMemoryCache();

            // C?u hình PayOS
            var clientId = builder.Configuration["PayOS:ClientId"];
            var apiKey = builder.Configuration["PayOS:ApiKey"];
            var checksumKey = builder.Configuration["PayOS:ChecksumKey"];
            builder.Services.AddSingleton(new PayOS(clientId, apiKey, checksumKey));
            var app = builder.Build();



            if (!app.Environment.IsDevelopment())
            {
                app.UseExceptionHandler("/Home/Error");
                // The default HSTS value is 30 days. You may want to change this for production scenarios, see https://aka.ms/aspnetcore-hsts.
                app.UseHsts();
            }

            app.UseHttpsRedirection();
            app.UseStaticFiles();

            app.UseRouting();

            app.UseSession();
            app.UseAuthorization();
            app.MapControllerRoute(
                name: "areas",
                pattern: "{area:exists}/{controller=Home}/{action=Index}/{id?}");
            app.MapControllerRoute(
                name: "default",
                pattern: "{controller=Home}/{action=Index}/{id?}");

            app.Run();
        }
    }
}
