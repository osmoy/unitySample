using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using App.Models;

namespace App.DAL
{
    public class SysSampleSetRepository : IDAL.ISysSampleRepository
    {
        public System.Data.Entity.DbContext db
        {
            get
            {
                return new SysMgr_DBEntities();
            }
        }        

        public IQueryable<SysSample> GetList()
        {
            var list = db.Set<Models.SysSample>().AsQueryable();
            #region old
            //using (SysMgr_DBEntities db = new SysMgr_DBEntities())
            //{
            //    IQueryable<SysSample> list = db.SysSample.AsQueryable();
            //    return list;
            //}
            #endregion
            return list;
        }

        public int Create(SysSample entity)
        {
            using (SysMgr_DBEntities db = new SysMgr_DBEntities())
            {
                db.SysSample.Add(entity);
                return db.SaveChanges();
            }
        }

        public int Delete(int id)
        {
            using (SysMgr_DBEntities db = new SysMgr_DBEntities())
            {
                SysSample entity = db.SysSample.SingleOrDefault(a => a.Id == id);
                if (entity != null)
                {
                    db.SysSample.Remove(entity);
                }
                return db.SaveChanges();
            }
        }

        public int Edit(SysSample entity)
        {
            using (SysMgr_DBEntities db = new SysMgr_DBEntities())
            {
                db.SysSample.Attach(entity);
                //db.ObjectStateManager.ChangeObjectState(entity, EntityState.Modified);
                db.Entry<SysSample>(entity).State = System.Data.Entity.EntityState.Modified;
                return db.SaveChanges();
            }
        }

        public SysSample GetById(int id)
        {
            using (SysMgr_DBEntities db = new SysMgr_DBEntities())
            {
                return db.SysSample.SingleOrDefault(a => a.Id == id);
            }
        }

        public bool IsExist(int id)
        {
            using (SysMgr_DBEntities db = new SysMgr_DBEntities())
            {
                SysSample entity = GetById(id);
                if (entity != null)
                    return true;
                return false;
            }
        }

    }
}