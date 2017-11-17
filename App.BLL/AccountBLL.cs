using Microsoft.Practices.Unity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace App.BLL
{
    public class AccountBLL:IBLL.IAccountBLL
    {
        [Dependency]
        public IDAL.IAccountRepository account { get; set; }
        public Models.SysUser Login(string username, string pwd)
        {
            return account.Login(username, pwd);
        }
    }
}
