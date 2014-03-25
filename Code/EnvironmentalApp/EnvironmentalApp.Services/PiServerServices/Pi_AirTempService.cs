﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using EnvironmentalApp.Core.Data.PiServer;
using EnvironmentalApp.Data.PiServer;
using EnvironmentalApp.Core;
namespace EnvironmentalApp.Services.PiServerServices
{
    public class Pi_AirTempService
    {
        IPiServerRepository<Core.Models.AirTemp,Core.PiServerTableTags.AirTempSource> airRepo =null;

        public Pi_AirTempService()
        {
            airRepo = new AirTempRepository();
        }
        /// <summary>
        /// Get air temp by time defaults is today
        /// </summary>
        /// <param name="airTempSource"></param>
        /// <param name="dateTime"></param>
        /// <returns>Airtemp </returns>
        public Core.Models.AirTemp Get_AirTemp_ByTime(Core.PiServerTableTags.AirTempSource airTempSource, string dateTime="today")
        {
             Core.Models.AirTemp result = null;
            if(dateTime=="today"){
            result = airRepo.GetToday(airTempSource);
        }else{
                result = airRepo.GetByTime(airTempSource,dateTime);
            }
            return result;
        }

        public List<Core.Models.AirTemp> Get_AirTemp_ByDateRange(Core.PiServerTableTags.AirTempSource airTempSource, string startDate, string endDate)
        {
            var airTempList = new List<Core.Models.AirTemp>();
            airTempList = airRepo.GetByTime(airTempSource, startDate, endDate);
            return airTempList;
        }
    }
}
