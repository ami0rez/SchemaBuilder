namespace SchemaBuilder.Api.Models.Customer
{
    public class CustomerDataPage
    {
        public Guid id { get; set; }
        public string groupName { get; set; }
        public List<CustomerDataSchema> schemaFields { get; set; }
    }
}
