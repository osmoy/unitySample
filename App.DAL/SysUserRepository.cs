using System;
using System.Linq;
using App.Models;
using System.Data;

namespace App.DAL
{
    public class SysUserRepository : IDAL.ISysUserRepository
    {
        public System.Data.Entity.DbContext db
        {
            get
            {
                return new SysMgr_DBEntities();
            }
        }

        public IQueryable<SysUser> GetList()
        {
            IQueryable<SysUser> list = db.Set<SysUser>().AsQueryable();
            return list;
        }

        public int Create(SysUser entity)
        {
            db.Set<SysUser>().Add(entity);
            return db.SaveChanges();
        }

        public int Delete(string id)
        {

            SysUser entity = db.Set<SysUser>().SingleOrDefault(a => a.Id == id);
            if (entity != null)
            {

                db.Set<SysUser>().Remove(entity);
            }
            return db.SaveChanges();

        }

        public void Delete(string[] deleteCollection)
        {
            IQueryable<SysUser> collection = from f in db.Set<SysUser>()
                                             where deleteCollection.Contains(f.Id)
                                             select f;
            foreach (var deleteItem in collection)
            {
                db.Set<SysUser>().Remove(deleteItem);
            }
        }

        public int Edit(SysUser entity)
        {

            db.Set<SysUser>().Attach(entity);
            db.Entry<SysUser>(entity).State = System.Data.Entity.EntityState.Modified;
            return db.SaveChanges();

        }

        public SysUser GetById(string id)
        {
            return db.Set<SysUser>().FirstOrDefault(a => a.Id == id);
        }

        public bool IsExist(string id)
        {
            SysUser entity = GetById(id);
            if (entity != null)
                return true;
            return false;
        }

        public IQueryable<P_Sys_GetRoleByUserId_Result> GetRoleByUserId(string userId)
        {
            return new SysMgr_DBEntities().P_Sys_GetRoleByUserId(userId).AsQueryable();
        }

        public void UpdateSysRoleSysUser(string userId, string[] roleIds)
        {
            using (var db = new SysMgr_DBEntities())
            {
                db.P_Sys_DeleteSysRoleSysUserByUserId(userId);
                foreach (string roleId in roleIds)
                {
                    if (!string.IsNullOrWhiteSpace(roleId))
                    {
                        db.P_Sys_UpdateSysRoleSysUser(roleId, userId);
                    }
                }
                db.SaveChanges();
            }
        }

    }
}
