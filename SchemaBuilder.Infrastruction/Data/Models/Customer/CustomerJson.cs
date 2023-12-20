﻿using SlickyCommonLibrary.Enums;
using System.ComponentModel.DataAnnotations.Schema;

namespace SchemaBuilder.Infrastruction.Data.Models.Customer
{
    [Table("CustomerJson")]
    public class CustomerJson
    {
        public Guid id { get; set; }
        public Guid customerId { get; set; }
        public CustomerInfo customer { get; set; }

        [Column(TypeName = "nvarchar(max)")]
        public string? jsonTemplate { get; set; }
        public string? jsonData { get; set; }
        public CustomerProcessingStatus status { get; set; }
    }
}
