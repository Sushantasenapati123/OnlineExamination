using Dapper;
using Microsoft.Extensions.Configuration;
using Online_Examination.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Threading.Tasks;

namespace Online_Examination.UserRepo
{
    public class UserRepoo: BaseRepo,IuserRepo
    {
        public UserRepoo(IConfiguration configuration) : base(configuration)
        {
        }
        public async Task<int> Registration(tbl_UserMaster ue)
        {
            var cn = CreateConnection();
            if (cn.State == ConnectionState.Closed) cn.Open();
            DynamicParameters param = new DynamicParameters();
            param.Add("@userid", ue.userid);
            param.Add("@username", ue.username);
            param.Add("@userpassword", ue.userpassword);
            param.Add("@userphone", ue.userphone);
            param.Add("@useremail", ue.useremail);
            param.Add("@usertechnology", ue.usertechnology);
            param.Add("@usersubject", ue.usersubject);
            param.Add("@action", "InsertUser");
            int x = cn.Execute("op_user", param, commandType: CommandType.StoredProcedure);
            cn.Close();
            return x;
        }
        public async Task<tbl_UserMaster> GetByID(string UserId)
        {
            var cn = CreateConnection();
            DynamicParameters param = new DynamicParameters();
            param.Add("@userid", UserId);
            param.Add("@action", "getbyid");
            var lstprod = cn.Query<tbl_UserMaster>("op_user", param, commandType: CommandType.StoredProcedure).FirstOrDefault();
            cn.Close();
            return lstprod;
        }
        public async Task<tbl_ResultDetails> ck_tbl_result(string UserId)
        {
            var cn = CreateConnection();
            DynamicParameters param = new DynamicParameters();
            param.Add("@userid", UserId);
            param.Add("@action", "ck_tbl_result");
            var lstprod = cn.Query<tbl_ResultDetails>("op_user", param, commandType: CommandType.StoredProcedure).FirstOrDefault();
            cn.Close();
            return lstprod;
        }
        //public async Task<tbl_UserMaster> Login(string UserId, string Passwd)
        //{
        //    var cn = CreateConnection();
        //    DynamicParameters param = new DynamicParameters();
        //    param.Add("@userid", UserId);
        //    param.Add("@userpassword", Passwd);
        //    param.Add("@action", "login");
        //    var lstprod = cn.Query<tbl_UserMaster>("op_user", param, commandType: CommandType.StoredProcedure).FirstOrDefault();
        //    cn.Close();
        //    return lstprod;
        //}
        public async Task<tbl_SetupMaster> GetSetUp()
        {
            var cn = CreateConnection();
            DynamicParameters param = new DynamicParameters();
            param.Add("@action", "bindsetup");
            var lstprod = cn.Query<tbl_SetupMaster>("op_user", param, commandType: CommandType.StoredProcedure).FirstOrDefault();
            cn.Close();
            return lstprod;
        }
        public async Task<int> UpdateChange(tbl_UserMaster ue)
        {
            var cn = CreateConnection();
            if (cn.State == ConnectionState.Closed) cn.Open();
            DynamicParameters param = new DynamicParameters();
            param.Add("@userid", ue.userid);
            param.Add("@username", ue.username);
            param.Add("@userpassword", ue.userpassword);
            param.Add("@userphone", ue.userphone);
            param.Add("@useremail", ue.useremail);
            param.Add("@action", "updatechange");
            int x = cn.Execute("op_user", param, commandType: CommandType.StoredProcedure);
            cn.Close();
            return x;
        }
        public async Task<int> insertResultdetails(tbl_ResultDetails ue)
        {
            var cn = CreateConnection();
            if (cn.State == ConnectionState.Closed) cn.Open();
            DynamicParameters param = new DynamicParameters();
            param.Add("@optchoose", ue.optchoose);
            param.Add("@userid", ue.userid);
            param.Add("@slno", ue.qid);
          
            param.Add("@action", "insertResultdetails");
            int x = cn.Execute("op_user", param, commandType: CommandType.StoredProcedure);
            cn.Close();
            return x;//ViewResultbyId
        }

      
        public async Task<tbl_UserMaster> ViewResultbyId(string s)
        {
            var cn = CreateConnection();
            DynamicParameters param = new DynamicParameters();
            param.Add("@userid", s);
          
            param.Add("@action", "ViewResultbyId");
            var lstprod = cn.Query<tbl_UserMaster>("op_user", param, commandType: CommandType.StoredProcedure).FirstOrDefault();
            cn.Close();
            return lstprod;
        }
        public async Task<List<tbl_QuestionMaster>> bindquestion(int x)
        {
            var cn = CreateConnection();
            DynamicParameters param = new DynamicParameters();
            param.Add("@subid", x);
            param.Add("@action", "bindquestion");
            var lstprod = cn.Query<tbl_QuestionMaster>("op_user", param, commandType: CommandType.StoredProcedure).ToList();
            cn.Close();
            return lstprod;
        }


    }
  
}
