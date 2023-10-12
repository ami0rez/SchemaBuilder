using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SlickyCommonLibrary.DomainUI
{
    public class WebsiteSectionFilter
    {
        public Guid? id { get; set; }

        public string? groupName { get; set; }

        public Guid? categoryId { get; set; }
        public string? categoryIds { get; set; }

        public string filter
        {
            get
            {
                var f = "1=1";
                if (id.HasValue)
                    f += "&id=" + id.Value;
                if (categoryId.HasValue)
                    f += "&categoryId=" + categoryId.Value;

                if (!string.IsNullOrEmpty(groupName))
                    f += "&groupName=" + groupName;

                if (!string.IsNullOrEmpty(categoryIds))
                    f += "&categoryIds=" + categoryIds;
                return f;

            }
        }
    }
}
