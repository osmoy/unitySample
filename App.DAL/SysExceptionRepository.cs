using App.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace App.DAL
{
    public class SysExceptionRepository : IDAL.ISysExceptionRepository
    {
        public System.Data.Entity.DbContext db
        {
            get
            {
                return new SysMgr_DBEntities();
            }
        }

        public IQueryable<SysException> GetList()
        {
            IQueryable<SysException> list = db.Set<SysException>().AsQueryable();
            return list;
        }

        public int Create(SysException entity)
        {
            using (var db = new SysMgr_DBEntities())
            {
                db.Set<SysException>().Add(entity);
                return db.SaveChanges();
            }
        }

        public SysException GetById(string id)
        {
            return db.Set<SysException>().SingleOrDefault(a => a.Id == id);
        }

        public void Delete(string[] deleteCollection)
        {
            using (SysMgr_DBEntities db = new SysMgr_DBEntities())
            {
                IQueryable<SysException> collection = from f in db.SysException
                                                      where deleteCollection.Contains(f.Id)
                                                      select f;

                foreach (var model in collection)
                {
                    db.SysException.Remove(model);
                }
                db.SaveChanges();
            }
        }

    }
}
