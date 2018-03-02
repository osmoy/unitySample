using App.Models.Sys;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace System.Web.Mvc
{

    public static class ExtendMvcHtml
    {

        public static MvcHtmlString ToolButton(this HtmlHelper helper, string id, string icon, string text, bool hr = true)
        {
            var sb = new System.Text.StringBuilder();
            sb.AppendFormat("<a id=\"{0}\" style=\"float: left;\" class=\"l-btn l-btn-plain\">", id);
            sb.AppendFormat("<span class=\"l-btn-left\"><span class=\"l-btn-text {0}\" style=\"padding-left: 20px;\">", icon);
            sb.AppendFormat("{0}</span></span></a>", text);
            if (hr)
            {
                sb.Append("<div class=\"datagrid-btn-separator\"></div>");
            }
            return new MvcHtmlString(sb.ToString());
        }

        public static MvcHtmlString ToolButton(this HtmlHelper helper, string id, string icon, string text, List<permModel> perm, string keycode, bool hr)
        {
            if (perm.Where(a => a.KeyCode == keycode).Count() > 0)
            {
                var sb = new Text.StringBuilder();
                sb.AppendFormat("<a id=\"{0}\" style=\"float: left;\" class=\"l-btn l-btn-plain\">", id);
                sb.AppendFormat("<span class=\"l-btn-left\"><span class=\"l-btn-text {0}\" style=\"padding-left: 20px;\">", icon);
                sb.AppendFormat("{0}</span></span></a>", text);
                if (hr)
                {
                    sb.Append("<div class=\"datagrid-btn-separator\"></div>");
                }
                return new MvcHtmlString(sb.ToString());
            }
            else
            {
                return new MvcHtmlString("");
            }
        }

    }
}