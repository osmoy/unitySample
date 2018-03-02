using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Microsoft.Practices.Unity;
using App.Common;
using App.Admin.Filters;
using App.Models.Sys;

namespace App.Admin.Controllers
{
    [SupportFilter]
    public class SysModuleController : BaseController
    {

        [Dependency]
        public IBLL.ISysModuleBLL m_BLL { get; set; }
        [Dependency]
        public IBLL.ISysModuleOperateBLL operateBLL { get; set; }
        ValidationErrors errors = Core.Globle.errors;
        //
        // GET: /SysModule/

        public ActionResult Index()
        {
            ViewBag.Perm = GetPermission();
            return View();
        }

        #region 获取列表 +JsonResult GetList(string id)
        [SupportFilter(ActionName = "Index")]
        [HttpPost]
        public JsonResult GetList(string id)
        {
            if (id == null)
                id = "0";
            List<SysModuleModel> list = m_BLL.GetList(id);
            var json = from r in list
                       select new SysModuleModel()
                       {
                           Id = r.Id,
                           Name = r.Name,
                           EnglishName = r.EnglishName,
                           ParentId = r.ParentId,
                           Url = r.Url,
                           Iconic = r.Iconic,
                           Sort = r.Sort,
                           Remark = r.Remark,
                           Enable = r.Enable,
                           CreatePerson = r.CreatePerson,
                           CreateTime = r.CreateTime,
                           IsLast = r.IsLast,
                           state = (m_BLL.GetList(r.Id).Count > 0) ? "closed" : "open"
                       };

            return Json(json);
        }

        [SupportFilter(ActionName = "Index")]
        [HttpPost]
        public JsonResult GetOptListByModule(GridPager pager, string mid)
        {
            pager.rows = 1000;
            pager.page = 1;
            List<SysModuleOperateModel> list = operateBLL.GetList(ref pager, mid);
            var json = new
            {
                total = pager.totalRows,
                rows = (from r in list
                        select new SysModuleOperateModel()
                        {
                            Id = r.Id,
                            Name = r.Name,
                            KeyCode = r.KeyCode,
                            ModuleId = r.ModuleId,
                            IsValid = r.IsValid,
                            Sort = r.Sort

                        }).ToArray()
            };

            return Json(json);
        }
        #endregion

        #region 创建模块 +ActionResult Create(string id)
        [SupportFilter]
        public ActionResult Create(string id)
        {
            ViewBag.Perm = GetPermission();
            ViewData.Model = new SysModuleModel()
            {
                ParentId = id,
                Enable = true,
                Sort = 0
            };
            return View();
        }

        [HttpPost]
        [SupportFilter]
        public JsonResult Create(SysModuleModel model)
        {
            model.Id = ResultHelper.NewId;
            model.CreateTime = ResultHelper.NowTime;
            model.CreatePerson = GetUserId();
            if (model != null && ModelState.IsValid)
            {

                if (m_BLL.Create(ref errors, model))
                {
                    //写入日志
                    LogHandler.WriteServiceLog(GetUserId(), "Id" + model.Id + ",Name" + model.Name, "成功", "创建", "SysModule");
                    return Json(JsonHandler.CreateMessage(1, Suggestion.InsertSucceed));
                }
                else
                {
                    string ErrorCol = errors.Error;
                    LogHandler.WriteServiceLog(GetUserId(), "Id" + model.Id + ",Name" + model.Name + "," + ErrorCol, "失败", "创建", "SysModule");
                    return Json(JsonHandler.CreateMessage(0, Suggestion.InsertFail + ErrorCol));
                }
            }
            else
            {
                return Json(JsonHandler.CreateMessage(0, Suggestion.InsertFail));
            }
        }
        #endregion

        #region 创建可以操作的模块权限 + ActionResult CreateOpt(string moduleId)
        [SupportFilter(ActionName = "Create")]
        public ActionResult CreateOpt(string id)
        {
            ViewBag.Perm = GetPermission();
            ViewBag.moduleId = id;
            SysModuleOperateModel sysModuleOptModel = new SysModuleOperateModel();
            sysModuleOptModel.ModuleId = id;
            sysModuleOptModel.IsValid = true;
            return View(sysModuleOptModel);
        }

