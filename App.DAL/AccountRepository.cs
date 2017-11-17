using App.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace App.DAL
{
    public class AccountRepository : IDAL.IAccountRepository
    {
        //public System.Data.Entity.DbContext db
        //{
        //    get { return new SysMgr_DBEntities(); }
        //}
        public SysUser Login(string username, string pwd)
        {
            using (var db = new SysMgr_DBEntities())
            {
                SysUser user = db.SysUser.SingleOrDefault(a => a.UserName == username && a.Password == pwd);
                return user;
            }
        }

    }
}
