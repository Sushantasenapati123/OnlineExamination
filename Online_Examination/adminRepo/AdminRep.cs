using Dapper;
using Microsoft.Extensions.Configuration;
using Online_Examination.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Threading.Tasks;

namespace Online_Examination.adminRepo
{
    public class AdminRep: BaseRepo,IadminRepo
    {
        public AdminRep(IConfiguration conf) : base(conf)
        {

        }
        public async Task<tbl_UserMaster> Login(tbl_UserMaster t)
        {
            var con = CreateConnection();
            DynamicParameters param = new DynamicParameters();
            param.Add("@userid", t.userid);
            param.Add("@userpassword", t.userpassword);
            param.Add("@action", "login");


            var x = await con.QueryAsync<tbl_UserMaster>("op_user", param, commandType: CommandType.StoredProcedure);
            return x.FirstOrDefault();
        }
        public async Task<int> upduserstatus(tbl_UserMaster obj)
        {
            var con = CreateConnection();
            DynamicParameters param = new DynamicParameters();
            param.Add("@mode", "upduserstatus");
            param.Add("@userid", obj.userid);

            var x = await con.ExecuteAsync("sp_OnlineExamAdmin", param, commandType: CommandType.StoredProcedure);
            return x;
        }
        public async Task<int> SaveUpdateTech(tbl_TechnologyMaster te)
        {
            var cn = CreateConnection();
            if (cn.State == ConnectionState.Closed) cn.Open();
            DynamicParameters param = new DynamicParameters();
            param.Add("@techid", te.techid);
            param.Add("@techname", te.techname);
            param.Add("@mode", "insuptech");
            int x = cn.Execute("sp_OnlineExamAdmin", param, commandType: CommandType.StoredProcedure);
            cn.Close();
            return x;
        }
        public async Task<int> SaveUpdateSub(tbl_SubjectMaster se)
        {
            var cn = CreateConnection();
            if (cn.State == ConnectionState.Closed) cn.Open();
            DynamicParameters param = new DynamicParameters();
            param.Add("@subid", se.subid);
            param.Add("@techid", se.techid);
            param.Add("@subname", se.subname);
            param.Add("@mode", "insupsub");
            int x = cn.Execute("sp_OnlineExamAdmin", param, commandType: CommandType.StoredProcedure);
            cn.Close();
            return x;
        }
        public async Task<int> DeleteSub(int SubId)
        {
            var cn = CreateConnection();
            if (cn.State == ConnectionState.Closed) cn.Open();
            DynamicParameters param = new DynamicParameters();
            param.Add("@subid", SubId);
            param.Add("@mode", "deletesub");
            int x = cn.Execute("sp_OnlineExamAdmin", param, commandType: CommandType.StoredProcedure);
            cn.Close();
            return x;
        }
        public async Task<int> DeleteTech(int TechId)
        {
            var cn = CreateConnection();
            if (cn.State == ConnectionState.Closed) cn.Open();
            DynamicParameters param = new DynamicParameters();
            param.Add("@techid", TechId);
            param.Add("@mode", "deletetech");
            int x = cn.Execute("sp_OnlineExamAdmin", param, commandType: CommandType.StoredProcedure);
            cn.Close();
            return x;
        }
        public async Task<List<tbl_TechnologyMaster>> GetAllTechnology()
        {
            var cn = CreateConnection();
            DynamicParameters param = new DynamicParameters();
            param.Add("@mode", "bindtech");
            var lstprod = cn.Query<tbl_TechnologyMaster>("sp_OnlineExamAdmin", param, commandType: CommandType.StoredProcedure).ToList();
            cn.Close();
            return lstprod;////
        }

        public async Task<tbl_TechnologyMaster> bindtechbyid(int x)
        {
            var cn = CreateConnection();
            DynamicParameters param = new DynamicParameters();
            param.Add("@techid", x);
            param.Add("@mode", "bindtechbyid");
            var lstprod = cn.Query<tbl_TechnologyMaster>("sp_OnlineExamAdmin", param, commandType: CommandType.StoredProcedure).FirstOrDefault();
            cn.Close();
            return lstprod;    
        }
        public async Task<tbl_SubjectMaster> GetSubjectById(int x)
        {
            var cn = CreateConnection();
            DynamicParameters param = new DynamicParameters();
            param.Add("@subid", x);
            param.Add("@mode", "GetSubjectById");
            var lstprod = cn.Query<tbl_SubjectMaster>("sp_OnlineExamAdmin", param, commandType: CommandType.StoredProcedure).FirstOrDefault();
            cn.Close();
            return lstprod;
        }

