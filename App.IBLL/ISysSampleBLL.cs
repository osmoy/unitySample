using App.Common;
using App.Models.Sys;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace App.IBLL
{
    public interface ISysSampleBLL
    {
      
        List<SysSampleModel> GetList(ref GridPager pager, string queryStr);

        bool Create(ref ValidationErrors errors, SysSampleModel model);

        bool Delete(int id);

        bool Edit(SysSampleModel model);

        SysSampleModel GetById(int id);

        bool IsExist(int id);


    }
}