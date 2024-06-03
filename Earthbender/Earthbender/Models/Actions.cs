using System;
using System.Collections.Generic;
using System.Text;

namespace Earthbender.Models
{
    public class Actions
    {
        public int Id { get; set; }
        public string Description { get; set; }
        public string Category { get; set; }
        public string ImpactLevel { get; set; }
        public string Frequency { get; set; }
        public string ActionCode
        {
            get
            {
                return (string.IsNullOrEmpty(Category) ? "" : Category.Substring(0, 1)) + "00" + Id;
            }

        }
    }
}
