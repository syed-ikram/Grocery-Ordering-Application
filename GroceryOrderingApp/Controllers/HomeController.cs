using GroceryOrderingApp.Data;
using GroceryOrderingApp.Models;
using Microsoft.AspNetCore.Mvc;
using Oracle.ManagedDataAccess.Client;
using System.Data;
using System.Diagnostics;
using System.Security.Cryptography;

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

        public IActionResult Home()
        {
            IEnumerable<Product> list = _db.INVENTORY;
            return View(list);
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
        public IActionResult EditCustomer(Decimal id)
        {
            Customer customer = _db.CUSTOMERS.FirstOrDefault(u => u.CUSTOMER_ID == id);
            return View(customer);
        }
        [HttpPost]
        public IActionResult EditCustomer(Customer c1)
        {
            Customer customer = _db.CUSTOMERS.FirstOrDefault(u => u.CUSTOMER_ID == c1.CUSTOMER_ID);
            //if(Model.IsValid)
            //{

            //}
            // Establish a database connection
            var connectionString = "User Id=COMP214_W23_zo_19;Password=password;Data Source=199.212.26.208:1521/SQLD;";
            var connection = new OracleConnection(connectionString);
            connection.Open();

            // Create a command object for the procedure
            var command = new OracleCommand("update_customer_info", connection);
            command.CommandType = CommandType.StoredProcedure;

            // Add parameters to the command
            command.Parameters.Add("p_customer_id", OracleDbType.Int32).Value = c1.CUSTOMER_ID;
            command.Parameters.Add("new_name", OracleDbType.Varchar2).Value = c1.CUSTOMER_NAME;
            command.Parameters.Add("new_email", OracleDbType.Varchar2).Value = c1.EMAIL;

            // Execute the command
            command.ExecuteNonQuery();

            // Close the connection
            connection.Close();
            return RedirectToAction("Index");
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