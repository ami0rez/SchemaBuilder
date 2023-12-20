using System.ComponentModel.DataAnnotations.Schema;

namespace SchemaBuilder.Infrastruction.Data.Models.Customer
{
    [Table("CustomerService")]
    public class CustomerService
    {
        public Guid id { get; set; }
        public Guid customerId { get; set; }
        public CustomerInfo? customer { get; set; }
        public string? name { get; set; }
        public string? price { get; set; }
        public string? description { get; set; }
    }
}
