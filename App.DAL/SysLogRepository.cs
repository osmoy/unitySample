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

        /// <summary>
        /// 获取集合
        /// </summary>
        /// <param name="db">数据库</param>
        /// <returns>集合</returns>
        public IQueryable<SysLog> GetList()
        {
            var list = db.Set<Models.SysLog>().AsQueryable();
            return list;
        }
        /// <summary>
        /// 创建一个对象
        /// </summary>
        /// <param name="db">数据库</param>
        /// <param name="entity">实体</param>
        public int Create(SysLog entity)
        {
            using (SysMgr_DBEntities db = new SysMgr_DBEntities())
            {
                db.SysLog.Add(entity);
                return db.SaveChanges();
            }
        }

        /// <summary>
        /// 删除对象集合
        /// </summary>
        /// <param name="db">数据库</param>
        /// <param name="deleteCollection">集合</param>
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
        /// <summary>
        /// 根据ID获取一个实体
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public SysLog GetById(string id)
        {
            using (SysMgr_DBEntities db = new SysMgr_DBEntities())
            {
                return db.SysLog.SingleOrDefault(a => a.Id == id);
            }
        }       

    }
}
