using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using App.DAL;
using App.IDAL;
using App.Models.Sys;
using System.Data.Entity;
using App.Models;
using App.Common;
using Microsoft.Practices.Unity;

namespace App.BLL
{
    public class SysSampleBLL : IBLL.ISysSampleBLL
    {
        DbContext db = new SysMgr_DBEntities();

        [Dependency]
        public ISysSampleRepository Rep { get; set; }

        public List<SysSampleModel> GetList(ref GridPager pager, string queryStr)
        {
            IQueryable<SysSample> queryData = Rep.GetList();
            if (!string.IsNullOrEmpty(queryStr))
                queryData = queryData.Where(o => o.Name.Contains(queryStr));

            //排序 TODO 让用户来决定
            #region old
            //if (pager.order == "desc")
            //{
            //    switch (pager.order)
            //    {
            //        case "Id":
            //            queryData = queryData.OrderByDescending(c => c.Id);
            //            break;
            //        case "Name":
            //            queryData = queryData.OrderByDescending(c => c.Name);
            //            break;
            //        default:
            //            queryData = queryData.OrderByDescending(c => c.CreateTime);
            //            break;
            //    }
            //}
            //else
            //{
            //    switch (pager.order)
            //    {
            //        case "Id":
            //            queryData = queryData.OrderBy(c => c.Id);
            //            break;
            //        case "Name":
            //            queryData = queryData.OrderBy(c => c.Name);
            //            break;
            //        default:
            //            queryData = queryData.OrderBy(c => c.CreateTime);
            //            break;
            //    }
            //}
            #endregion            
            queryData = LinqHelper.DataSorting(queryData, pager.sort, pager.order);
            return CreateModelList(ref pager, ref queryData);
        }

        private List<SysSampleModel> CreateModelList(ref GridPager pager, ref IQueryable<SysSample> queryData)
        {
            pager.totalRows = queryData.Count();
            if (pager.totalRows > 0)
            {
                if (pager.page <= 1)
                {
                    queryData = queryData.Take(pager.rows);
                }
                else
                {
                    queryData = queryData.Skip((pager.page - 1) * pager.rows).Take(pager.rows);
                }
            }
            List<SysSampleModel> modelList = (from r in queryData
                                              select new SysSampleModel
                                              {
                                                  Id = r.Id,
                                                  Name = r.Name,
                                                  Age = r.Age,
                                                  BirthDay = r.Bir,
                                                  Photo = r.Photo,
                                                  Note = r.Note,
                                                  CreateTime = r.CreateTime,

                                              }).ToList();

            return modelList;
        }

        #region old
        //public bool Create(SysSampleModel model)
        //{
        //    try
        //    {
        //        var entity = Rep.GetById(model.Id);
        //        if (entity != null)
        //            return false;
        //        entity = new SysSample();
        //        entity.Id = model.Id;
        //        entity.Name = model.Name;
        //        entity.Age = model.Age;
        //        entity.BirthDay = model.BirthDay;
        //        entity.Photo = model.Photo;
        //        entity.Note = model.Note;
        //        entity.CreateTime = Convert.ToDateTime(model.CreateTime);

        //        if (Rep.Create(entity) == 1)
        //        {
        //            return true;
        //        }
        //        else
        //        {
        //            return false;
        //        }
        //    }
        //    catch (Exception ex)
        //    {
        //        return false;
        //    }
        //}
        #endregion
        public bool Create(ref ValidationErrors errors, SysSampleModel model)
        {
            try
            {
                SysSample entity = new SysSample();
                entity.Name = model.Name;
                entity.Age = model.Age;
                entity.Bir = model.BirthDay;
                entity.Photo = model.Photo;
                entity.Note = model.Note;
                entity.CreateTime = DateTime.Now;

                if (Rep.Create(entity) == 1)
                {
                    return true;
                }
                else
                {
                    errors.Add("插入失败");
                    return false;
                }
            }
            catch (Exception ex)
            {
                errors.Add(ex.Message);
                BLL.Core.ExceptionHander.WriteException(ex);
                return false;
            }            
        }

        public bool Delete(int id)
        {
            try
            {
                if (Rep.Delete(id) > 0)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {
                return false;
            }
        }

        public bool Edit(SysSampleModel model)
        {
            try
            {
                SysSample entity = Rep.GetById(model.Id);
                if (entity == null)
                {
                    return false;
                }
                entity.Name = model.Name;
                entity.Age = model.Age;
                entity.Bir = model.BirthDay;
                entity.Photo = model.Photo;
                entity.Note = model.Note;

                if (Rep.Edit(entity) == 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {
                //ExceptionHander.WriteException(ex);
                return false;
            }
        }

        public bool IsExists(string id)
        {
            if (db.Set<SysSample>().SingleOrDefault(a => a.Id == Convert.ToInt32(id)) != null)
            {
                return true;
            }
            return false;
        }

        public SysSampleModel GetById(int id)
        {
            if (IsExist(id))
            {
                var entity = Rep.GetById(id);
                SysSampleModel model = new SysSampleModel();
                model.Id = entity.Id;
                model.Name = entity.Name;
                model.Age = entity.Age;
                model.BirthDay = entity.Bir;
                model.Photo = entity.Photo;
                model.Note = entity.Note;
                model.CreateTime = entity.CreateTime;

                return model;
            }
            else
            {
                return new SysSampleModel();
            }
        }

        public bool IsExist(int id)
        {
            return Rep.IsExist(id);
        }



        
    }
}