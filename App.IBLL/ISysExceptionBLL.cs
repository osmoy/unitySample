using App.Common;
using App.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace App.IBLL
{
    public interface ISysExceptionBLL
    {
        /// <summary>
        /// 获取所有列表
        /// </summary>      
        List<SysException> GetList(ref GridPager pager, string queryStr);

        /// <summary>
        /// 获取单个实体
        /// </summary>
        SysException GetById(string id);

        /// <summary>
        /// 批量删除
        /// </summary>
        /// <param name="deleteCollection"></param>
        void Delete(string[] deleteCollection);
    }

}
