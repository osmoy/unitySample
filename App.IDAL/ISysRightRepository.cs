using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace App.IDAL
{
    public interface ISysRightRepository
    {
        /// <summary>
        /// 获取权限
        /// </summary>
        List<Models.Sys.permModel> GetPermission(string accountid, string controller);

        /// <summary>
        /// 更新
        /// </summary>       
        int UpdateRight(Models.Sys.SysRightOperateModel model);

        /// <summary>
        /// 按选择的角色及模块加载模块的权限项
        /// </summary>
        /// <param name="roleId"></param>
        /// <param name="moduleId"></param>
        /// <returns></returns>
        List<Models.P_Sys_GetRightByRoleAndModule_Result> GetRightByRoleAndModule(string roleId, string moduleId);
    }

}
