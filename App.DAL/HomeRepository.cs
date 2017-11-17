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

        /// <summary>
        /// 获取列表
        /// </summary>
        /// <param name="db">数据库上下文</param>
        /// <returns>数据列表</returns>
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
        /// <summary>
        /// 创建一个实体
        /// </summary>
        /// <param name="db">数据库上下文</param>
        /// <param name="entity">实体</param>
        public int Create(SysModule entity)
        {
            using (SysMgr_DBEntities db = new SysMgr_DBEntities())
            {
                db.SysModule.Add(entity);
                return db.SaveChanges();
            }
        }
        /// <summary>
        /// 删除一个实体
        /// </summary>
        /// <param name="db">数据库上下文</param>
        /// <param name="entity">主键ID</param>
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

        /// <summary>
        /// 修改一个实体
        /// </summary>
        /// <param name="db">数据库上下文</param>
        /// <param name="entity">实体</param>
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
        /// <summary>
        /// 获得一个实体
        /// </summary>
        /// <param name="id">id</param>
        /// <returns>实体</returns>
        public SysModule GetById(string id)
        {
            using (SysMgr_DBEntities db = new SysMgr_DBEntities())
            {
                return db.SysModule.SingleOrDefault(a => a.Id == id);
            }
        }
        /// <summary>
        /// 判断一个实体是否存在
        /// </summary>
        /// <param name="id">id</param>
        /// <returns>是否存在 true or false</returns>
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

        /// <summary>
        /// 根据用户权限查询菜单列表
        /// </summary>
        /// <param name="personId"></param>
        /// <param name="moduleId"></param>
        /// <returns></returns>
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
