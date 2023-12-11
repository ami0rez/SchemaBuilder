using SlickyCommonLibrary.Enums;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace SchemaBuilder.Infrastruction.Data.Models
{
    [Table("SchemaProperty")]
    public class SchemaProperty
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int id { get; set; }
        public string? name { get; set; }
        public string? friendlyName { get; set; }

        [ForeignKey("schema")]
        public int? schemaId { get; set; }
        public virtual Schema? schema { get; set; }

        public Datatype datatype { get; set; }

        [ForeignKey("schemaDataType")]
        public int? schemaDataTypeId { get; set; }
        public virtual Schema? schemaDataType { get; set; }

        public bool visible { get; set; } = true;
    }
}
