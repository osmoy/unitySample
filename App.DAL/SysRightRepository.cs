using App.Models;
using App.Models.Sys;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace App.DAL
{
    public class SysRightRepository : IDAL.ISysRightRepository
    {
        public List<permModel> GetPermission(string accountid, string controller)
        {
            using (SysMgr_DBEntities db = new SysMgr_DBEntities())
            {
                List<permModel> rights = (from r in db.P_Sys_GetRightOperate(accountid, controller)
                                          select new permModel
                                          {
                                              KeyCode = r.KeyCode,
                                              IsValid = r.IsValid
                                          }).ToList();
                return rights;
            }

        }

        public int UpdateRight(SysRightOperateModel model)
        {
            //转换
            SysRightOperate rightOperate = new SysRightOperate();
            rightOperate.Id = model.Id;
            rightOperate.RightId = model.RightId;
            rightOperate.KeyCode = model.KeyCode;
            rightOperate.IsValid = model.IsValid;

            using (var db = new SysMgr_DBEntities())
            {
                SysRightOperate right = db.SysRightOperate.Where(a => a.Id == rightOperate.Id).FirstOrDefault();
                if (right != null)
                {
                    right.IsValid = rightOperate.IsValid;
                }
                else
                {
                    db.SysRightOperate.Add(rightOperate);
                }
                if (db.SaveChanges() > 0)
                {
                    //更新角色--模块的有效标志RightFlag
                    var sysRight = (from r in db.SysRight
                                    where r.Id == rightOperate.RightId
                                    select r).FirstOrDefault();
                    db.P_Sys_UpdateSysRightRightFlag(sysRight.ModuleId, sysRight.RoleId);
                    return 1;
                }
            }
            return 0;
        }

        public List<P_Sys_GetRightByRoleAndModule_Result> GetRightByRoleAndModule(string roleId, string moduleId)
        {             
            using (var db = new SysMgr_DBEntities())
            {
                var result = db.P_Sys_GetRightByRoleAndModule(roleId, moduleId).ToList();
                return result;
            }            
        }


    }
}
