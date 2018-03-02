using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Microsoft.Practices.Unity;
using App.Common;
using App.Admin.Filters;

namespace App.Admin.Controllers
{
    [SupportFilter]
    public class SysConfigController : BaseController
    {
        [Dependency]
        public IBLL.ISysUserBLL m_BLL { get; set; }

        ValidationErrors errors = Core.Globle.errors;

        public ActionResult Index()
        {
            return View();
        }

    }
}
