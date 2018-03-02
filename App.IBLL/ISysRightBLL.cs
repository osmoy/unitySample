using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace App.IBLL
{
    public interface ISysRightBLL
    {

        List<Models.Sys.permModel> GetPermission(string accountid, string controller);
  
        int UpdateRight(Models.Sys.SysRightOperateModel model);

        List<Models.P_Sys_GetRightByRoleAndModule_Result> GetRightByRoleAndModule(string roleId, string moduleId);
    }
}
