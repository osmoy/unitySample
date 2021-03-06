﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using App.Common;
using App.Models.Sys;

namespace App.Admin.Controllers
{
  
    public class BaseController : Controller
    {
        protected AccountModel currentuser = null;
        protected override void OnActionExecuting(ActionExecutingContext filterContext)
        {
            //TODO 返回登陆前页面..
            if (Session["Account"] == null)
            {
                filterContext.HttpContext.Response.Redirect("/Account/Index");
            }
            currentuser = Session["Account"] as AccountModel;
        }

        public string GetUserId()
        {
            if (Session["Account"] != null)
            {
                AccountModel info = Session["Account"] as AccountModel;
                return info.Id;
            }
            else
            {
                return "";
            }
        }

        public string GetUserTrueName()
        {
            if (Session["Account"] != null)
            {
                AccountModel info = Session["Account"] as AccountModel;
                return info.TrueName;
            }
            else
            {
                return "";
            }
        }

        public AccountModel GetAccount()
        {
            if (Session["Account"] != null)
            {
                return Session["Account"] as AccountModel;
            }
            return null;
        }

        //TODO 方法补全
        #region
        //protected override JsonResult Json(object data, string contentType, System.Text.Encoding contentEncoding, JsonRequestBehavior behavior)
        //{
        //    return new ToJsonResult
        //    {
        //        Data = data,
        //        ContentEncoding = contentEncoding,
        //        ContentType = contentType,
        //        JsonRequestBehavior = behavior,
        //        FormateStr = "yyyy-MM-dd HH:mm:ss"
        //    };
        //}
        ///// <summary>
        ///// 返回JsonResult.24         /// </summary>
        ///// <param name="data">数据</param>
        ///// <param name="behavior">行为</param>
        ///// <param name="format">json中dateTime类型的格式</param>
        ///// <returns>Json</returns>
        //protected JsonResult MyJson(object data, JsonRequestBehavior behavior, string format)
        //{
        //    return new ToJsonResult
        //    {
        //        Data = data,
        //        JsonRequestBehavior = behavior,
        //        FormateStr = format
        //    };
        //}
        ///// <summary>
        ///// 返回JsonResult42         /// </summary>
        ///// <param name="data">数据</param>
        ///// <param name="format">数据格式</param>
        ///// <returns>Json</returns>
        //protected JsonResult MyJson(object data, string format)
        //{
        //    return new ToJsonResult
        //    {
        //        Data = data,
        //        FormateStr = format
        //    };
        //}
        #endregion

        public bool ValidateSQL(string sql, ref string msg)
        {
            if (sql.ToLower().IndexOf("delete") > 0)
            {
                msg = "查询参数中含有非法语句DELETE";
                return false;
            }
            if (sql.ToLower().IndexOf("update") > 0)
            {
                msg = "查询参数中含有非法语句UPDATE";
                return false;
            }

            if (sql.ToLower().IndexOf("insert") > 0)
            {
                msg = "查询参数中含有非法语句INSERT";
                return false;
            }
            return true;
        }

        public List<permModel> GetPermission()
        {
            string filePath = HttpContext.Request.FilePath;

            List<permModel> perm = Session[filePath] as List<permModel>;

            return perm;
        }

    }
}