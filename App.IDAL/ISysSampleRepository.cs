using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using App.Models;

namespace App.IDAL
{
    public interface ISysSampleRepository
    {
        IQueryable<SysSample> GetList();

        int Create(SysSample entity);

        int Delete(int id);

        int Edit(SysSample entity);

        SysSample GetById(int id);

        bool IsExist(int id);
    }
}
