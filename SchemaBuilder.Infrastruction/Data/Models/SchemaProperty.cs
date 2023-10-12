using SlickyCommonLibrary.Enums;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace SchemaBuilder.Infrastruction.Data.Models
{
    public class SchemaProperty
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int id { get; set; }
        public string? name { get; set; }
        public string? friendlyName { get; set; }

        [ForeignKey("schema")]
        public Guid? schemaId { get; set; }
        public virtual Schema? schema { get; set; }

        public Datatype datatype { get; set; }
        public int? schemaDataTypeId { get; set; }

        public bool visible { get; set; } = true;
    }
}
