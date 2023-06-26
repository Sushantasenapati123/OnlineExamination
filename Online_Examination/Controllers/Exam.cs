using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Newtonsoft.Json;
using Online_Examination.Models;
using Online_Examination.Service;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Online_Examination.Controllers
{
    public class Exam : Controller
    {
        private readonly Iservice ip;
        public Exam(Iservice dbservice)
        {
            ip = dbservice;
        }
        public IActionResult Index()
        {
            return View();
        }
        public IActionResult Login()
        {
            return View();
        }
        public async Task<IActionResult> Regis()
        {
            List<tbl_TechnologyMaster> pc = new List<tbl_TechnologyMaster>();
            pc = await ip.GetAllTechnology();
            pc.Insert(0, new tbl_TechnologyMaster { techid = 0, techname = "Select One" });
            ViewBag.techid = pc;


            return View();
        }
        public async Task<JsonResult> SubCat_Bind(int catid)
        {
            var subcatList = await ip.GetAllSubject(catid);
            List<SelectListItem> scalist = new List<SelectListItem>();
            foreach (tbl_SubjectMaster dr in subcatList)
            {
                scalist.Add(new SelectListItem { Text = dr.subname, Value = dr.subid.ToString() });
            }
            var jsonres = JsonConvert.SerializeObject(scalist);
            return Json(jsonres);
        }

        public IActionResult Adminwl()
        {
            return View();
        }
        public IActionResult Edit(string id)
        {
            tbl_UserMaster t = new tbl_UserMaster();
            t.userid = id;
            ip.upduserstatus(t);

            return RedirectToAction("Usviewuserr");
        }

        public IActionResult Master()
        {
            return View();
        }





        public async Task<IActionResult> Usviewuserr()
        {
            List<tbl_UserMaster> t = await ip.GetAllUser();
            return View(t);
        }
      
        public async Task<IActionResult> Userwl()
        {
            if (HttpContext.Session.GetString("UserName") != null)
            {
                ViewBag.userName = HttpContext.Session.GetString("UserName");
                tbl_SetupMaster exinfo = await ip.GetSetUp();
                if (exinfo != null)
                {
                    ViewBag.Time = exinfo.timeinminute;
                    ViewBag.NoOFQuestion = exinfo.noofque;
                    ViewBag.Rules = exinfo.rules;
                }
                return View();
            }
            else
            {
                return RedirectToAction("Index", "OnlineExam");
            }



            //return View();
        }

        public async Task<JsonResult> UserLogin(tbl_UserMaster login)
        {


            try
            
            {


                var x = await ip.Login(login);

                if (x != null)
                {
                    if (x.userid == "Admin")
                    {

                        HttpContext.Session.SetString("UserID", x.userid);
                        HttpContext.Session.SetString("UserName", x.username);
                        HttpContext.Session.SetString("Password", x.userpassword);
                        return Json(2);

                    }
                    else
                    {
                        HttpContext.Session.SetString("UserID", x.userid);
                        HttpContext.Session.SetString("UserName", x.username);
                        HttpContext.Session.SetString("subid", x.usersubject.ToString());
                        HttpContext.Session.SetString("PhoneNo", x.userphone);
                        HttpContext.Session.SetString("Email", x.useremail);
                        HttpContext.Session.SetString("Password", x.userpassword);
                        return Json(3);
                    }

                }
                else
                {
                    return Json(0);
                }
            }
            catch (Exception ex)
            {
                return Json(0);
            }
            return Json(0);
        }

        public async Task<JsonResult> UserCreat(tbl_UserMaster obj)
        {
            var a = 0;
            try
            {
                //if you get data from user table then a value is zero(0)
                var _chkUserID = await ip.GetByID(obj.userid);//??????how get excep. if get null
                if (_chkUserID == null)
                {
                    var x = await ip.Registration(obj);
                    return Json(x);
                }
                else
                {
                    return Json(0);
                }


            }
            catch
            {
                return Json(0);
            }


        }
        public async Task<JsonResult> GetAllUser()
        {
            List<tbl_UserMaster> pd = await ip.GetAllUser();
            var jsonres = JsonConvert.SerializeObject(pd);
            return Json(jsonres);
        }
        public async Task<JsonResult> updatestatus(tbl_UserMaster prod)
        {

            var jsonres = ip.UpdateChange(prod);
            return Json(jsonres);
        }


        public async Task<JsonResult> entertechnologyy(tbl_TechnologyMaster login)
        {

            try
            {
                string s = login.techname;
                var x = await ip.SaveUpdateTech(login);
                return Json(x);
            }
            catch
            {
                return Json(0);
            }


        }
        public IActionResult entertechnology()
        {
            return View();
        }

        public async Task<JsonResult> GetAllTech()
        {
            List<tbl_TechnologyMaster> pd = await ip.GetAllTechnology();
            var jsonres = JsonConvert.SerializeObject(pd);
            return Json(jsonres);
        }
        public async Task<int> Delete(int vid)
        {
            return await ip.DeleteTech(vid);
        }

        public async Task<JsonResult> bindtechbyid(int pid)
        {
            tbl_TechnologyMaster pd = await ip.bindtechbyid(pid);
            var jsonres = JsonConvert.SerializeObject(pd);
            return Json(jsonres);
        }
        public async Task<IActionResult> entersubject()
        {
            List<tbl_TechnologyMaster> pc = new List<tbl_TechnologyMaster>();
            pc = await ip.GetAllTechnology();
            pc.Insert(0, new tbl_TechnologyMaster { techid = 0, techname = "Select One" });
            ViewBag.techid = pc;


            return View();
        }
        public async Task<JsonResult> entersubjectt(tbl_SubjectMaster prod)
        {

            try
            {

                var x = await ip.SaveUpdateSub(prod);
                return Json(x);
            }
            catch
            {
                return Json(0);
            }


        }
        public async Task<JsonResult> GetAllsub()
        {
            List<tbl_SubjectMaster> pd = await ip.GetAllSubjectTable();
            var jsonres = JsonConvert.SerializeObject(pd);
            return Json(jsonres);
        }

        public async Task<int> Deletesubject(int vid)
        {
            return await ip.DeleteSub(vid);
        }

        //public async Task<int> DeleteSubj(int id)
        //{
        //    return await _service.DeleteSubService(id);
        //}

        public async Task<IActionResult> ChangePassword()
        {
            if (HttpContext.Session.GetString("UserName") != null)
            {
                ViewBag.pwd = HttpContext.Session.GetString("Password");//UserName
                return View();
            }
            else
            {
                return RedirectToAction("Index", "Exam");
            }
        }
        public async Task<JsonResult> ChangePwd(tbl_UserMaster obj)
        {
            obj.userid = HttpContext.Session.GetString("UserID");
            var x = await ip.UpdateChange(obj);
            return Json(x);
        }

        public async Task<JsonResult> UserUpdate(tbl_UserMaster obj)
        {
            obj.userid = HttpContext.Session.GetString("UserID");
            var x = await ip.UpdateChange(obj);
            if (x == 1)
            {
                HttpContext.Session.SetString("UserName", obj.username);
                HttpContext.Session.SetString("PhoneNo", obj.userphone);
                HttpContext.Session.SetString("Email", obj.useremail);
            }
            return Json(x);
        }
        public async Task<IActionResult> EditProfile()
        {
            if (HttpContext.Session.GetString("UserName") != null)
            {
                ViewBag.userName = HttpContext.Session.GetString("UserName");
                ViewBag.Phone = HttpContext.Session.GetString("PhoneNo");
                ViewBag.email = HttpContext.Session.GetString("Email");
                return View();
            }
            else
            {
                return RedirectToAction("Index", "Exam");
            }
        }

        public async Task<JsonResult> GetSubjectByIdD(int id)
        {
            tbl_SubjectMaster lstprod = await ip.GetSubjectById(id);
            var jsonres = JsonConvert.SerializeObject(lstprod);
            return Json(jsonres);
        }

        public async Task<IActionResult> enterquestion()
        {
            List<tbl_TechnologyMaster> pc = new List<tbl_TechnologyMaster>();
            pc = await ip.GetAllTechnology();
            pc.Insert(0, new tbl_TechnologyMaster { techid = 0, techname = "Select One" });
            ViewBag.Technology = pc;

            return View();
        }
        public async Task<JsonResult> CreateQuestion(tbl_QuestionMaster que)//update also here
        {

            var x = await ip.Insert_updateQuestion(que);
            return Json(x);
        }
      
        public async Task<IActionResult> giveExam()
        {
            try
            {
                tbl_UserMaster x = await ip.GetByID(HttpContext.Session.GetString("UserID"));
                ViewBag.techname = x.techname;
                ViewBag.subname = x.subname;
                ViewBag.username = HttpContext.Session.GetString("UserName");

                return View();
            }
            catch(Exception ex)
            {
                return View("Index");
            }
          
        }
        public async Task<int> DeleteQue(int vid)
        {
            return await ip.DeleteQuestion(vid);
        }

        public async Task<JsonResult> GetQuestionById(int Qid)
        {
            tbl_QuestionMaster lstprod = await ip.GetQuestionById(Qid);
            var jsonres = JsonConvert.SerializeObject(lstprod);
            return Json(jsonres);
        }

        public async Task<IActionResult> ViewAllResult()
        {
            return View(await ip.ViewAllResult());
        }
        public async Task<JsonResult> GetQuestion()
        {
            List<tbl_QuestionMaster> lstprod = await ip.GetAllQuestion();
            var jsonres = JsonConvert.SerializeObject(lstprod);
            return Json(jsonres);
        }
        static int z;
        static int ck=0;
        static int que_limit;
       
        static int x = 0;

       static tbl_ResultDetails tr = new tbl_ResultDetails();

        public async Task<JsonResult> BindQuestion()
        {
          if(ck==0)
            {
                tr = await ip.ck_tbl_result(HttpContext.Session.GetString("UserID"));
                ck++;
            }
          
            if (tr==null)
            {
                if (x == 0)
                {
                    tbl_SetupMaster no = await ip.GetSetUp();
                    que_limit = no.noofque;
                    x++;

                }
                tbl_QuestionMaster que = new tbl_QuestionMaster();
                for (int i = 0; i < que_limit; i++)
                {
                    int x =Convert.ToInt32( HttpContext.Session.GetString("subid"));
                    List<tbl_QuestionMaster> lstprod = await ip.bindquestion(x);
                    que = lstprod[i];
                }
                que_limit--;
                if (que_limit < 0)
                {
                    return Json(3);
                }
                else
                {
                    var jsonres = JsonConvert.SerializeObject(que);
                    return Json(jsonres);
                }
            }
            else
            {
                return Json(4);
            }
        }///
   
        public async Task<JsonResult> InsertResult(tbl_ResultDetails rslt)
        {
            if(rslt.optchoose==null)
            {
                return Json(3);
            }
            tbl_SetupMaster no = await ip.GetSetUp();
            int y = no.noofque;
          
                rslt.userid = HttpContext.Session.GetString("UserID");
                var x = await ip.insertResultdetails(rslt);
                return Json(x);
                   
        }
     
        public IActionResult ViewResultt()
        
        {
            return View();
        }
        public async Task<JsonResult> GetResult()
        {
            string id = HttpContext.Session.GetString("UserID");
            tbl_UserMaster result = await ip.ViewResultbyId(id);
            var jsonres = JsonConvert.SerializeObject(result);
            return Json(jsonres);
        }


        public async Task<IActionResult> Approvecertificate(string id)
        {
            await ip.UpdateCertificateService(id);
            return View("ViewAllResult",await ip.ViewAllResult());
        }

        public async Task<JsonResult> insertsetup(tbl_SetupMaster que)//update also here
        {

            var x = await ip.tbl_SetupMaster_insert(que);
            return Json(x);
        }
        public IActionResult insertsetupAdmin()
        {

            return View();
        }
        public IActionResult logout()
        {
            //Delete the Session object.
            HttpContext.Session.Remove("UserName");
            HttpContext.Session.Clear();

            HttpContext.Session.Remove("UserID");
            HttpContext.Session.Clear();
            HttpContext.Session.Remove("UserName");
            HttpContext.Session.Clear();

            HttpContext.Session.Remove("PhoneNo");
            HttpContext.Session.Clear();
            HttpContext.Session.Remove("Email");
            HttpContext.Session.Clear();
            HttpContext.Session.Remove("Password");
            HttpContext.Session.Clear();
            ck = 0;
             x = 0;
             return RedirectToAction("Login");
        }

        public async Task<JsonResult> getTime(tbl_TechnologyMaster login)
        {
            tbl_SetupMaster t = new tbl_SetupMaster();
            t =await ip.GetSetUp();
          
            return Json(t.timeinminute);

        }








    }
}
