using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;

namespace App.Common
{
    public class ResultHelper
    {

        public static string NewId
        {
            get
            {
                string id = DateTime.Now.ToString("yyyyMMddHHmmssfffffff");
                string guid = Guid.NewGuid().ToString().Replace("-", "");
                id += guid.Substring(0, 10);
                return id;
            }
        }
        public static string NewTimeId
        {
            get
            {
                string id = DateTime.Now.ToString("yyyyMMddHHmmssfffffff");
                return id;
            }
        }

        public static string SubValue(string value, int length)
        {
            if (value.Length > length)
            {
                value = value.Substring(0, length); value = value + "..."; return NoHtml(value);
            }
            else { return NoHtml(value); }
        }

        public static string InputText(string inputString)
        {
            if ((inputString != null) && (inputString != String.Empty))
            {
                inputString = inputString.Trim();
                //if (inputString.Length > maxLength) 
                //inputString = inputString.Substring(0, maxLength); 
                inputString = inputString.Replace("<br>", "\n");
                inputString = inputString.Replace("&", "&amp");
                inputString = inputString.Replace("'", "''");
                inputString = inputString.Replace("<", "&lt");
                inputString = inputString.Replace(">", "&gt");
                inputString = inputString.Replace("chr(60)", "&lt");
                inputString = inputString.Replace("chr(37)", "&gt");
                inputString = inputString.Replace("\"", "&quot");
                inputString = inputString.Replace(";", ";");

                return inputString;
            }
            else
            {
                return "";
            }

        }

        public static string OutputText(string outputString)
        {
            if ((outputString != null) && (outputString != String.Empty))
            {
                outputString = outputString.Trim();
                outputString = outputString.Replace("&amp", "&");
                outputString = outputString.Replace("''", "'");
                outputString = outputString.Replace("&lt", "<");
                outputString = outputString.Replace("&gt", ">");
                outputString = outputString.Replace("&lt", "chr(60)");
                outputString = outputString.Replace("&gt", "chr(37)");
                outputString = outputString.Replace("&quot", "\"");
                outputString = outputString.Replace(";", ";");
                outputString = outputString.Replace("\n", "<br>");
                return outputString;
            }
            else
            {
                return "";
            }
        }

        public static string NoHtml(string Htmlstring)
        {

            Htmlstring = Regex.Replace(Htmlstring, @"<script[^>]*?>.*?</script>", "", RegexOptions.IgnoreCase);

            Htmlstring = Regex.Replace(Htmlstring, @"<(.[^>]*)>", "", RegexOptions.IgnoreCase);
            Htmlstring = Regex.Replace(Htmlstring, @"([\r\n])[\s]+", "", RegexOptions.IgnoreCase);
            Htmlstring = Regex.Replace(Htmlstring, @"-->", "", RegexOptions.IgnoreCase);
            Htmlstring = Regex.Replace(Htmlstring, @"<!--.*", "", RegexOptions.IgnoreCase);
            Htmlstring = Regex.Replace(Htmlstring, @"&(quot|#34);", "\"", RegexOptions.IgnoreCase);
            Htmlstring = Regex.Replace(Htmlstring, @"&(amp|#38);", "&", RegexOptions.IgnoreCase);
            Htmlstring = Regex.Replace(Htmlstring, @"&(lt|#60);", "<", RegexOptions.IgnoreCase);
            Htmlstring = Regex.Replace(Htmlstring, @"&(gt|#62);", ">", RegexOptions.IgnoreCase);
            Htmlstring = Regex.Replace(Htmlstring, @"&(nbsp|#160);", " ", RegexOptions.IgnoreCase);
            Htmlstring = Regex.Replace(Htmlstring, @"&(iexcl|#161);", "\xa1", RegexOptions.IgnoreCase);
            Htmlstring = Regex.Replace(Htmlstring, @"&(cent|#162);", "\xa2", RegexOptions.IgnoreCase);
            Htmlstring = Regex.Replace(Htmlstring, @"&(pound|#163);", "\xa3", RegexOptions.IgnoreCase);
            Htmlstring = Regex.Replace(Htmlstring, @"&(copy|#169);", "\xa9", RegexOptions.IgnoreCase);
            Htmlstring = Regex.Replace(Htmlstring, @"&#(\d+);", "", RegexOptions.IgnoreCase);
            Htmlstring = Regex.Replace(Htmlstring, @"&hellip;", "", RegexOptions.IgnoreCase);
            Htmlstring = Regex.Replace(Htmlstring, @"&mdash;", "", RegexOptions.IgnoreCase);
            Htmlstring = Regex.Replace(Htmlstring, @"&ldquo;", "", RegexOptions.IgnoreCase);
            Htmlstring.Replace("<", "");
            Htmlstring = Regex.Replace(Htmlstring, @"&rdquo;", "", RegexOptions.IgnoreCase);
            Htmlstring.Replace(">", "");
            Htmlstring.Replace("\r\n", "");
            Htmlstring = System.Web.HttpContext.Current.Server.HtmlEncode(Htmlstring).Trim();            
            return Htmlstring;
        }


