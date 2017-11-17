using Microsoft.Practices.Unity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using App.Models;
using App.Models.Sys;
using App.Common;
using App.BLL.Core;

namespace App.BLL
{
    public class SysUserBLL : IBLL.ISysUserBLL
    {
        [Dependency]
        public IDAL.ISysUserRepository m_Rep { get; set; }
        public IDAL.ISysRightRepository sysRightRepository
        {
            get
            {
                return new DAL.SysRightRepository();
            }
        }

        public List<permModel> GetPermission(string accountid, string controller)
        {
            return sysRightRepository.GetPermission(accountid, controller);
        }

        public List<SysUserModel> GetList(ref GridPager pager, string queryStr)
        {
            IQueryable<SysUser> queryData = null;
            if (!string.IsNullOrWhiteSpace(queryStr))
            {
                queryData = m_Rep.GetList().Where(a => a.UserName.Contains(queryStr) || a.PhoneNumber.Contains(queryStr));
            }
            else
            {
                queryData = m_Rep.GetList();
            }
            pager.totalRows = queryData.Count();
            queryData = LinqHelper.SortingAndPaging(queryData, pager.sort, pager.order, pager.page, pager.rows);
            return CreateModelList(ref queryData);
        }
        private List<SysUserModel> CreateModelList(ref IQueryable<SysUser> queryData)
        {

            List<SysUserModel> modelList = (from r in queryData
                                            select new SysUserModel
                                            {
                                                Id = r.Id,
                                                UserName = r.UserName,
                                                Password = r.Password,
                                                TrueName = r.TrueName,
                                                Card = r.Card,
                                                MobileNumber = r.MobileNumber,
                                                PhoneNumber = r.PhoneNumber,
                                                QQ = r.QQ,
                                                EmailAddress = r.EmailAddress,
                                                OtherContact = r.OtherContact,
                                                Province = r.Province,
                                                City = r.City,
                                                Village = r.Village,
                                                Address = r.Address,
                                                State = r.State.Value,
                                                CreateTime = r.CreateTime,
                                                CreatePerson = r.CreatePerson,
                                                Sex = r.Sex,
                                                Birthday = r.Birthday,
                                                JoinDate = r.JoinDate,
                                                Marital = r.Marital,
                                                Political = r.Political,
                                                Nationality = r.Nationality,
                                                Native = r.Native,
                                                School = r.School,
                                                Professional = r.Professional,
                                                Degree = r.Degree,
                                                DepId = r.DepId,
                                                PosId = r.PosId,
                                                Expertise = r.Expertise,
                                                JobState = r.JobState,
                                                Photo = r.Photo,
                                                Attach = r.Attach
                                            }).ToList();
            return modelList;
        }

        public bool Create(ref ValidationErrors errors, SysUserModel model)
        {
            try
            {
                SysUser entity = m_Rep.GetById(model.Id);
                if (entity != null)
                {
                    errors.Add(Suggestion.PrimaryRepeat);
                    return false;
                }
                entity = new SysUser();
                entity.Id = model.Id;
                entity.UserName = model.UserName;
                entity.Password = model.Password;
                entity.TrueName = model.TrueName;
                entity.Card = model.Card;
                entity.MobileNumber = model.MobileNumber;
                entity.PhoneNumber = model.PhoneNumber;
                entity.QQ = model.QQ;
                entity.EmailAddress = model.EmailAddress;
                entity.OtherContact = model.OtherContact;
                entity.Province = model.Province;
                entity.City = model.City;
                entity.Village = model.Village;
                entity.Address = model.Address;
                entity.State = model.State;
                entity.CreateTime = model.CreateTime;
                entity.CreatePerson = model.CreatePerson;
                entity.Sex = model.Sex;
                entity.Birthday = model.Birthday;
                entity.JoinDate = model.JoinDate;
                entity.Marital = model.Marital;
                entity.Political = model.Political;
                entity.Nationality = model.Nationality;
                entity.Native = model.Native;
                entity.School = model.School;
                entity.Professional = model.Professional;
                entity.Degree = model.Degree;
                entity.DepId = model.DepId;
                entity.PosId = model.PosId;
                entity.Expertise = model.Expertise;
                entity.JobState = model.JobState;
                entity.Photo = model.Photo;
                entity.Attach = model.Attach;
                if (m_Rep.Create(entity) == 1)
                {
                    return true;
                }
                else
                {
                    errors.Add(Suggestion.InsertFail);
                    return false;
                }
            }
            catch (Exception ex)
            {
                errors.Add(ex.Message);
                ExceptionHander.WriteException(ex);
                return false;
            }
        }

        public bool Delete(ref ValidationErrors errors, string id)
        {
            try
            {
                if (m_Rep.Delete(id) == 1)
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
                errors.Add(ex.Message);
                ExceptionHander.WriteException(ex);
                return false;
            }
        }

