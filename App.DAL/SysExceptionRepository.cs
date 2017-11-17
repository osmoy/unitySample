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

        /// <summary>
        /// 获取集合
        /// </summary>
        /// <param name="db">数据库</param>
        /// <returns>集合</returns>
        public IQueryable<SysException> GetList()
        {
            IQueryable<SysException> list = db.Set<SysException>().AsQueryable();
            return list;
        }

        /// <summary>
        /// 创建一个对象
        /// </summary>
        /// <param name="db">数据库</param>
        /// <param name="entity">实体</param>
        public int Create(SysException entity)
        {
            using (var db = new SysMgr_DBEntities())
            {
                db.Set<SysException>().Add(entity);
                return db.SaveChanges();
            }
        }

        /// <summary>
        /// 根据ID获取一个实体
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public SysException GetById(string id)
        {
            return db.Set<SysException>().SingleOrDefault(a => a.Id == id);
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
