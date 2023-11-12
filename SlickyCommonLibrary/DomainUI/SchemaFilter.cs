namespace SlickyCommonLibrary.DomainUI
{
    public class SchemaFilter : Paging, iFilter
    {
        public SchemaFilter(Paging p)
        {
            this.pageNumber = p.pageNumber;
            this.limit = p.limit;
            this.orderBy = p.orderBy;
            this.orderField = p.orderField;
        }

        public SchemaFilter()
        {
        }
        public Guid? id { get; set; }
        public string? idList { get; set; }
        public bool? showNoParents { get; set; }
        public Guid? parentId { get; set; }
        public bool? master { get; set; }

        public bool? showLevel1Properties { get; set; }
        public bool? showMinimumDetails { get; set; }
        public override string filter
        {
            get
            {
                var f = BaseFilter;

                if (id.HasValue)
                    f += "&id=" + id.Value;

                if (string.IsNullOrEmpty(idList))
                    f += "&idList=" + idList;

                if (parentId.HasValue)
                    f += "&parentId=" + parentId.Value;

                if (master.HasValue)
                    f += "&master=" + master.Value;

                if (showNoParents.HasValue)
                    f += "&showNoParents=" + showNoParents.Value;

                if (showMinimumDetails.HasValue)
                    f += "&showMinimumDetails=" + showMinimumDetails.Value;

                if (showLevel1Properties.HasValue)
                    f += "&showLevel1Properties=" + showLevel1Properties.Value;
                return f;

            }
        }


    }
}
