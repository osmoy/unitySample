using App.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace App.IDAL
{
    public interface IHomeRepository
    {
        /// <summary>
        /// 获取列表
        /// </summary>
        /// <param name="db">数据库上下文</param>
        /// <returns>数据列表</returns>
        IQueryable<SysModule> GetList();
        /// <summary>
        /// 创建一个实体
        /// </summary>
        /// <param name="entity">实体</param>
        int Create(SysModule entity);
        /// <summary>
        /// 删除一个实体
        /// </summary>
        /// <param name="entity">主键ID</param>
        int Delete(string id);

        /// <summary>
        /// 修改一个实体
        /// </summary>
        /// <param name="entity">实体</param>
        int Edit(SysModule entity);
        /// <summary>
        /// 获得一个实体
        /// </summary>
        /// <param name="id">id</param>
        /// <returns>实体</returns>
        SysModule GetById(string id);

        /// <summary>
        /// 判断一个实体是否存在
        /// </summary>
        bool IsExist(string id);

        /// <summary>
        /// 根据用户权限获取菜单列表
        /// </summary>
        /// <param name="moduleId">模块id</param>                
        List<SysModule> GetMenuByPersonId(string personId, string moduleId);

    }
}
