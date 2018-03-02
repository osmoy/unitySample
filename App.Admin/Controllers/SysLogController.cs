using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Microsoft.Practices.Unity;
using App.Models;
using App.Models.Sys;
using App.Common;
using App.Admin.Filters;

namespace App.Admin.Controllers
{

    [SupportFilter]
    public class SysLogController : BaseController
    {
        [Dependency]
        public IBLL.ISysLogBLL logBLL { get; set; }
        //
        // GET: /SysLog/

        public ActionResult Index()
        {
            ViewBag.Perm = GetPermission();
            return View();
        }

        [SupportFilter(ActionName = "Index")]
        public JsonResult GetList(GridPager pager, string queryStr)
        {
            List<SysLog> list = logBLL.GetList(ref pager, queryStr);
            var json = new
            {
                total = pager.totalRows,
                rows = (from r in list
                        select new SysLogModel()
                        {
                            Id = r.Id,
                            Operator = r.Operator,
                            Message = r.Message,
                            Result = r.Result,
                            Type = r.Type,
                            Module = r.Module,
                            CreateTime = r.CreateTime
                        }).ToArray()
            };

            return Json(json);
        }

        #region 详细
        public ActionResult Details(string id)
        {
            var entity = logBLL.GetById(id);
            var info = new SysLogModel()
            {
                Id = entity.Id,
                Operator = entity.Operator,
                Message = entity.Message,
                Result = entity.Result,
                Type = entity.Type,
                Module = entity.Module,
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
                logBLL.Delete(new string[] { id });
                //TODO 肯定是要继承基类，获取当前登录信息..
                LogHandler.WriteServiceLog("虚拟用户", "Id:" + id, "成功", "删除", "日志模块");
                return Json(JsonHandler.CreateMessage(1, "删除成功"), JsonRequestBehavior.AllowGet);
            }
            catch (Exception e)
            {
                LogHandler.WriteServiceLog("虚拟用户", "Id:" + id, "失败", "删除", "日志模块");
                return Json(JsonHandler.CreateMessage(0, "删除失败,请联系管理员"), JsonRequestBehavior.AllowGet);
            }
        }
        #endregion

    }
}
