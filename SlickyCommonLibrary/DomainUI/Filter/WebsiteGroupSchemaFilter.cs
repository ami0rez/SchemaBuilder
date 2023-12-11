using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SlickyCommonLibrary.DomainUI
{
    public class WebsiteGroupSchemaFilter : iFilter
    {
        public Guid? id { get; set; }

        public string? groupName { get; set; }
        public string? groupNameList { get; set; }

        public string filter
        {
            get
            {
                var f = "1=1";
                if (id.HasValue)
                    f += "&id=" + id.Value;
                if (!string.IsNullOrEmpty(groupName))
                    f += "&groupName=" + groupName;
                if (!string.IsNullOrEmpty(groupNameList))
                    f += "&groupNamelist=" + groupNameList;
                return f;

            }
        }


    }
}
