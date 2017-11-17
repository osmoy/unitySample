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
        //TODO 没有注入进来.. 后面解决
        //[Dependency]
        //public static IBLL.ISysLogBLL logBLL { get; set; }    

        /// <summary>
        /// 向数据库写入日志
        /// </summary>
        /// <param name="oper">操作人</param>
        /// <param name="mes">操作信息</param>
        /// <param name="result">结果</param>
        /// <param name="type">类型</param>
        /// <param name="module">操作模块</param>
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