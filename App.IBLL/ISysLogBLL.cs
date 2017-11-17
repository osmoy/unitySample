using App.Common;
using App.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace App.IBLL
{
    public interface ISysLogBLL
    {
        /// <summary>
        /// 分页列表
        /// </summary>
        /// <returns></returns>
        List<SysLog> GetList(ref GridPager pager, string queryStr);

        /// <summary>
        /// 获取单个实体
        /// </summary>
        /// <param name="id"></param>        
        SysLog GetById(string id);

        /// <summary>
        /// 批量删除
        /// </summary>
        /// <param name="deleteCollection"></param>
        void Delete(string[] deleteCollection);

        void Create(Models.SysLog entity);
    }

}
