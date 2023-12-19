namespace SchemaBuilder.Api.Models.Customer
{
    public class CustomerDataField
    {
        public int id { get; set; }
        public string name { get; set; }
        public string friendlyName { get; set; }
        public string value { get; set; }
        public int schemaRefId { get; set; }
        public CustomerDataSchemaField schemaRef { get; set; }
    }
}
