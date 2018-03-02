using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace App.IBLL
{
    public interface IAccountBLL
    {

        App.Models.SysUser Login(string username, string pwd);
    }
}
