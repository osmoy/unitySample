using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using App.Models;
using App.Common;
using System.IO;
using Microsoft.Practices.Unity;

namespace App.BLL.Core
{
    /// <summary>
    /// 写入异常错误
    /// </summary>
    /// <param name="ex">异常</param>
    public static class ExceptionHander
    {
        //[Dependency]
        //public static IDAL.ISysExceptionRepository SysException { get; set; }

        /// <summary>
        /// 加入异常日志
        /// </summary>
        /// <param name="ex">异常</param>
        public static void WriteException(Exception ex)
        {
            try
            {
                SysException model = new SysException()
                {
                    Id = ResultHelper.NewId,
                    HelpLink = ex.HelpLink,
                    Message = ex.Message,
                    Source = ex.Source,
                    StackTrace = ex.StackTrace,
                    TargetSite = ex.TargetSite.ToString(),
                    Data = ex.Data.ToString(),
                    CreateTime = ResultHelper.NowTime
                };

                IDAL.ISysExceptionRepository SysException = new DAL.SysExceptionRepository();
                SysException.Create(model);
            }
            catch (Exception ep)
            {
                //异常失败写入txt
                string path = @"~/exceptionLog.txt";  //string dir = AppDomain.CurrentDomain.BaseDirectory;
                string txtPath = System.Web.HttpContext.Current.Server.MapPath(path);//获取绝对路径
                using (StreamWriter sw = new StreamWriter(txtPath, true, Encoding.Default))
                {
                    try
                    {
                        sw.WriteLine((ex.Message + "|" + ex.StackTrace + "|" + ep.Message + "|" +
                            DateTime.Now.ToString()).ToString());
                    }
                    catch (Exception e)
                    {
                        throw new IOException(e.Message);
                    }
                }
            }
        }

    }
}
