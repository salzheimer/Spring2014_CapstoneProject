﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EnvironmentalApp.Gui.Models
{
    public class ChilledWaterModel
    {
        //public string Label { get; set; }
        //public decimal[] Series { get; set; }
        public DateTime Date { get; set; }
        public double Value { get; set; }
    }

    public class DataList
    {
        public int Id { get;set; }
        public string LineName { get; set; }
        public List<ChilledWaterModel> chilledWaterData { get; set; }
    }
}