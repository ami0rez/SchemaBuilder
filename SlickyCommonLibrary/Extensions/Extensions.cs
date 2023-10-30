using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Text.Json;
using System.Threading.Tasks;

namespace SlickyCommonLibrary.Domain
{
    public static class Extensions
    {

        public static string GetDescription(this Enum e)
        {
#pragma warning disable CS8602 // Dereference of a possibly null reference.
            var attribute =
            e.GetType()
                .GetTypeInfo()
                .GetMember(e.ToString())
                .FirstOrDefault(member => member.MemberType == MemberTypes.Field)
                .GetCustomAttributes(typeof(DescriptionAttribute), false)
                .SingleOrDefault()
                as DescriptionAttribute;
#pragma warning restore CS8602 // Dereference of a possibly null reference.

            return attribute?.Description ?? e.ToString();
        }

    }

    
}
