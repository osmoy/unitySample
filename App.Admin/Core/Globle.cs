using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace App.Admin.Core
{
    public static class Globle
    {

        public static Common.ValidationErrors errors
        {
            get
            {
                return new Common.ValidationErrors();
            }
        }

    }
}