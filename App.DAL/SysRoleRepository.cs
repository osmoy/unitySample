using App.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace App.DAL
{
    public class SysRoleRepository : IDAL.ISysRoleRepository
    {
        public System.Data.Entity.DbContext db
        {
            get { return new SysMgr_DBEntities(); }
        }
        public IQueryable<SysRole> GetList()
        {
            IQueryable<SysRole> list = db.Set<SysRole>().AsQueryable();
            return list;
        }

        public int Create(SysRole entity)
        {
            //db.Set<SysRole>().Add(entity);
            using (var db = new SysMgr_DBEntities())
            {
                db.SysRole.Add(entity);
                return db.SaveChanges();
            }
            
        }

        public int Delete(string id)
        {
            using (var db = new SysMgr_DBEntities())
            {
                var entity = db.SysRole.Find(id);
                if (entity != null)
                {
                    db.Set<SysRole>().Remove(entity);
                }
                return db.SaveChanges();
            }
        }

        public int Edit(SysRole entity)
        {
            using (var db = new SysMgr_DBEntities())
            {
                db.Set<SysRole>().Attach(entity);
                db.Entry<SysRole>(entity).State = System.Data.Entity.EntityState.Modified;
                return db.SaveChanges();
            }
        }

        public SysRole GetById(string id)
        {
            using (var db = new SysMgr_DBEntities())
            {
                return db.SysRole.SingleOrDefault(a => a.Id == id);
            }
        }

        public bool IsExist(string id)
        {

            SysRole entity = GetById(id);
            if (entity != null)
                return true;
            return false;

        }

        public void Dispose()
        {

        }
    }

}
