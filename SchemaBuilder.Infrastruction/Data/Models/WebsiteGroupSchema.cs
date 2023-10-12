using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SchemaBuilder.Infrastruction.Data.Models
{
    public class WebsiteGroupSchema
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public Guid id { get; set; }
        public string groupName { get; set; } = "";

        public Guid schemaId { get; set; }
        public Schema? schema { get; set; }
    }
}
