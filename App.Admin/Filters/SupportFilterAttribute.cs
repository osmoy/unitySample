using App.BLL;
using App.Models.Sys;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace App.Admin.Filters
{

    public class SupportFilterAttribute : ActionFilterAttribute
    {
        public string ActionName { get; set; }

        private string Area;

        public override void OnActionExecuting(ActionExecutingContext filterContext)
        {
           
            var routes = new RouteCollection();
            RouteConfig.RegisterRoutes(routes);
            RouteData routeData = routes.GetRouteData(filterContext.HttpContext);

            string ctlName = filterContext.Controller.ToString();
            string[] routeInfo = ctlName.Split('.');
            string controller = null;
            string action = null;
            string id = null;

            int iAreas = Array.IndexOf(routeInfo, "Areas");
            if (iAreas > 0)
            {
                Area = routeInfo[iAreas + 1];
            }
            int ctlIndex = Array.IndexOf(routeInfo, "Controllers");
            ctlIndex++;
            controller = routeInfo[ctlIndex].Replace("Controller", "").ToLower();

            string url = HttpContext.Current.Request.Url.ToString().ToLower();
            string[] urlArray = url.Split('/');
            int urlCtlIndex = Array.IndexOf(urlArray, controller);
            urlCtlIndex++;
            if (urlArray.Count() > urlCtlIndex)
            {
                action = urlArray[urlCtlIndex];
            }
            urlCtlIndex++;
            if (urlArray.Count() > urlCtlIndex)
            {
                id = urlArray[urlCtlIndex];
            }

            action = string.IsNullOrEmpty(action) ? "Index" : action;
            int actionIndex = action.IndexOf("?", 0);
            if (actionIndex > 1)
            {
                action = action.Substring(0, actionIndex);
            }
            id = string.IsNullOrEmpty(id) ? "" : id;

            string filePath = HttpContext.Current.Request.FilePath;
            var account = filterContext.HttpContext.Session["Account"] as AccountModel;
            if (ValiddatePermission(account, controller, action, filePath))
            {
                return;
            }
            else
            {                
                filterContext.Result = new EmptyResult();                
                return;
            }
        }

        public bool ValiddatePermission(AccountModel account, string controller, string action, string filePath)
        {
            bool bResult = false;
            string actionName = string.IsNullOrEmpty(ActionName) ? action : ActionName;
            if (account != null)
            {
                List<permModel> perm = null;

                if (!string.IsNullOrEmpty(Area))
                {
                    controller = Area + "/" + controller;
                }
                perm = (List<permModel>)HttpContext.Current.Session[filePath];
                if (perm == null)
                {
                    IBLL.ISysUserBLL userBLL = new SysUserBLL();
                    {
                        perm = userBLL.GetPermission(account.Id, controller);
                        HttpContext.Current.Session[filePath] = perm;
                    }
                }
               
                if (actionName.ToLower() == "index")
                {
                    if (perm.Count > 0)
                    {
                        return true;
                    }
                }
              
                int count = perm.Where(a => a.KeyCode.ToLower() == actionName.ToLower()).Count();
                if (count > 0)
                {
                    bResult = true;
                }
                else
                {
                    bResult = false;
                    HttpContext.Current.Response.Write("你没有操作权限，请联系管理员！");
                }

            }
            return bResult;
        }
      

    }
}