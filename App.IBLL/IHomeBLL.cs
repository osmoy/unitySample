using App.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace App.IBLL
{
    public interface IHomeBLL
    {        

        List<SysModule> GetMenuByPersonId(string personId, string moduleId);

    }
}
