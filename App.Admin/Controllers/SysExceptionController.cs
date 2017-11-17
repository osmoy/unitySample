using App.Admin.Filters;
using App.Common;
using App.Models;
using App.Models.Sys;
using Microsoft.Practices.Unity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace App.Admin.Controllers
{
    /// <summary>
    /// 异常日志
    /// </summary>
    public class SysExceptionController : BaseController
    {
        [Dependency]
        public IBLL.ISysExceptionBLL exceptionBLL { get; set; }

        [SupportFilter]
        public ActionResult Index()
        {
            return View();
        }

        [SupportFilter(ActionName = "Index")]
        public JsonResult GetList(GridPager pager, string queryStr)
        {
            var list = exceptionBLL.GetList(ref pager, queryStr);

            var json = new
            {
                total = pager.totalRows,
                rows = (from r in list
                        select new SysException()
                        {
                            Id = r.Id,
                            HelpLink = r.HelpLink,
                            Message = r.Message,
                            Source = r.Source,
                            StackTrace = r.StackTrace,
                            TargetSite = r.TargetSite,
                            Data = r.Data,
                            CreateTime = r.CreateTime
                        }).ToArray()
            };

            return Json(json);
        }

        #region 详细
        public ActionResult Details(string id)
        {
            var entity = exceptionBLL.GetById(id);
            var info = new SysExceptionModel()
            {
                Id = entity.Id,
                HelpLink = entity.HelpLink,
                Message = entity.Message,
                Source = entity.Source,
                StackTrace = entity.StackTrace,
                TargetSite = entity.TargetSite,
                Data = entity.Data,
                CreateTime = entity.CreateTime,
            };
            return View(info);
        }
        #endregion

        #region 删除
        [HttpPost]
        public ActionResult Delete(string id)
        {
            try
            {
                var errors = Core.Globle.errors;    //引用删除异常..
                exceptionBLL.Delete(new string[] { id });
                //TODO 肯定是要继承基类，获取当前登录信息..
                LogHandler.WriteServiceLog(base.GetUserTrueName(), "Id:" + id, "成功", "删除", "日志模块");
                return Json(JsonHandler.CreateMessage(1, "删除成功"), JsonRequestBehavior.AllowGet);
            }
            catch (Exception e)
            {
                LogHandler.WriteServiceLog(base.GetUserTrueName(), "Id:" + id, "失败", "删除", "日志模块");
                return Json(JsonHandler.CreateMessage(0, "删除失败,请联系管理员"), JsonRequestBehavior.AllowGet);
            }
        }
        #endregion

        /// <summary>
        /// 显示错误页面
        /// </summary>
        /// <returns></returns>
        public ActionResult Error()
        {
            Core.BaseException ex = new Core.BaseException();
            return View(ex);
        }

        /*
         * http://www.cnblogs.com/ymnets/p/3436579.html  系统日志和异常的处理Ⅱ
         * 
         * http://www.cnblogs.com/ymnets/p/3435754.html  优化
         * 
         * http://www.cnblogs.com/ymnets/p/3452364.html  权限管理
         * 
         * http://www.cnblogs.com/ymnets/p/3452407.html  判断是否有操作权限
         * 
         * select * from SysUser

            select * from SysRole	--

            select * from SysRoleSysUser

            select * from SysRight	--将模块授权给【角色】，只有被模块授权的角色才能设置权限【Id】

            select * from SysRightOperate --这个是角色拥有的操作码         
            select * from SysModuleOperate --模块的操作码表，我把每个Action都看作是一个操作码
         *
         * */
    }
}
