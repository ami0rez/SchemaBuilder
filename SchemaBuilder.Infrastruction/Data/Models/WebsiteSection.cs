using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace SchemaBuilder.Infrastruction.Data.Models
{
    [Table("WebsiteSection")]
    public class WebsiteSection
    {
        [Key]
        public Guid id { get; set; }
        public string name { get; set; }
        public string? description { get; set; }
        public string groupName { get; set; }

        [ForeignKey("category")]
        public Guid categoryID { get; set; }
        public virtual Category? category { get; set; }
    }
}
