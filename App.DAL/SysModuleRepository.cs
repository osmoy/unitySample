using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using App.Models;

namespace App.DAL
{
    public class SysModuleRepository : IDAL.ISysModuleRepository
    {
        public System.Data.Entity.DbContext db
        {
            get
            {
                return new SysMgr_DBEntities();
            }
        }

        public IQueryable<SysModule> GetList()
        {
            IQueryable<SysModule> list = db.Set<SysModule>().AsQueryable();
            return list;
        }

        public IQueryable<SysModule> GetModuleBySystem(string parentId)
        {
            return db.Set<SysModule>().Where(a => a.ParentId == parentId).AsQueryable();
        }

        public int Create(SysModule entity)
        {
            db.Set<SysModule>().Add(entity);
            return db.SaveChanges();
        }

        public void Delete(string id)
        {
            SysModule entity = db.Set<SysModule>().SingleOrDefault(a => a.Id == id);
            if (entity != null)
            {
                //删除SysRight表数据
                var sr = db.Set<SysRight>().AsQueryable().Where(a => a.ModuleId == id);
                foreach (var o in sr)
                {
                    //删除SysRightOperate表数据
                    var sro = db.Set<SysRightOperate>().AsQueryable().Where(a => a.RightId == o.Id);
                    foreach (var o2 in sro)
                    {
                        db.Set<SysRightOperate>().Remove(o2);
                    }
                    db.Set<SysRight>().Remove(o);
                }
                //删除SysModuleOperate数据
                var smo = db.Set<SysModuleOperate>().AsQueryable().Where(a => a.ModuleId == id);
                foreach (var o3 in smo)
                {
                    db.Set<SysModuleOperate>().Remove(o3);
                }
                db.Set<SysModule>().Remove(entity);
            }
        }

        public int Edit(SysModule entity)
        {
            using (SysMgr_DBEntities db = new SysMgr_DBEntities())
            {
                db.SysModule.Attach(entity);
                db.Entry<SysModule>(entity).State = System.Data.Entity.EntityState.Modified;
                return db.SaveChanges();
            }
        }

        public SysModule GetById(string id)
        {
            using (SysMgr_DBEntities db = new SysMgr_DBEntities())
            {
                return db.SysModule.SingleOrDefault(a => a.Id == id);
            }
        }

        public bool IsExist(string id)
        {
            using (SysMgr_DBEntities db = new SysMgr_DBEntities())
            {
                SysModule entity = GetById(id);
                if (entity != null)
                    return true;
                return false;
            }
        }


    }
}
