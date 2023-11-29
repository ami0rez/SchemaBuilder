using SlickyCommonLibrary.Enums;
using System.ComponentModel.DataAnnotations.Schema;

namespace SchemaBuilder.Infrastruction.Data.Models.Customer
{
	[Table("CustomerInfo")]
	public class CustomerInfo
    {
		public Guid id { get; set; }
		public string? businessName { get; set; }
		public string? address { get; set; }
		public string? website { get; set; }
		public string? ownerName { get; set; }
		public string? phone { get; set; }
		public string? businessCategoryId { get; set; }
		public string? businessCategoryName { get; set; }
		public int contentRichness { get; set;}

		public int productDetectedRange { get; set;}
		public CustomerProcessingStatus status { get; set; }

        public IEnumerable<CustomerSocialMedia>? socialMedia { get; set; }
		public IEnumerable<CustomerPerson>? peopleDetected { get; set; }
		public IEnumerable<CustomerService>? serviceDetected { get; set; }
		public IEnumerable<CustomerAssociatedBusiness>? associatedBusinessDetected { get; set; }
		public IEnumerable<CustomerPage>? pages { get; set; }
    }
}
