using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Practices.Unity;
using App.DAL;
using System.Data.Entity;
using App.Models;

namespace App.BLL
{
    public class SysLogBLL : IBLL.ISysLogBLL
    {
        DbContext db = new SysMgr_DBEntities();

        [Dependency]
        public IDAL.ISysLogRepository logRepository { get; set; }
   
        public List<SysLog> GetList(ref Common.GridPager pager, string queryStr)
        {            
            List<SysLog> query = null;
            IQueryable<SysLog> list = logRepository.GetList();

            if (!string.IsNullOrWhiteSpace(queryStr))
            {
                list = list.Where(a => a.Message.Contains(queryStr) || a.Module.Contains(queryStr));   
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

        public SysLog GetById(string id)
        {
            return logRepository.GetById(id);
        }

        public void Delete(string[] deleteCollection)
        {
            logRepository.Delete(deleteCollection);
        }

        public void Create(SysLog entity)
        {
            logRepository.Create(entity);
        }

        #region 此方法由于ui无法注入，直接new了
        public void CreateLogSp(SysLog entity)
        {
            IDAL.ISysLogRepository log = new DAL.SysLogRepository();
            log.Create(entity);
        } 
        #endregion
    }
}
