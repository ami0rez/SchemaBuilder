using System.ComponentModel;

namespace SlickyCommonLibrary.Enums
{
    public enum Datatype
    {

        [Description("Text")]
        text,
        [Description("Bool")]
        boolean,
        [Description("Number")]
        number,
        [Description("Date")]
        date,
        [Description("Schema")]
        schema,
        [Description("Time")]
        time,
        [Description("Datetime")]
        datetime
    }

    public enum OrderBy
    {
        ascending,
        descending
    }

}
