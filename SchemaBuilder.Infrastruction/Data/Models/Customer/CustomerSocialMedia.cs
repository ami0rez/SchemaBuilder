using System.ComponentModel.DataAnnotations.Schema;

namespace SchemaBuilder.Infrastruction.Data.Models.Customer
{
    [Table("CustomerSocialMedia")]
    public class CustomerSocialMedia
    {
        public Guid id { get; set; }
        public Guid customerId { get; set; }
        public CustomerInfo? customer { get; set; }
        public string name { get; set; } = "";
        public string? address { get; set; }
    }
}
