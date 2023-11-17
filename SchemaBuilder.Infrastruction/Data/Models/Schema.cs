using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace SchemaBuilder.Infrastruction.Data.Models
{
    [Table("Schema")]
    public class Schema
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int id { get; set; }
        public string? name { get; set; }
        public int? parentId { get; set; }
        //public bool? master { get; set; }
        public virtual List<SchemaProperty>? properties { get; set; }
    }
}
