using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace SchemaBuilder.Infrastruction.Data.Models
{
    public class Category
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public Guid id { get; set; } = Guid.NewGuid();
        public string name { get; set; } = "";
        public string? naics { get; set; }

        public int popularity { get; set; }

        [NotMapped]
        public string? fullName { get; set; }

        [NotMapped]
        public string? fullParentsIds { get; set; }
        public Guid? parentId { get; set; }
        public List<WebsiteSection>? websiteSections { get; set; }

    }
}
