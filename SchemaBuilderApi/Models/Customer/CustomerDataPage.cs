namespace SchemaBuilder.Api.Models.Customer
{
    public class CustomerDataPage
    {
        public Guid id { get; set; }
        public string groupName { get; set; }
        public string url { get; set; }
        public string description { get; set; }
        public string name { get; set; }
        public List<CustomerDataSchema> schemaFields { get; set; }
    }
}
