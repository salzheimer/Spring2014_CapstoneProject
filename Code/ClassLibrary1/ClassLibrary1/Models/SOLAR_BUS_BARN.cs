using System;
using System.Collections.Generic;

namespace ClassLibrary1.Models
{
    public partial class SOLAR_BUS_BARN
    {
        public System.Guid SolarBusBarnID { get; set; }
        public decimal Reading { get; set; }
        public System.DateTime TimeStamp { get; set; }
        public System.DateTime ReadingDateTime { get; set; }
        public int TimeStep { get; set; }
        public int Status { get; set; }
    }
}