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

        /// <summary>
        /// 获取列表
        /// </summary>
        /// <param name="db">数据库上下文</param>
        /// <returns>数据列表</returns>
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
        /// <summary>
        /// 创建一个实体
        /// </summary>
        /// <param name="db">数据库上下文</param>
        /// <param name="entity">实体</param>
        public int Create(SysSample entity)
        {
            using (SysMgr_DBEntities db = new SysMgr_DBEntities())
            {
                db.SysSample.Add(entity);
                return db.SaveChanges();
            }
        }
        /// <summary>
        /// 删除一个实体
        /// </summary>
        /// <param name="db">数据库上下文</param>
        /// <param name="entity">主键ID</param>
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

        /// <summary>
        /// 修改一个实体
        /// </summary>
        /// <param name="db">数据库上下文</param>
        /// <param name="entity">实体</param>
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
        /// <summary>
        /// 获得一个实体
        /// </summary>
        /// <param name="id">id</param>
        /// <returns>实体</returns>
        public SysSample GetById(int id)
        {
            using (SysMgr_DBEntities db = new SysMgr_DBEntities())
            {
                return db.SysSample.SingleOrDefault(a => a.Id == id);
            }
        }
        /// <summary>
        /// 判断一个实体是否存在
        /// </summary>
        /// <param name="id">id</param>
        /// <returns>是否存在 true or false</returns>
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