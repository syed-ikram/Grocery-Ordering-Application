using GroceryOrderingApp.Data;
using GroceryOrderingApp.Models;
using Microsoft.AspNetCore.Mvc;
using System.Diagnostics;

namespace GroceryOrderingApp.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private readonly OracleDbContext _db;

        public HomeController(ILogger<HomeController> logger, OracleDbContext db)
        {
            _logger = logger;
            _db = db;
        }

        public IActionResult Index()
        {
            IEnumerable<Customer> customers = _db.CUSTOMERS;
            // var obj = _db.Database.
            return View(customers);
        }
        public IActionResult CustomerInfo()
        {
            Customer customer = _db.CUSTOMERS.FirstOrDefault(u => u.CUSTOMER_ID == 20231);
            return View(customer);
        }
        [HttpPost]
        public IActionResult CustomerInfo(Customer c1) 
        {
            Customer customer = _db.CUSTOMERS.FirstOrDefault(u => u.CUSTOMER_ID == c1.CUSTOMER_ID);
            Console.WriteLine(c1.CUSTOMER_ID);
            return View(customer);
        }
        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}