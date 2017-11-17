using App.Admin.Filters;
using Microsoft.Practices.Unity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace App.Admin.Controllers
{    
    public class HomeController : BaseController
    {
        [Dependency]
        public IBLL.IHomeBLL homeBLL { get; set; }
        //
        // GET: /Home/

        public ActionResult Index()
        {
            return View();
        }

        /// <summary>
        /// 获取用户菜单列表
        /// </summary>
        /// <param name="id">所属</param>
        /// <returns>树</returns>     
        public ActionResult GetTree(string id)
        {
            var menus = homeBLL.GetMenuByPersonId(base.GetUserId(), id);
            if (menus != null)
            {
                var data = (from m in menus
                            select new
                            {
                                id = m.Id,
                                text = m.Name,
                                value = m.Url,
                                showcheck = false,
                                complete = false,
                                isexpand = false,
                                checkstate = 0,
                                hasChildren = m.IsLast ? false : true,
                                Icon = m.Iconic
                            }).ToArray();

                return Json(data, JsonRequestBehavior.AllowGet);
            }
            return Json("0", JsonRequestBehavior.AllowGet);
        }

    }
}
