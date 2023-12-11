namespace SchemaBuilder.Api.Models.Customer
{
    public class CustomerData
    {
        public Guid customerId { get; set; }
        public string categoryId { get; set; }
        public string categoryName { get; set; }
        public List<CustomerDataPage> pages { get; set; }
    }
}
