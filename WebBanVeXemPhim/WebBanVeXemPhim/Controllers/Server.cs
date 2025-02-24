//using Microsoft.AspNetCore;
//using Microsoft.AspNetCore.Mvc;
//using Net.payOS;
//using Net.payOS.Types;

//namespace server.Controllers
//{
//    public class Program
//    {
//        public static void Main(string[] args)
//        {
//            WebHost.CreateDefaultBuilder(args)
//              .UseUrls("http://localhost:3030")
//              .UseWebRoot("public")
//              .UseStartup<Startup>()
//              .Build()
//              .Run();
//        }
//    }

//    public class Startup
//    {
//        public void ConfigureServices(IServiceCollection services)
//        {
//            services.AddControllers();
//        }
//        public void Configure(IApplicationBuilder app, IWebHostEnvironment env)
//        {
//            if (env.IsDevelopment()) app.UseDeveloperExceptionPage();
//            app.UseRouting();
//            app.UseStaticFiles();
//            app.UseEndpoints(endpoints =>
//            {
//                endpoints.MapControllers();
//                endpoints.MapGet("/", context =>
//                {
//                    context.Response.Redirect("/index.html");
//                    return Task.CompletedTask;
//                });
//            });
//        }
//    }

//    [Route("create-payment-link")]
//    [ApiController]
//    public class CheckoutApiController : Controller
//    {
//        [HttpPost]
//        public async Task<IActionResult> Create()
//        {
//            // Keep your PayOS key protected by including it by an env variable
//            var clientId = "58725444-622b-4cc4-a7b9-a6c85288e068";
//            var apiKey = "859319d4-bfdf-478f-a450-2a1b4e3f7943";
//            var checksumKey = "6789e84302206638bdbc6523eed6cba84d58df1e9480da8456161402be88ffdf";

//            var payOS = new PayOS(clientId, apiKey, checksumKey);

//            var domain = "http://localhost:7162";

//            var paymentLinkRequest = new PaymentData(
//                orderCode: int.Parse(DateTimeOffset.Now.ToString("ffffff")),
//                amount: 2000,
//                description: "Thanh toan don hang",
//                items: [new("Mì tôm hảo hảo ly", 1, 2000)],
//                returnUrl: domain + "/success.html",
//                cancelUrl: domain + "/cancel.html"
//            );
//            var response = await payOS.createPaymentLink(paymentLinkRequest);

//            Response.Headers.Append("Location", response.checkoutUrl);
//            return new StatusCodeResult(303);
//        }
//    }
//}