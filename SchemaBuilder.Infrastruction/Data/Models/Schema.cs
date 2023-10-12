using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace SchemaBuilder.Infrastruction.Data.Models
{
    public class Schema
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public Guid id { get; set; }
        public string? name { get; set; }
        public Guid? parentId { get; set; }
        public bool? master { get; set; }
        public virtual List<SchemaProperty>? properties { get; set; }
    }
}
