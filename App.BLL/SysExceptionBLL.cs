using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using App.IDAL;
using App.Models;
using Microsoft.Practices.Unity;
using App.Common;

namespace App.BLL
{
    public class SysExceptionBLL : IBLL.ISysExceptionBLL
    {
        [Dependency]
        public ISysExceptionRepository exceptionRepository { get; set; }

        public List<SysException> GetList(ref GridPager pager, string queryStr)
        {
            List<SysException> query = null;

            IQueryable<SysException> list = exceptionRepository.GetList();

            if (!string.IsNullOrWhiteSpace(queryStr))
            {
                list = list.Where(a => a.Message.Contains(queryStr));
            }

            pager.totalRows = list.Count();

            if (pager.order == "desc")
            {
                query = list.OrderByDescending(c => c.CreateTime).Skip((pager.page - 1) * pager.rows).Take(pager.rows).ToList();
            }
            else
            {
                query = list.OrderBy(c => c.CreateTime).Skip((pager.page - 1) * pager.rows).Take(pager.rows).ToList();
            }

            return query;
        }

        public SysException GetById(string id)
        {
            return exceptionRepository.GetById(id);
        }

        public void Delete(string[] deleteCollection)
        {
            exceptionRepository.Delete(deleteCollection);
        }
    }

}
