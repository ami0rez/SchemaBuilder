using SlickyCommonLibrary.Enums;

namespace SchemaBuilderApi.Controllers.Models
{
    public class SchemaProperty
    {
        public int id { get; set; }
        public string? name { get; set; }
        public string? friendlyName { get; set; }
        public int schemaId { get; set; }
        public Datatype datatype { get; set; }
        public int? schemaDataTypeId { get; set; }
        public bool visible { get; set; }
        public virtual Schema schemaDataType { get; set; }
    }
}
