namespace SchemaBuilderApi.Controllers.Models
{
    public class Schema
    {
        public int id { get; set; }
        public string? name { get; set; }
        public int? parentId { get; set; }
        public virtual List<SchemaProperty>? properties { get; set; }
    }
}
