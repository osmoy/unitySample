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
        /// <summary>
        /// 获取当前用户权限列表
        /// </summary>
        List<Models.Sys.permModel> GetPermission(string accountid, string controller);

        List<SysUserModel> GetList(ref GridPager pager, string queryStr);
        bool Create(ref ValidationErrors errors, SysUserModel model);
        bool Delete(ref ValidationErrors errors, string id);
        bool Delete(ref ValidationErrors errors, string[] deleteCollection);
        bool Edit(ref ValidationErrors errors, SysUserModel model);
        SysUserModel GetById(string id);
        bool IsExist(string id);

        /// <summary>
        /// 根据用户查询角色信息
        /// </summary>
        IQueryable<Models.P_Sys_GetRoleByUserId_Result> GetRoleByUserId(ref GridPager pager, string userId);

        /// <summary>
        /// 设置用户角色
        /// </summary>
        bool UpdateSysRoleSysUser(string userId, string[] roleIds);

    }
}
