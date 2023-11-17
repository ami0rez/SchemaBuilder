using System.ComponentModel.DataAnnotations.Schema;

namespace SchemaBuilder.Infrastruction.Data.Models.Customer
{
    [Table("CustomerAssociatedBusiness")]
    public class CustomerAssociatedBusiness
    {
        public Guid id { get; set; }
        public Guid customerId { get; set; }
        public string? name { get; set; }
        public string? description { get; set; }
    }
}
