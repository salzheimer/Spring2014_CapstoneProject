﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EnvironmentalApp.Core.Data.SQLServer
{
    public interface IReportRepository
    {
       int Create(Core.Models.Report entity);
        /// <summary>
        /// takes a key/value pair key=property name value=search value
        /// </summary>
        /// <param name="propertyValuePair"></param>
        /// <returns></returns>
       List<Core.Models.Report> Get(string propertyName, string value);
       List<Core.Models.Report> Get(DateTime startDateTime, DateTime endDateTime);

       int Update(Core.Models.Report entity);
       int Delete(Guid reportId);
    
    }
}