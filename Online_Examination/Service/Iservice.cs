using Online_Examination.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Online_Examination.Service
{
   public  interface Iservice
    {
        Task<tbl_UserMaster> Login(tbl_UserMaster t);
        Task<int> upduserstatus(tbl_UserMaster obj);

        Task<tbl_SubjectMaster> GetSubjectById(int x);
        Task<int> Insert_updateQuestion(tbl_QuestionMaster qe);



        Task<int> Registration(tbl_UserMaster ue);
        Task<tbl_UserMaster> GetByID(string UserId);
       // Task<tbl_UserMaster> Login(string UserId, string Passwd);
        Task<tbl_SetupMaster> GetSetUp();
        Task<int> UpdateChange(tbl_UserMaster ue);
        Task<tbl_TechnologyMaster> bindtechbyid(int x);
 


        Task<List<tbl_UserMaster>> GetAllUser();

        Task<int> SaveUpdateTech(tbl_TechnologyMaster te);
        Task<int> SaveUpdateSub(tbl_SubjectMaster se);
        Task<int> DeleteSub(int SubId);
        Task<int> DeleteTech(int TechId);
        Task<List<tbl_TechnologyMaster>> GetAllTechnology();
        Task<List<tbl_SubjectMaster>> GetAllSubject(int TechId);
        Task<List<tbl_SubjectMaster>> GetAllSubjectTable();

        Task<int> insertResultdetails(tbl_ResultDetails ue);
        Task<tbl_UserMaster> ViewResultbyId(string s);

        Task<List<tbl_QuestionMaster>> GetAllQuestion();
        Task<int> DeleteQuestion(int Qid);
        Task<tbl_QuestionMaster> GetQuestionById(int Qid);
        Task<List<tbl_UserMaster>> ViewAllResult();
        Task<List<tbl_QuestionMaster>> bindquestion(int x);

        Task<int> UpdateCertificateService(string UserId);
        Task<int> tbl_SetupMaster_insert(tbl_SetupMaster se);
        Task<tbl_ResultDetails> ck_tbl_result(string UserId);


    }
}
