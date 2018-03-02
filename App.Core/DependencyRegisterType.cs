using App.BLL;
using App.DAL;
using App.IBLL;
using App.IDAL;
using Microsoft.Practices.Unity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace App.Core
{
    public class DependencyRegisterType
    {
        public static void Container_Sys(ref UnityContainer container)
        {
            container.RegisterType<ISysSampleBLL, SysSampleBLL>();//样例
            container.RegisterType<ISysSampleRepository, SysSampleSetRepository>();
            //System.Web.Mvc.DependencyResolver.SetResolver(new UnityDependencyResolver(Container));//MVC特有的

            container.RegisterType<IHomeBLL, HomeBLL>();
            container.RegisterType<IHomeRepository, HomeRepository>();

            container.RegisterType<ISysLogBLL, SysLogBLL>();
            container.RegisterType<ISysLogRepository, SysLogRepository>();

            container.RegisterType<ISysExceptionBLL, SysExceptionBLL>();
            container.RegisterType<ISysExceptionRepository, SysExceptionRepository>();

            container.RegisterType<IAccountBLL, AccountBLL>();
            container.RegisterType<IAccountRepository, AccountRepository>();

            container.RegisterType<IBLL.ISysUserBLL, BLL.SysUserBLL>();
            container.RegisterType<ISysRightRepository, SysRightRepository>();

            container.RegisterType<ISysModuleOperateBLL, SysModuleOperateBLL>();
            container.RegisterType<ISysModuleOperateRepository, SysModuleOperateRepository>();

            container.RegisterType<ISysModuleBLL, SysModuleBLL>();
            container.RegisterType<ISysModuleRepository, SysModuleRepository>();

            container.RegisterType<ISysRoleBLL, SysRoleBLL>();
            container.RegisterType<ISysRoleRepository, SysRoleRepository>();

            container.RegisterType<ISysRightBLL, SysRightBLL>();
            container.RegisterType<ISysRightRepository, SysRightRepository>();

            container.RegisterType<IBLL.ISysUserBLL, BLL.SysUserBLL>();
            container.RegisterType<ISysUserRepository, SysUserRepository>();
           
        }

    }
}
