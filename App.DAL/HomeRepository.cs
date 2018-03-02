using App.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace App.DAL
{
    public class HomeRepository : IDAL.IHomeRepository
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
            var list = db.Set<Models.SysModule>().AsQueryable();
            #region old
            //using (SysMgr_DBEntities db = new SysMgr_DBEntities())
            //{
            //    IQueryable<SysModule> list = db.SysModule.AsQueryable();
            //    return list;
            //}
            #endregion
            return list;
        }

        public int Create(SysModule entity)
        {
            using (SysMgr_DBEntities db = new SysMgr_DBEntities())
            {
                db.SysModule.Add(entity);
                return db.SaveChanges();
            }
        }

        public int Delete(string id)
        {
            using (SysMgr_DBEntities db = new SysMgr_DBEntities())
            {
                SysModule entity = db.SysModule.SingleOrDefault(a => a.Id == id);
                if (entity != null)
                {

                    db.SysModule.Remove(entity);
                }
                return db.SaveChanges();
            }
        }

        public int Edit(SysModule entity)
        {
            using (SysMgr_DBEntities db = new SysMgr_DBEntities())
            {
                db.SysModule.Attach(entity);
                //db.ObjectStateManager.ChangeObjectState(entity, EntityState.Modified);
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

        public List<SysModule> GetMenuByPersonId(string personId, string moduleId)
        {            
            using (var db = new SysMgr_DBEntities())
            {
                var menus = (from m in db.SysModule
                             join rl in db.SysRight
                             on m.Id equals rl.ModuleId
                             join role in
                                 (from r in db.SysRole
                                  from u in r.SysUser
                                  where u.Id == personId
                                  select r)
                             on rl.RoleId equals role.Id

                             where rl.Rightflag == true
                             where m.ParentId == moduleId
                             where m.Id != "0"
                             select m).Distinct().OrderBy(a => a.Sort).ToList();
                return menus;
            }
        }
      

    }
}
