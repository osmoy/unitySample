using App.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace App.IBLL
{
    public interface IHomeBLL
    {        
        /// <summary>
        /// 根据用户权限获取菜单列表
        /// </summary>
        /// <param name="moduleId">模块id</param>
        List<SysModule> GetMenuByPersonId(string personId, string moduleId);

    }
}
