using SlickyCommonLibrary.Enums;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SlickyCommonLibrary.DomainUI
{
    public interface iFilter
    {
        string? filter { get; }
    }


    public class Paging : iFilter
    {
        public virtual string filter
        {
            get;
        }
        public string BaseFilter
        {
            get
            {
                var f = "1=1";
                if (limit.HasValue)
                    f += "&limit=" + limit.Value;
                if (pageNumber.HasValue)
                    f += "&pageNumber=" + pageNumber.Value;
                if (orderBy.HasValue)
                    f += "&orderBy=" + orderBy.Value;
                if (!string.IsNullOrEmpty(orderField))
                    f += "&orderField=" + orderField;
                if (!string.IsNullOrEmpty(search))
                    f += "&search=" + search;

                return f;
            }
        }



        public int? limit { get; set; }
        public int? pageNumber { get; set; }
        public string? orderField { get; set; }
        public OrderBy? orderBy { get; set; }
        public string? search { get; set; }
    }
}
