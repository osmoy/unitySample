using App.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace App.IDAL
{
    public interface ISysExceptionRepository
    {
        /// <summary>
        /// 创建
        /// </summary>
        int Create(SysException entity);

        /// <summary>
        /// 获取所有列表
        /// </summary>      
        IQueryable<SysException> GetList();

        /// <summary>
        /// 获取单个实体
        /// </summary>
        SysException GetById(string id);

        /// <summary>
        /// 删除对象集合
        /// </summary>
        /// <param name="db">数据库</param>
        /// <param name="deleteCollection">集合</param>
        void Delete(string[] deleteCollection);
    }

}