        public bool Delete(ref ValidationErrors errors, string[] deleteCollection)
        {
            try
            {
                if (deleteCollection != null)
                {
                    //TODO ef支持事务，开启服务..
                    #region MyRegion
                    //using (TransactionScope transactionScope = new TransactionScope())
                    //{
                    //    m_Rep.Delete(deleteCollection);
                    //    if (db.SaveChanges() == deleteCollection.Length)
                    //    {
                    //        transactionScope.Complete();
                    //        return true;
                    //    }
                    //    else
                    //    {
                    //        Transaction.Current.Rollback();
                    //        return false;
                    //    }
                    //}
                    #endregion
                    m_Rep.Delete(deleteCollection);
                    return true;
                }
                return false;
            }
            catch (Exception ex)
            {
                errors.Add(ex.Message);
                ExceptionHander.WriteException(ex);
                return false;
            }
        }
        public bool Edit(ref ValidationErrors errors, SysUserModel model)
        {
            try
            {
                SysUser entity = m_Rep.GetById(model.Id);
                if (entity == null)
                {
                    errors.Add(Suggestion.Disable);
                    return false;
                }
                entity.Id = model.Id;
                entity.UserName = model.UserName;
                entity.Password = model.Password;
                entity.TrueName = model.TrueName;
                entity.Card = model.Card;
                entity.MobileNumber = model.MobileNumber;
                entity.PhoneNumber = model.PhoneNumber;
                entity.QQ = model.QQ;
                entity.EmailAddress = model.EmailAddress;
                entity.OtherContact = model.OtherContact;
                entity.Province = model.Province;
                entity.City = model.City;
                entity.Village = model.Village;
                entity.Address = model.Address;
                entity.State = model.State;
                entity.CreateTime = model.CreateTime;
                entity.CreatePerson = model.CreatePerson;
                entity.Sex = model.Sex;
                entity.Birthday = model.Birthday;
                entity.JoinDate = model.JoinDate;
                entity.Marital = model.Marital;
                entity.Political = model.Political;
                entity.Nationality = model.Nationality;
                entity.Native = model.Native;
                entity.School = model.School;
                entity.Professional = model.Professional;
                entity.Degree = model.Degree;
                entity.DepId = model.DepId;
                entity.PosId = model.PosId;
                entity.Expertise = model.Expertise;
                entity.JobState = model.JobState;
                entity.Photo = model.Photo;
                entity.Attach = model.Attach;

                if (m_Rep.Edit(entity) == 1)
                {
                    return true;
                }
                else
                {
                    errors.Add(Suggestion.EditFail);
                    return false;
                }
            }
            catch (Exception ex)
            {
                errors.Add(ex.Message);
                ExceptionHander.WriteException(ex);
                return false;
            }
        }

        public bool IsExists(string id)
        {
            if (m_Rep.GetById(id) != null)
            {
                return true;
            }
            return false;
        }

        public SysUserModel GetById(string id)
        {
            if (IsExist(id))
            {
                SysUser entity = m_Rep.GetById(id);
                SysUserModel model = new SysUserModel();
                model.Id = entity.Id;
                model.UserName = entity.UserName;
                model.Password = entity.Password;
                model.TrueName = entity.TrueName;
                model.Card = entity.Card;
                model.MobileNumber = entity.MobileNumber;
                model.PhoneNumber = entity.PhoneNumber;
                model.QQ = entity.QQ;
                model.EmailAddress = entity.EmailAddress;
                model.OtherContact = entity.OtherContact;
                model.Province = entity.Province;
                model.City = entity.City;
                model.Village = entity.Village;
                model.Address = entity.Address;
                model.State = entity.State.Value;
                model.CreateTime = entity.CreateTime;
                model.CreatePerson = entity.CreatePerson;
                model.Sex = entity.Sex;
                model.Birthday = entity.Birthday;
                model.JoinDate = entity.JoinDate;
                model.Marital = entity.Marital;
                model.Political = entity.Political;
                model.Nationality = entity.Nationality;
                model.Native = entity.Native;
                model.School = entity.School;
                model.Professional = entity.Professional;
                model.Degree = entity.Degree;
                model.DepId = entity.DepId;
                model.PosId = entity.PosId;
                model.Expertise = entity.Expertise;
                model.JobState = entity.JobState;
                model.Photo = entity.Photo;
                model.Attach = entity.Attach;
                return model;
            }
            else
            {
                return null;
            }
        }

        public bool IsExist(string id)
        {
            return m_Rep.IsExist(id);
        }

        /// <summary>
        /// 根据用户查询角色信息
        /// </summary>
        public IQueryable<P_Sys_GetRoleByUserId_Result> GetRoleByUserId(ref GridPager pager, string userId)
        {
            IQueryable<P_Sys_GetRoleByUserId_Result> queryData = m_Rep.GetRoleByUserId(userId);
            pager.totalRows = queryData.Count();
            //Count()和ToList()总共查询了2次，故报错..
            queryData = m_Rep.GetRoleByUserId(userId);
            return queryData.Skip((pager.page - 1) * pager.rows).Take(pager.rows);
        }

        /// <summary>
        /// 设置用户角色
        /// </summary>
        public bool UpdateSysRoleSysUser(string userId, string[] roleIds)
        {
            try
            {
                m_Rep.UpdateSysRoleSysUser(userId, roleIds);
                return true;
            }
            catch (Exception ex)
            {
                ExceptionHander.WriteException(ex);
                return false;
            }
        }

    }
}
