using App.Common;
using App.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace App.IBLL
{
    public interface ISysLogBLL
    {

        List<SysLog> GetList(ref GridPager pager, string queryStr);

        SysLog GetById(string id);

        void Delete(string[] deleteCollection);

        void Create(Models.SysLog entity);
    }

}
