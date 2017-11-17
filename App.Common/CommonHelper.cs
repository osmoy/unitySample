using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.IO;
using App.Models.Enums;

namespace App.Common
{
    public class CommonHelper
    {
        /// <summary>
        /// md5加密
        /// </summary>
        /// <param name="content"></param>
        /// <returns></returns>
        public static string ToMd5(string content)
        {
            MD5 md5Hasher = MD5.Create();
            string str = "";
            byte[] data = md5Hasher.ComputeHash(Encoding.Default.GetBytes(content));
            for (int i = 0; i < data.Length; i++)
                str += data[i].ToString("x2");
            return str;
        }

        /// <summary>
        /// 文件流md5
        /// </summary>
        public static string ToMd5(Stream stream)
        {
            MD5 md5Hasher = MD5.Create();
            string str = "";
            byte[] data = md5Hasher.ComputeHash(stream);            
            for (int i = 0; i < data.Length; i++)
                str += data[i].ToString("x2");
            return str;
        }

        /// <summary>
        /// 批量转换为集合
        /// </summary>
        public static IList<string> ToList(string ids)
        {
            IList<string> listId = new List<string>();
            if (!string.IsNullOrEmpty(ids))
            {
                var idArr = new SortedSet<string>(ids.Split(','));
                foreach (var id in idArr)
                {
                    listId.Add(id);
                }
            }
            return listId;
        }

        /// <summary>
        /// 枚举转集合
        /// </summary>
        public static List<EnumEntity> EnumToList<T>()
        {
            List<EnumEntity> list = new List<EnumEntity>();

            foreach (var e in Enum.GetValues(typeof(T)))
            {
                EnumEntity m = new EnumEntity();
                object[] objArr = e.GetType().GetField(e.ToString()).GetCustomAttributes(typeof(System.ComponentModel.DescriptionAttribute), true);
                if (objArr != null && objArr.Length > 0)
                {
                    var da = objArr[0] as System.ComponentModel.DescriptionAttribute;
                    m.Desction = da.Description;
                }
                m.EnumValue = Convert.ToInt32(e);
                m.EnumName = e.ToString();
                list.Add(m);
            }
            return list;
        }

    }
}
