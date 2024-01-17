namespace SlickyCommonLibrary.DomainUI
{
    public class CategoryFilter : Paging, iFilter
    {
        public CategoryFilter(Paging p)
        {
            this.pageNumber = p.pageNumber;
            this.limit = p.limit;
            this.orderBy = p.orderBy;
            this.orderField = p.orderField;
        }

        public CategoryFilter()
        {
        }
        public Guid? id { get; set; }
        public bool? active { get; set; }
        public Guid? clientId { get; set; }
        public string? name { get; set; }
        public string? nameLike { get; set; }
        public Guid? parentId { get; set; }
        public bool? includeSubCategory { get; set; }
        public bool? showNoParents { get; set; }
        public string? searchFlags { get; set; }
        public bool? showFilteredCategory { get; set; }
        public bool? showMinimumDetails { get; set; }
        public bool? getParentNames { get; set; }
        public override string? filter
        {
            get
            {
                var f = BaseFilter;

                if (id.HasValue)
                    f += "&id=" + id.Value;
                if (active.HasValue)
                    f += "&active=" + active.Value;
                if (clientId.HasValue)
                    f += "&clientId=" + clientId.Value;
                if (!string.IsNullOrEmpty(name))
                    f += "&name=" + name;
                if (!string.IsNullOrEmpty(nameLike))
                    f += "&nameLike=" + nameLike;
                if (parentId.HasValue)
                    f += "&parentId=" + parentId.Value;
                if (showNoParents.HasValue)
                    f += "&showNoParents=" + showNoParents.Value;
                if (!string.IsNullOrEmpty(searchFlags))
                    f += "&searchFlags=" + searchFlags;
                if (showFilteredCategory.HasValue)
                    f += "&showFilteredCategory=" + showFilteredCategory.Value;

                if (showMinimumDetails.HasValue)
                    f += "&showMinimumDetails=" + showMinimumDetails.Value;

                if (includeSubCategory.HasValue)
                    f += "&includeSubCategory=" + includeSubCategory.Value;

                if (getParentNames.HasValue)
                    f += "&getParentNames=" + getParentNames.Value;
                return f;

            }
        }


    }


    public class FilteredCategoryFilter : iFilter
    {

        public Guid? id { get; set; }

        public Guid? categoryId { get; set; }

        public string filter
        {
            get
            {
                var f = "1=1";
                if (id.HasValue)
                    f += "&id=" + id.Value;
                if (categoryId.HasValue)
                    f += "&categoryId=" + categoryId.Value;

                return f;

            }
        }


    }


    public class SearchFlagFilter : iFilter
    {

        public Guid? id { get; set; }

        public Guid? clientId { get; set; }

        public bool? core { get; set; }

        public string filter
        {
            get
            {
                var f = "1=1";
                if (id.HasValue)
                    f += "&id=" + id.Value;
                if (clientId.HasValue)
                    f += "&clientId=" + clientId.Value;
                if (core.HasValue)
                    f += "&core=" + core.Value;
                return f;

            }
        }


    }



}
