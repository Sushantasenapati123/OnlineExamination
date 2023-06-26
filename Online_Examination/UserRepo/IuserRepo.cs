using Online_Examination.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Online_Examination.UserRepo
{
   public interface IuserRepo
    {

        Task<int> Registration(tbl_UserMaster ue);
        Task<tbl_UserMaster> GetByID(string UserId);
      //  Task<tbl_UserMaster> Login(string UserId, string Passwd);
        Task<tbl_SetupMaster> GetSetUp();
        Task<int> UpdateChange(tbl_UserMaster ue);

        Task<int> insertResultdetails(tbl_ResultDetails ue);
        Task<tbl_UserMaster> ViewResultbyId(string s);
        Task<List<tbl_QuestionMaster>> bindquestion(int x);
        Task<tbl_ResultDetails> ck_tbl_result(string UserId);
    }
}
