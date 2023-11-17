using System.ComponentModel.DataAnnotations.Schema;

namespace SchemaBuilder.Infrastruction.Data.Models.Customer
{
    [Table("CustomerPerson")]
    public class CustomerPerson
    {
        public Guid id { get; set; }
        public Guid customerId { get; set; }
        public string? name { get; set; }
        public string? position { get; set; }
        public string? address { get; set; }
        public string? title { get; set; }
        public string? phone { get; set; }
    }
}
