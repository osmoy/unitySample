using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using App.Models;

namespace App.IDAL
{
    public interface ISysModuleRepository
    {
        IQueryable<SysModule> GetList();
        IQueryable<SysModule> GetModuleBySystem(string parentId);
        int Create(SysModule entity);
        void Delete(string id);
        int Edit(SysModule entity);
        SysModule GetById(string id);
        bool IsExist(string id);
    }
}