        public static string Formatstr(string html)
        {
            System.Text.RegularExpressions.Regex regex1 = new System.Text.RegularExpressions.Regex(@"<script[\s\S]+</script *>", System.Text.RegularExpressions.RegexOptions.IgnoreCase);
            System.Text.RegularExpressions.Regex regex2 = new System.Text.RegularExpressions.Regex(@" href *= *[\s\S]*script *:", System.Text.RegularExpressions.RegexOptions.IgnoreCase);
            System.Text.RegularExpressions.Regex regex3 = new System.Text.RegularExpressions.Regex(@" on[\s\S]*=", System.Text.RegularExpressions.RegexOptions.IgnoreCase);
            System.Text.RegularExpressions.Regex regex4 = new System.Text.RegularExpressions.Regex(@"<iframe[\s\S]+</iframe *>", System.Text.RegularExpressions.RegexOptions.IgnoreCase);
            System.Text.RegularExpressions.Regex regex5 = new System.Text.RegularExpressions.Regex(@"<frameset[\s\S]+</frameset *>", System.Text.RegularExpressions.RegexOptions.IgnoreCase);
            System.Text.RegularExpressions.Regex regex10 = new System.Text.RegularExpressions.Regex(@"select", System.Text.RegularExpressions.RegexOptions.IgnoreCase);
            System.Text.RegularExpressions.Regex regex11 = new System.Text.RegularExpressions.Regex(@"update", System.Text.RegularExpressions.RegexOptions.IgnoreCase);
            System.Text.RegularExpressions.Regex regex12 = new System.Text.RegularExpressions.Regex(@"delete", System.Text.RegularExpressions.RegexOptions.IgnoreCase);
            html = regex1.Replace(html, ""); 
            html = regex2.Replace(html, ""); 
            html = regex3.Replace(html, " _disibledevent="); 
            html = regex4.Replace(html, ""); 
            html = regex10.Replace(html, "s_elect");
            html = regex11.Replace(html, "u_pudate");
            html = regex12.Replace(html, "d_elete");
            html = html.Replace("'", "’");
            html = html.Replace("&nbsp;", " ");
            return html;
        }

        public static bool ValidateSQL(string sql, ref string msg)
        {
            if (sql.ToLower().IndexOf("delete") > 0)
            {
                msg = "查询参数中含有非法语句DELETE";
                return false;
            }
            if (sql.ToLower().IndexOf("update") > 0)
            {
                msg = "查询参数中含有非法语句UPDATE";
                return false;
            }

            if (sql.ToLower().IndexOf("insert") > 0)
            {
                msg = "查询参数中含有非法语句INSERT";
                return false;
            }
            return true;
        }

        public static DateTime NowTime
        {
            get
            {
                return DateTime.Now;
            }
        }

        public static string DateTimeConvertString(DateTime? dt)
        {
            if (dt == null)
            {
                return "";
            }
            else
            {
                return Convert.ToDateTime(dt.ToString()).ToShortDateString();
            }
        }

        public static DateTime? StringConvertDatetime(string str)
        {
            if (str == null)
            {
                return null;
            }
            else
            {
                try
                {
                    return Convert.ToDateTime(str);
                }
                catch
                {
                    return null;
                }
            }
        }

        public static string GetUserIP()
        {
            if (System.Web.HttpContext.Current.Request.ServerVariables["HTTP_VIA"] != null)
                return System.Web.HttpContext.Current.Request.ServerVariables["HTTP_X_FORWARDED_FOR"].Split(new char[] { ',' })[0];
            else
                return System.Web.HttpContext.Current.Request.ServerVariables["REMOTE_ADDR"];
        }
    }

}
