﻿using System;
using System.Collections.Generic;
using System.Data.Odbc;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using EnvironmentalApp.Core;
using EnvironmentalApp.Core.PiServerTableTags;
namespace EnvironmentalApp.Data.PiServer
{
    public class SolarRadiation_PI_Repository : PiServerRepositoryBase, Core.Data.PiServer.ISolarRadiationRespository
    {
        

        public Core.Models.SolarRadiation GetToday(SolarRadiationSources source)
        {
            var selectCmd = SelectCommand("*", "piinterp", EnumerationHelper.GetEnumDescription(source), "today");
            var solarRadiation = (Core.Models.SolarRadiation)ExecuteQuery(selectCmd)[0];
            return solarRadiation;
        }

        public Core.Models.SolarRadiation GetByTime(SolarRadiationSources source,string time)
        {
            var selectCmd = SelectCommand("*", "piinterp", EnumerationHelper.GetEnumDescription(source), time);
            var solarRadiation = (Core.Models.SolarRadiation)ExecuteQuery(selectCmd)[0];
            return solarRadiation;
        }

        public List<Core.Models.SolarRadiation> GetByTime(SolarRadiationSources source, string startDateTime, string endDateTime, string timeStep = "1h")
        {
            var selectCmd = SelectCommand("*", "piinterp", EnumerationHelper.GetEnumDescription(source), startDateTime, endDateTime,timeStep);
            var solarRadiation = (List<Core.Models.SolarRadiation>)ExecuteQuery(selectCmd);
            return solarRadiation;
        }
        private List<Core.Models.SolarRadiation> ExecuteQuery(string selectCmd)
        {
            var solarRadiationList = new List<Core.Models.SolarRadiation>();
            using (piServer)
            {
                piServer.Open();
                Core.Models.SolarRadiation solarRadiation = null;
                var command = new OdbcCommand(selectCmd, piServer);
                var reader = command.ExecuteReader();
                var rowIdx = 0;
                while (reader.Read())
                {
                    solarRadiation = new Core.Models.SolarRadiation();
                    var currentRow = reader[rowIdx]; //tag
                    solarRadiation.Id = Guid.NewGuid();
                    solarRadiation.ReadingDateTime = Convert.ToDateTime(reader[rowIdx + 1].ToString());
                    solarRadiation.Reading = ConvertReadingToDecimal(reader[rowIdx + 2].ToString());//Convert.ToDecimal(reader[rowIdx + 2].ToString());
                    solarRadiation.Status = Convert.ToInt32(reader[rowIdx + 3].ToString());
                    solarRadiation.TimeStamp = DateTime.Now;
                    solarRadiation.TimeStep = Convert.ToInt32(reader[rowIdx + 4].ToString());

                    solarRadiationList.Add(solarRadiation);
                }

            }
            return solarRadiationList;
        }
    }
}
