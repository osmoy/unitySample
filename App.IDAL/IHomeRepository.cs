using App.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace App.IDAL
{
    public interface IHomeRepository
    {
        IQueryable<SysModule> GetList();

        int Create(SysModule entity);

        int Delete(string id);

        int Edit(SysModule entity);

        SysModule GetById(string id);

        bool IsExist(string id);
              
        List<SysModule> GetMenuByPersonId(string personId, string moduleId);

    }
}
