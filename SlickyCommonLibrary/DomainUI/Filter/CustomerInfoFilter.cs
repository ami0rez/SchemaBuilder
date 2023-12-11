namespace SlickyCommonLibrary.DomainUI
{
    public class CustomerInfoFilter : Paging, iFilter
    {
        public Guid? id { get; set; }

        public string filter
        {
            get
            {
                var f = "1=1";
                if (id.HasValue)
                    f += "&id=" + id.Value;

                return f;

            }
        }
    }
}
