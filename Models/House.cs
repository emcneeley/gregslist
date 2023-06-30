using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace gregslist.Models
{
    public class House
    {
        public int Id { get; set; }
        public int? bedrooms { get; set; }
        public int? bathrooms { get; set; }
        public int? year { get; set; }
        public double? price { get; set; }
        public int? sqft { get; set; }
        public string description { get; set; }

        public DateTime createdAt { get; set; }
        public DateTime updatedAt { get; set; }
    }
}