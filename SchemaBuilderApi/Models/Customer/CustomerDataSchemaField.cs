namespace SchemaBuilder.Api.Models.Customer
{
    public class CustomerDataSchemaField
    {
        public int id { get; set; }
        public string name { get; set; }
        public List<CustomerDataField> fields { get; set; }
    }
}
