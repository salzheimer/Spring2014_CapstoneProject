﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EnvironmentalApp.Core.Data.PiServer
{
    public interface ISolarRadiationRespository:IPiServerRepository<Core.Models.SolarRadiation,PiServerTableTags.SolarRadiationSources>
    {
    }
}