using GroceryOrderingApp.Models;
using Microsoft.EntityFrameworkCore;

namespace GroceryOrderingApp.Data
{
    public class OracleDbContext : DbContext
    {
        public OracleDbContext(DbContextOptions options) : base(options)
        {

        }
        public DbSet<Customer> CUSTOMERS { get; set; }
    }
}
