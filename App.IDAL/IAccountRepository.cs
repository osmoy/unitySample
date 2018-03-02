using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace App.IDAL
{
    public interface IAccountRepository
    {
        App.Models.SysUser Login(string username, string pwd);
    }

}
