using Microsoft.Practices.Unity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using App.IBLL;
using App.Models.Sys;
using App.Common;
using App.Admin.Filters;
using App.Models.Enums;

namespace App.Admin.Controllers
{
    [SupportFilter]
    public class SysSampleController : BaseController
    {
        [Dependency]
        public ISysSampleBLL m_BLL { get; set; }

        public ActionResult Index()
        {
            return View();
        }

        [HttpPost]
        [SupportFilter(ActionName = "Index")]
        public JsonResult GetList(GridPager pager, string queryStr)
        {
            List<SysSampleModel> list = m_BLL.GetList(ref pager, queryStr);
            var jsonData = new
            {
                total = pager.totalRows,
                rows = (from r in list
                        select new SysSampleModel()
                        {
                            Id = r.Id,
                            Name = r.Name,
                            Age = r.Age,
                            BirthDay = r.BirthDay,
                            Photo = r.Photo,
                            Note = r.Note,
                            CreateTime = r.CreateTime,
                        }).ToArray()
            };
            return Json(jsonData, JsonRequestBehavior.AllowGet);
        }

        #region 创建
        public ActionResult Create()
        {
            return View();
        }

        [HttpPost]
        public string Create(SysSampleModel model)
        {
            var errors = Core.Globle.errors;
            if (m_BLL.Create(ref errors, model))
            {
                //记录操作日志
                LogHandler.WriteServiceLog(base.GetUserTrueName(), "Id:" + model.Id + ",Name:" + model.Name, "成功", "创建", "样例程序");
                return JsonHandler.CreateMessage((int)EnumHelper.OperStatus.成功, "插入成功").ToJson();
            }
            else
            {
                LogHandler.WriteServiceLog(base.GetUserTrueName(), "Id:" + model.Id + ",Name:" + model.Name, "失败", "创建", "样例程序");
                return JsonHandler.CreateMessage((int)EnumHelper.OperStatus.失败, "插入失败" + errors.Error).ToJson();                
            }
        }
        #endregion

        #region 修改

        public ActionResult Edit(int id)
        {
            SysSampleModel entity = m_BLL.GetById(id);
            return View(entity);
        }

        [HttpPost]
        public JsonResult Edit(SysSampleModel model)
        {
            if (m_BLL.Edit(model))
            {
                LogHandler.WriteServiceLog("虚拟用户", "Id:" + model.Id + ",Name:" + model.Name, "成功", "编辑", "样例程序");
                return Json(1, JsonRequestBehavior.AllowGet);
            }
            else
            {
                LogHandler.WriteServiceLog("虚拟用户", "Id:" + model.Id + ",Name:" + model.Name, "失败", "编辑", "样例程序");
                return Json(0, JsonRequestBehavior.AllowGet);
            }
        }
        #endregion

        #region 详细
        public ActionResult Details(int id)
        {
            SysSampleModel entity = m_BLL.GetById(id);
            return View(entity);
        }

        #endregion

        #region 删除
        [HttpPost]
        public JsonResult Delete(int id)
        {
            if (!string.IsNullOrWhiteSpace(id.ToString()))
            {
                if (m_BLL.Delete(id))
                {
                    return Json(1, JsonRequestBehavior.AllowGet);
                }
            }
            return Json(0, JsonRequestBehavior.AllowGet);
        }
        #endregion


    }
}