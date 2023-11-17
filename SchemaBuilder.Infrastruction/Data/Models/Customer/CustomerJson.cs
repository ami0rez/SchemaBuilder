using System.ComponentModel.DataAnnotations.Schema;

namespace SchemaBuilder.Infrastruction.Data.Models.Customer
{
    [Table("CustomerJson")]
    public class CustomerJson
    {
        public Guid id { get; set; }
        public Guid customerId { get; set; }
        public CustomerInfo customer { get; set; }
        public string? JsonData { get; set; }
        public bool processed { get; set; }
    }
}
