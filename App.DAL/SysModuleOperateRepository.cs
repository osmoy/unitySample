using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using App.Models;


namespace App.DAL
{
    public class SysModuleOperateRepository : IDAL.ISysModuleOperateRepository, IDisposable
    {
        public System.Data.Entity.DbContext db
        {
            get
            {
                return new SysMgr_DBEntities();
            }
        }

        public IQueryable<SysModuleOperate> GetList()
        {
            IQueryable<SysModuleOperate> list = db.Set<SysModuleOperate>().AsQueryable();
            return list;
        }

        public int Create(SysModuleOperate entity)
        {
            #region MyRegion
            using (var db = new SysMgr_DBEntities())
            {
                db.SysModuleOperate.Add(entity);
                return db.SaveChanges();
            }
            #endregion
            //db.Set<SysModuleOperate>().Add(entity);
            //return db.SaveChanges();
        }

        public int Delete(string id)
        {

            SysModuleOperate entity = db.Set<SysModuleOperate>().SingleOrDefault(a => a.Id == id);
            if (entity != null)
            {

                db.Set<SysModuleOperate>().Remove(entity);
            }
            return db.SaveChanges();

        }

        public SysModuleOperate GetById(string id)
        {
            return db.Set<SysModuleOperate>().SingleOrDefault(a => a.Id == id);
        }

        public bool IsExist(string id)
        {
            SysModuleOperate entity = GetById(id);
            if (entity != null)
                return true;
            return false;
        }
        public void Dispose()
        {

        }


    }
}
