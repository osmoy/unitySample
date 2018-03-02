using App.Common;
using App.Models;
using Microsoft.Practices.Unity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace App.Admin
{    
    public class LogHandler
    {


        public static void WriteServiceLog(string oper, string mes, string result, string type, string module)
        {
            var entity = new SysLog();
            entity.Id = ResultHelper.NewId;
            entity.Operator = oper;
            entity.Message = mes;
            entity.Result = result;
            entity.Type = type;
            entity.Module = module;
            entity.CreateTime = ResultHelper.NowTime;

            BLL.SysLogBLL logBLL = new BLL.SysLogBLL();
            logBLL.CreateLogSp(entity);
        }

    }
}