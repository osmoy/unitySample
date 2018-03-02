using LitJson;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;

namespace System
{
    public static class ConvertEx
    {
        public static int ToInt(this object Value)
        {
            return ToInt(Value, 0);
        }

        public static int ToInt(this object Value, int defaultValue)
        {
            if (Value == null) return defaultValue;
            if (Value is string && Value.GetString().HasValue() == false) return defaultValue;

            if (Value is DBNull) return defaultValue;

            if ((Value is string) == false && (Value is IConvertible) == true)
            {
                return (Value as IConvertible).ToInt32(CultureInfo.CurrentCulture);
            }

            int retVal = defaultValue;
            if (int.TryParse(Value.ToString(), NumberStyles.Any, CultureInfo.CurrentCulture, out retVal))
            {
                return retVal;
            }
            else
            {
                return defaultValue;
            }
        }

        public static string GetString(this object Value)
        {
            return GetString(Value, string.Empty);
        }

        public static string GetString(this object Value, string defaultValue)
        {
            if (Value == null) return defaultValue;
            string retVal = defaultValue;
            try
            {
                var strValue = Value as string;
                if (strValue != null)
                {
                    return strValue;
                }

                char[] chrs = Value as char[];
                if (chrs != null)
                {
                    return new string(chrs);
                }

                retVal = Value.ToString();
            }
            catch
            {
                return defaultValue;
            }
            return retVal;
        }

        public static DateTime ToDateTime(this object Value)
        {
            return ToDateTime(Value, DateTime.MinValue);
        }

        public static DateTime ToDateTime(this object Value, DateTime defaultValue)
        {
            if (Value == null) return defaultValue;

            if (Value is DBNull) return defaultValue;

            string strValue = Value as string;
            if (strValue == null && (Value is IConvertible))
            {
                return (Value as IConvertible).ToDateTime(CultureInfo.CurrentCulture);
            }
            if (strValue != null)
            {
                strValue = strValue
                    .Replace("年", "-")
                    .Replace("月", "-")
                    .Replace("日", "-")
                    .Replace("点", ":")
                    .Replace("时", ":")
                    .Replace("分", ":")
                    .Replace("秒", ":")
                      ;
            }
            DateTime dt = defaultValue;
            if (DateTime.TryParse(Value.GetString(), out dt))
            {
                return dt;
            }

            return defaultValue;
        }

        public static bool ToBoolen(this object Value)
        {
            return ToBoolen(Value, false);
        }

        public static bool ToBoolen(this object Value, bool defaultValue)
        {
            if (Value == null) return defaultValue;
            if (Value is string && Value.GetString().HasValue() == false) return defaultValue;

            if ((Value is string) == false && (Value is IConvertible) == true)
            {
                if (Value is DBNull) return defaultValue;

                try
                {
                    return (Value as IConvertible).ToBoolean(CultureInfo.CurrentCulture);
                }
                catch { }
            }

            if (Value is string)
            {
                if (Value.GetString() == "0") return false;
                if (Value.GetString() == "1") return true;
                if (Value.GetString().ToLower() == "yes") return true;
                if (Value.GetString().ToLower() == "no") return false;
            }
            ///  if (Value.GetInt(0) != 0) return true;
            bool retVal = defaultValue;
            if (bool.TryParse(Value.GetString(), out retVal))
            {
                return retVal;
            }
            else return defaultValue;
        }

        public static Guid GetGuid(string GuidValue)
        {
            try
            {
                return new Guid(GuidValue);
            }
            catch { return Guid.Empty; }
        }

        public static bool HasValue(this string Value)
        {
            if (Value != null)
            {
                return !string.IsNullOrEmpty(Value.ToString());
            }
            else return false;
        }

        public static bool IsNullOrEmpty(this string str)
        {
            return string.IsNullOrEmpty(str);
        }

        public static string ToJson(this object obj)
        {
            #region Json.NET
            //* https://www.newtonsoft.com/json */
            //Newtonsoft.Json.JsonConvert.SerializeObject(obj);
            #endregion

            #region LitJson
            ///* http://blog.csdn.net/u011484013/article/details/51303674 */
            ///* http://blog.csdn.net/joyhen/article/details/25072287 */
            //JsonData jd = new JsonData();
            //jd["result"] = 1;
            //jd["user"] = new JsonData();//**新添加一层关系时，需要再次 new** JsonData（）
            //jd["user"]["name"] = "zhang";
            //jd["user"]["password"] = 123456;
            //jd.ToJson();
            #endregion

            return JsonMapper.ToJson(obj);
        }

        public static T ToObject<T>(this string json) where T : class,new()
        {
            #region Json.NET
            //Newtonsoft.Json.JsonConvert.DeserializeObject<T>(json);
            #endregion

            return JsonMapper.ToObject<T>(json);
        }

    }
}
