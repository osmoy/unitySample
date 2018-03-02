using App.Common;
using App.Models.Sys;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace App.IBLL
{
    public interface ISysUserBLL
    {
        List<Models.Sys.permModel> GetPermission(string accountid, string controller);

        List<SysUserModel> GetList(ref GridPager pager, string queryStr);
        bool Create(ref ValidationErrors errors, SysUserModel model);
        bool Delete(ref ValidationErrors errors, string id);
        bool Delete(ref ValidationErrors errors, string[] deleteCollection);
        bool Edit(ref ValidationErrors errors, SysUserModel model);
        SysUserModel GetById(string id);
        bool IsExist(string id);

        IQueryable<Models.P_Sys_GetRoleByUserId_Result> GetRoleByUserId(ref GridPager pager, string userId);

        bool UpdateSysRoleSysUser(string userId, string[] roleIds);

    }
}
