using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text.Json.Serialization;

namespace SchemaBuilder.Infrastruction.Data.Models
{
    public class WebsiteSection
    {
        [Key]
        public Guid id { get; set; }
        public string name { get; set; }
        public string description { get; set; }
        public string groupName { get; set; }

        [ForeignKey("category")]
        public Guid categoryID { get; set; }
        public virtual Category? category { get; set; }
    }
}
