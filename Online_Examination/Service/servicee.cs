using Online_Examination.adminRepo;
using Online_Examination.Models;
using Online_Examination.UserRepo;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Online_Examination.Service
{
    public class servicee:Iservice
    {
        private readonly IadminRepo admin = null;
        private readonly IuserRepo user = null;
        public servicee(IadminRepo adminn, IuserRepo userr)
        {
            admin = adminn;
            user = userr;

        }
        public async Task<int> insertResultdetails(tbl_ResultDetails ue)
        {
            return await user.insertResultdetails(ue);
        }
        public async Task<tbl_UserMaster> ViewResultbyId(string s)
        {
            return await user.ViewResultbyId(s);
        }
        public async Task<int> Insert_updateQuestion(tbl_QuestionMaster qe)
        {

            return await admin.Insert_updateQuestion(qe);
        }
       public Task<tbl_TechnologyMaster> bindtechbyid(int x)
        {
          return  admin.bindtechbyid(x);
        }
      

        public Task<int> DeleteSub(int SubId)
        {
            return admin.DeleteSub(SubId);
        }

        public Task<int> DeleteTech(int TechId)
        {
            return admin.DeleteTech(TechId);
        }

        public Task<List<tbl_SubjectMaster>> GetAllSubject(int TechId)
        {
            return admin.GetAllSubject(TechId);
        }

        public Task<List<tbl_SubjectMaster>> GetAllSubjectTable()
        {
            return admin.GetAllSubjectTable();
        }

        public Task<List<tbl_TechnologyMaster>> GetAllTechnology()
        {
            return admin.GetAllTechnology();
        }

        public Task<List<tbl_UserMaster>> GetAllUser()
        {
            return admin.GetAllUser();
        }

        public Task<tbl_UserMaster> GetByID(string UserId)
        {
            return user.GetByID(UserId);
        }

        public Task<tbl_SetupMaster> GetSetUp()
        {
            return user.GetSetUp();
        }

        public async Task<tbl_SubjectMaster> GetSubjectById(int x)
        {
            return await admin.GetSubjectById(x);
        }

        public Task<tbl_UserMaster> Login(tbl_UserMaster t)
        {
           return admin.Login(t);
        }

        public Task<tbl_ResultDetails> ck_tbl_result(string UserId)
        {
            return user.ck_tbl_result(UserId);

        }

        public Task<int> Registration(tbl_UserMaster ue)
        {
            return user.Registration(ue);
        }

        public Task<int> SaveUpdateSub(tbl_SubjectMaster se)
        {
            return admin.SaveUpdateSub(se);
        }

        public Task<int> SaveUpdateTech(tbl_TechnologyMaster te)
        {
            return admin.SaveUpdateTech(te);
        }

        public Task<int> UpdateChange(tbl_UserMaster ue)
        {
            return user.UpdateChange(ue);
        }

        public Task<int> upduserstatus(tbl_UserMaster obj)
        {
            return admin.upduserstatus(obj);
        }

      public  Task<List<tbl_QuestionMaster>> GetAllQuestion()
        {
            return admin.GetAllQuestion();
        }
       public Task<int> DeleteQuestion(int Qid)
        {
            return admin.DeleteQuestion(Qid);
        }
       public Task<tbl_QuestionMaster> GetQuestionById(int Qid)
        {
            return admin.GetQuestionById(Qid);
        }

        public async Task<List<tbl_UserMaster>> ViewAllResult()
        {
            return await admin.ViewAllResult();
        }
      public async  Task<List<tbl_QuestionMaster>> bindquestion(int x)
        {
            return await user.bindquestion(x);
        }

       public async Task<int> UpdateCertificateService(string UserId)
        {
            return await admin.UpdateCertificate(UserId);
        }
      public async  Task<int> tbl_SetupMaster_insert(tbl_SetupMaster se)
        {
            return await admin.tbl_SetupMaster_insert(se);
        }

    }
}
