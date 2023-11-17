using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace SchemaBuilder.Infrastruction.Data.Models
{
    [Table("WebsiteGroupSchema")]
    public class WebsiteGroupSchema
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public Guid id { get; set; }
        public string groupName { get; set; } = "";

        public bool visible { get; set; }
        public int schemaId { get; set; }
        public Schema? schema { get; set; }
    }
}
