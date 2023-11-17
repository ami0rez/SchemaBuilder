using System.ComponentModel.DataAnnotations.Schema;

namespace SchemaBuilder.Infrastruction.Data.Models.Customer
{
    [Table("CustomerPage")]
    public class CustomerPage
    {
        public Guid id { get; set; }
        public Guid customerId { get; set; }
        public string? name { get; set; }
        public string? category { get; set; }
        public string? type { get; set; }
        public string? groupName { get; set; }
    }
}
