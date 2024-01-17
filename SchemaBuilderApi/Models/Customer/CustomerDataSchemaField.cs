using SlickyCommonLibrary.Enums;

namespace SchemaBuilder.Api.Models.Customer
{
    public class CustomerDataSchemaField
    {
        public int id { get; set; }
        public string name { get; set; }
        public Datatype datatype { get; set; }
        public List<CustomerDataField> fields { get; set; }
        public List<Object> values { get; set; }
    }
}
