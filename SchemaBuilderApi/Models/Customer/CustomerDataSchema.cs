namespace SchemaBuilder.Api.Models.Customer
{
    public class CustomerDataSchema
    {
        public int id { get; set; }
        public string name { get; set; }
        public List<CustomerDataField> fields { get; set; }
        public List<Object> values { get; set; }
    }
}
