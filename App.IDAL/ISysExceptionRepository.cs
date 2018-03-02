using App.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace App.IDAL
{
    public interface ISysExceptionRepository
    {
        int Create(SysException entity);
   
        IQueryable<SysException> GetList();

        SysException GetById(string id);

        void Delete(string[] deleteCollection);
    }

}
