using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace App.Admin.Core
{
    public static class Globle
    {
        /// <summary>
        /// 静态全局变量
        /// </summary>
        public static Common.ValidationErrors errors
        {
            get
            {
                return new Common.ValidationErrors();
            }
        }

    }
}