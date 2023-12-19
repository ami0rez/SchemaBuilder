namespace SlickyCommonLibrary.DomainUI
{
    public class CustomerJsonFilter : Paging, iFilter
    {
        public Guid? id { get; set; }
        public Guid? customerId { get; set; }

        public string filter
        {
            get
            {
                var f = "1=1";
                if (id.HasValue)
                    f += "&id=" + id.Value;
                if (customerId.HasValue)
                    f += "&customerId=" + customerId.Value;

                return f;

            }
        }
    }
}