        public async Task<List<tbl_SubjectMaster>> GetAllSubject(int TechId)  
        {
            var cn = CreateConnection();
            DynamicParameters param = new DynamicParameters();
            param.Add("@techid", TechId);
            param.Add("@mode", "bindSub");
            var lstprod = cn.Query<tbl_SubjectMaster>("sp_OnlineExamAdmin", param, commandType: CommandType.StoredProcedure).ToList();
            cn.Close();
            return lstprod;
        }
        public async Task<List<tbl_SubjectMaster>> GetAllSubjectTable()
        {
            var cn = CreateConnection();
            DynamicParameters param = new DynamicParameters();
            param.Add("@mode", "fillsubtable");
            var lstprod = cn.Query<tbl_SubjectMaster>("sp_OnlineExamAdmin", param, commandType: CommandType.StoredProcedure).ToList();
            cn.Close();
            return lstprod;
        }

        public async Task<List<tbl_UserMaster>> GetAllUser()
        {
            var cn = CreateConnection();
            DynamicParameters param = new DynamicParameters();
            param.Add("@mode", "bindallusers");
            var lstprod = cn.Query<tbl_UserMaster>("sp_OnlineExamAdmin", param, commandType: CommandType.StoredProcedure).ToList();
            cn.Close();
            return lstprod;
        }
        public async Task<int> Insert_updateQuestion(tbl_QuestionMaster qe)
        {
            var cn = CreateConnection();
            if (cn.State == ConnectionState.Closed) cn.Open();
            DynamicParameters param = new DynamicParameters();
            param.Add("@slno", qe.slno);
            param.Add("@techid", qe.techid);
            param.Add("@subid", qe.subid);
            param.Add("@question", qe.question);
            param.Add("@opt1", qe.opt1);
            param.Add("@opt2", qe.opt2);
            param.Add("@opt3", qe.opt3);
            param.Add("@opt4", qe.opt4);
            param.Add("@ans", qe.ans);
            param.Add("@mode", "insquemaster");
            int x = cn.Execute("sp_OnlineExamAdmin", param, commandType: CommandType.StoredProcedure);
            cn.Close();
            return x;
        }
        public async Task<List<tbl_QuestionMaster>> GetAllQuestion()
        {
            try
            {
                var cn = CreateConnection();
                DynamicParameters param = new DynamicParameters();
                param.Add("@mode", "getallquestion");
                var lstprod = cn.Query<tbl_QuestionMaster>("sp_OnlineExamAdmin", param, commandType: CommandType.StoredProcedure).ToList();
                cn.Close();
                return lstprod;
            }
            catch (Exception ex)
            {
                return null;
            }
        }
                    
        public async Task<int> DeleteQuestion(int Qid)
        {
            try
            {
                var cn = CreateConnection();
                if (cn.State == ConnectionState.Closed) cn.Open();
                DynamicParameters param = new DynamicParameters();
                param.Add("@slno", Qid);
                param.Add("@mode", "deletequestion");
                int x = cn.Execute("sp_OnlineExamAdmin", param, commandType: CommandType.StoredProcedure);
                cn.Close();
                return x;
            }
            catch (Exception ex)
            {
                return 0;
            }
        }
       
        public async Task<tbl_QuestionMaster> GetQuestionById(int Qid)
        {
            try
            {
                var cn = CreateConnection();
                DynamicParameters param = new DynamicParameters();
                param.Add("@slno", Qid);
                param.Add("@mode", "getQuestionbyid");
                var lstprod = cn.Query<tbl_QuestionMaster>("sp_OnlineExamAdmin", param, commandType: CommandType.StoredProcedure).FirstOrDefault();
                cn.Close();
                return lstprod;
            }
            catch (Exception ex)
            {
                return null;
            }
        }
        public async Task<List<tbl_UserMaster>> ViewAllResult()
        {
            try
            {
                var cn = CreateConnection();
                DynamicParameters param = new DynamicParameters();
                param.Add("@mode", "ViewAllResult");
                var lstprod = cn.Query<tbl_UserMaster>("sp_OnlineExamAdmin", param, commandType: CommandType.StoredProcedure).ToList();
                cn.Close();
                return lstprod;
            }
            catch (Exception ex)
            {
                return null;
            }
        }
        public async Task<int> UpdateCertificate(string UserId)
        {
            try
            {
                var cn = CreateConnection();
                if (cn.State == ConnectionState.Closed) cn.Open();
                DynamicParameters param = new DynamicParameters();
                param.Add("@userid", UserId);
                param.Add("@mode", "approvecertificate");
                int x = cn.Execute("sp_OnlineExamAdmin", param, commandType: CommandType.StoredProcedure);
                cn.Close();
                return x;
            }
            catch (Exception ex)
            {
                return 0;
            }
        }

     
        public async Task<int> tbl_SetupMaster_insert(tbl_SetupMaster se)
        {
            var cn = CreateConnection();
            if (cn.State == ConnectionState.Closed) cn.Open();
            DynamicParameters param = new DynamicParameters();
            param.Add("@noofque", se.noofque);
            param.Add("@timeinminute", se.timeinminute);
            param.Add("@rules", se.rules);
            param.Add("@mode", "tbl_SetupMaster_insert");
            int x = cn.Execute("sp_OnlineExamAdmin", param, commandType: CommandType.StoredProcedure);
            cn.Close();
            return x;
        }
    }
}


