using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SlickyCommonLibrary.Enums
{
    public enum CustomerProcessingStatus
    {
        [Description("Pending")]
        notProcessed,
        [Description("Processed")]
        processed,
        [Description("Emailed")]
        emailed,
        [Description("Validated")]
        validated,
        [Description("Rejected")]
        rejected,
    }
}
