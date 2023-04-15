using System.ComponentModel.DataAnnotations;
using System.Diagnostics.CodeAnalysis;

namespace GroceryOrderingApp.Models
{
    public class Product
    {
        [Key]
        public Decimal PRODUCT_ID { get; set; }
        [AllowNull]
        public Decimal CATEGORY_ID { get; set; }
        [AllowNull]
        public String PRODUCT_NAME { get; set; }
        [AllowNull]
        public String PRODUCT_DESC { get; set; }
        [AllowNull]
        public Decimal STOCK_QTY { get; set; }
        [AllowNull]
        public Decimal PRICE { get; set; }
    }
}
