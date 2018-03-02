using App.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace App.DAL
{
    public class SysLogRepository : IDAL.ISysLogRepository
    {
        public System.Data.Entity.DbContext db
        {
            get
            {
                return new SysMgr_DBEntities();
            }
        }

        public IQueryable<SysLog> GetList()
        {
            var list = db.Set<Models.SysLog>().AsQueryable();
            return list;
        }

        public int Create(SysLog entity)
        {
            using (SysMgr_DBEntities db = new SysMgr_DBEntities())
            {
                db.SysLog.Add(entity);
                return db.SaveChanges();
            }
        }

        public void Delete(string[] deleteCollection)
        {            
            using (SysMgr_DBEntities db = new SysMgr_DBEntities())
            {
                IQueryable<SysLog> collection = from f in db.SysLog
                                                where deleteCollection.Contains(f.Id)
                                                select f;

                foreach (var model in collection)
                {
                    db.SysLog.Remove(model);
                }
                db.SaveChanges();
            }
        }

        public SysLog GetById(string id)
        {
            using (SysMgr_DBEntities db = new SysMgr_DBEntities())
            {
                return db.SysLog.SingleOrDefault(a => a.Id == id);
            }
        }       

    }
}
