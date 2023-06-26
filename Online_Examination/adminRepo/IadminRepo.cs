using Online_Examination.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Online_Examination.adminRepo
{
   public interface IadminRepo
    {
        Task<tbl_UserMaster> Login(tbl_UserMaster t);
        Task<int> upduserstatus(tbl_UserMaster obj);
        Task<tbl_SubjectMaster> GetSubjectById(int x);
        

        Task<tbl_TechnologyMaster> bindtechbyid(int x);

        Task<List<tbl_UserMaster>> GetAllUser();
       
        Task<int> SaveUpdateTech(tbl_TechnologyMaster te);
        Task<int> SaveUpdateSub(tbl_SubjectMaster se);
        Task<int> DeleteSub(int SubId);
        Task<int> DeleteTech(int TechId);
        Task<List<tbl_TechnologyMaster>> GetAllTechnology();
        Task<List<tbl_SubjectMaster>> GetAllSubject(int TechId);
        Task<List<tbl_SubjectMaster>> GetAllSubjectTable();

        Task<int> Insert_updateQuestion(tbl_QuestionMaster qe);

        Task<List<tbl_QuestionMaster>> GetAllQuestion();
        Task<int> DeleteQuestion(int Qid);
       Task<tbl_QuestionMaster> GetQuestionById(int Qid);

        Task<List<tbl_UserMaster>> ViewAllResult();
        Task<int> UpdateCertificate(string UserId);
      Task<int> tbl_SetupMaster_insert(tbl_SetupMaster se);

    }
}
