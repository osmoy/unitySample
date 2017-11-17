using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace App.Models.Sys
{
    /// <summary>
    /// 将获取到的权限保存到这个类中去，
    /// 这个类最终是一个一个的session转换而来的。
    /// </summary>
    public class permModel
    {
        /// <summary>
        /// 操作码
        /// </summary>
        public string KeyCode { get; set; }

        /// <summary>
        /// 是否验证
        /// </summary>
        public bool IsValid { get; set; }
    }

}
