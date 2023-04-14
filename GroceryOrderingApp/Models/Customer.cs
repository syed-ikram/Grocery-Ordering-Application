using System.ComponentModel.DataAnnotations;
using System.Diagnostics.CodeAnalysis;

namespace GroceryOrderingApp.Models
{
    public class Customer
    {
        [Key]
        public Decimal CUSTOMER_ID { get; set; }
        [AllowNull]
        public String CUSTOMER_NAME { get; set; }
        [AllowNull]
        public String EMAIL { get; set; }
    }
}