        [HttpPost]
        [SupportFilter(ActionName = "Create")]
        public JsonResult CreateOpt(SysModuleOperateModel info)
        {
            if (info != null && ModelState.IsValid)
            {
                SysModuleOperateModel entity = operateBLL.GetById(info.Id);
                if (entity != null)
                    return Json(JsonHandler.CreateMessage(0, Suggestion.PrimaryRepeat), JsonRequestBehavior.AllowGet);
                entity = new SysModuleOperateModel();
                entity.Id = info.ModuleId + info.KeyCode;
                entity.Name = info.Name;
                entity.KeyCode = info.KeyCode;
                entity.ModuleId = info.ModuleId;
                entity.IsValid = info.IsValid;
                entity.Sort = info.Sort;

                if (operateBLL.Create(ref errors, entity))
                {
                    LogHandler.WriteServiceLog(GetUserId(), "Id:" + info.Id + ",Name:" + info.Name, "成功", "创建", "模块设置");
                    return Json(JsonHandler.CreateMessage(1, Suggestion.InsertSucceed), JsonRequestBehavior.AllowGet);
                }
                else
                {
                    string ErrorCol = errors.Error;
                    LogHandler.WriteServiceLog(GetUserId(), "Id:" + info.Id + ",Name:" + info.Name + "," + ErrorCol, "失败", "创建", "模块设置");
                    return Json(JsonHandler.CreateMessage(0, Suggestion.InsertFail + ErrorCol), JsonRequestBehavior.AllowGet);
                }
            }
            else
            {
                return Json(JsonHandler.CreateMessage(0, Suggestion.InsertFail), JsonRequestBehavior.AllowGet);
            }
        }
        #endregion

        #region 修改模块 + ActionResult Edit(string id)
        [SupportFilter]
        public ActionResult Edit(string id)
        {
            ViewBag.Perm = GetPermission();
            SysModuleModel entity = m_BLL.GetById(id);
            return View(entity);
        }

        [HttpPost]
        [SupportFilter]
        public JsonResult Edit(SysModuleModel model)
        {
            if (model != null && ModelState.IsValid)
            {
                if (m_BLL.Edit(ref errors, model))
                {
                    LogHandler.WriteServiceLog(GetUserId(), "Id" + model.Id + ",Name" + model.Name, "成功", "修改", "系统菜单");
                    return Json(JsonHandler.CreateMessage(1, Suggestion.EditSucceed));
                }
                else
                {
                    string ErrorCol = errors.Error;
                    LogHandler.WriteServiceLog(GetUserId(), "Id" + model.Id + ",Name" + model.Name + "," + ErrorCol, "失败", "修改", "系统菜单");
                    return Json(JsonHandler.CreateMessage(0, Suggestion.EditFail + ErrorCol));
                }
            }
            else
            {
                return Json(JsonHandler.CreateMessage(0, Suggestion.EditFail));
            }
        }
        #endregion

        #region 删除
        [HttpPost]
        public JsonResult Delete(string id)
        {
            if (!string.IsNullOrWhiteSpace(id))
            {
                if (m_BLL.Delete(ref errors, id))
                {
                    LogHandler.WriteServiceLog(GetUserId(), "Ids:" + id, "成功", "删除", "模块设置");
                    return Json(JsonHandler.CreateMessage(1, Suggestion.DeleteSucceed), JsonRequestBehavior.AllowGet);
                }
                else
                {
                    string ErrorCol = errors.Error;
                    LogHandler.WriteServiceLog(GetUserId(), "Id:" + id + "," + ErrorCol, "失败", "删除", "模块设置");
                    return Json(JsonHandler.CreateMessage(0, Suggestion.DeleteFail + ErrorCol), JsonRequestBehavior.AllowGet);
                }
            }
            else
            {
                return Json(JsonHandler.CreateMessage(0, Suggestion.DeleteFail), JsonRequestBehavior.AllowGet);
            }


        }

        [HttpPost]
        [SupportFilter(ActionName = "Delete")]
        public JsonResult DeleteOpt(string id)
        {
            if (!string.IsNullOrWhiteSpace(id))
            {
                if (operateBLL.Delete(ref errors, id))
                {
                    LogHandler.WriteServiceLog(GetUserId(), "Id:" + id, "成功", "删除", "模块设置KeyCode");
                    return Json(JsonHandler.CreateMessage(1, Suggestion.DeleteSucceed), JsonRequestBehavior.AllowGet);
                }
                else
                {
                    string ErrorCol = errors.Error;
                    LogHandler.WriteServiceLog(GetUserId(), "Id:" + id + "," + ErrorCol, "失败", "删除", "模块设置KeyCode");
                    return Json(JsonHandler.CreateMessage(0, Suggestion.DeleteFail + ErrorCol), JsonRequestBehavior.AllowGet);
                }
            }
            else
            {
                return Json(JsonHandler.CreateMessage(0, Suggestion.DeleteFail), JsonRequestBehavior.AllowGet);
            }


        }

        #endregion



    }
}
