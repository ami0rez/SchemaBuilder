using Microsoft.AspNetCore.Html;
using Newtonsoft.Json;
using SlickyCommonLibrary.Domain;

namespace SchemaBuilder.Utils.Extensions
{
    public static class HtmlExtensions
    {
        /// <summary>
        /// Turn to enum tojs object
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <returns></returns>
        public static HtmlString EnumAsJsObject<T>()
        {
            var values = Enum.GetValues(typeof(T)).Cast<int>();
            var enumDictionary = values.ToDictionary(value => Enum.GetName(typeof(T), value));
            return new HtmlString(JsonConvert.SerializeObject(enumDictionary));
        }

        /// <summary>
        /// Turn to enum to js <description, name> object
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <returns></returns>
        public static HtmlString EnumAsJsDescriptionObject<T>()
        {
            Dictionary<string, string> enumDictionary = new Dictionary<string, string>();
            foreach (var item in Enum.GetValues(typeof(T)))
            {
                enumDictionary.Add(((Enum)item).GetDescription(), Enum.GetName(typeof(T), item));
            }
            return new HtmlString(JsonConvert.SerializeObject(enumDictionary));
        }

        /// <summary>
        /// Turn to enum to js <description, state> object
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <returns></returns>
        public static HtmlString EnumAsJsValueDescriptionObject<T>()
        {
            Dictionary<string, int> enumDictionary = new Dictionary<string, int>();
            foreach (var item in Enum.GetValues(typeof(T)))
            {
                enumDictionary.Add(((Enum)item).GetDescription(), (int)item);
            }
            return new HtmlString(JsonConvert.SerializeObject(enumDictionary));
        }
    }
}
