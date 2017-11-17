using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Practices.Unity;

namespace App.BLL
{
    public class SysRightBLL : IBLL.ISysRightBLL
    {
        [Dependency]
        public IDAL.ISysRightRepository RightDAL { get; set; }

        public List<Models.Sys.permModel> GetPermission(string accountid, string controller)
        {
            return RightDAL.GetPermission(accountid, controller);
        }

        public int UpdateRight(Models.Sys.SysRightOperateModel model)
        {
            return RightDAL.UpdateRight(model);
        }

        public List<Models.P_Sys_GetRightByRoleAndModule_Result> GetRightByRoleAndModule(string roleId, string moduleId)
        {
            return RightDAL.GetRightByRoleAndModule(roleId, moduleId);
        }
    }
}
