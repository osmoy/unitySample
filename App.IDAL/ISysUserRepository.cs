﻿using App.Models;
using System.Linq;
namespace App.IDAL
{
    public interface ISysUserRepository
    {
        IQueryable<SysUser> GetList();

        int Create(SysUser entity);

        int Delete(string id);

        void Delete(string[] deleteCollection);

        int Edit(SysUser entity);

        SysUser GetById(string id);

        bool IsExist(string id);

        IQueryable<P_Sys_GetRoleByUserId_Result> GetRoleByUserId(string userId);

        void UpdateSysRoleSysUser(string userId, string[] roleIds);
    }
}