using App.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace App.IDAL
{
    public interface ISysLogRepository
    {
        int Create(SysLog entity);
        void Delete(string[] deleteCollection);
        IQueryable<SysLog> GetList();
        SysLog GetById(string id);
    }
}
