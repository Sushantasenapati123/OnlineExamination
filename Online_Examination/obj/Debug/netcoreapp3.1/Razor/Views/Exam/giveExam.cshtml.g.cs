#pragma checksum "D:\Big Project\Prangya Exam_online\Online_Examination_chikun\Online_Examination\Views\Exam\giveExam.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "1a7f669272c5e934dd4569a9e55c9fe3a7fe0d22"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_Exam_giveExam), @"mvc.1.0.view", @"/Views/Exam/giveExam.cshtml")]
namespace AspNetCore
{
    #line hidden
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Threading.Tasks;
    using Microsoft.AspNetCore.Mvc;
    using Microsoft.AspNetCore.Mvc.Rendering;
    using Microsoft.AspNetCore.Mvc.ViewFeatures;
#nullable restore
#line 1 "D:\Big Project\Prangya Exam_online\Online_Examination_chikun\Online_Examination\Views\_ViewImports.cshtml"
using Online_Examination;

#line default
#line hidden
#nullable disable
#nullable restore
#line 2 "D:\Big Project\Prangya Exam_online\Online_Examination_chikun\Online_Examination\Views\_ViewImports.cshtml"
using Online_Examination.Models;

#line default
#line hidden
#nullable disable
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"1a7f669272c5e934dd4569a9e55c9fe3a7fe0d22", @"/Views/Exam/giveExam.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"d9e0fb4419b1f1a92ab5f23750de0b72ed04ed75", @"/Views/_ViewImports.cshtml")]
    public class Views_Exam_giveExam : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<dynamic>
    {
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
            WriteLiteral("\r\n");
#nullable restore
#line 2 "D:\Big Project\Prangya Exam_online\Online_Examination_chikun\Online_Examination\Views\Exam\giveExam.cshtml"
  
    ViewData["Title"] = "giveExam";
    Layout = "user";

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n\r\n<label id=\"time\" class=\"form-control\"></label>\r\n<table id=\"table_quest\" class=\"table  table-bordered table-striped\">\r\n    <thead>\r\n        <tr>\r\n\r\n            <th colspan=\"2\" align=\"justify\">\r\n                <h3 class=\"active\">Name:- ");
#nullable restore
#line 14 "D:\Big Project\Prangya Exam_online\Online_Examination_chikun\Online_Examination\Views\Exam\giveExam.cshtml"
                                     Write(ViewBag.userName);

#line default
#line hidden
#nullable disable
            WriteLiteral("   |  Technology:-");
#nullable restore
#line 14 "D:\Big Project\Prangya Exam_online\Online_Examination_chikun\Online_Examination\Views\Exam\giveExam.cshtml"
                                                                        Write(ViewBag.techname);

#line default
#line hidden
#nullable disable
            WriteLiteral("   |    Subjects:-");
#nullable restore
#line 14 "D:\Big Project\Prangya Exam_online\Online_Examination_chikun\Online_Examination\Views\Exam\giveExam.cshtml"
                                                                                                           Write(ViewBag.subname);

#line default
#line hidden
#nullable disable
            WriteLiteral(@"</h3>
                <h4>Time Left : <label id=""safeTimerDisplay""></label></h4>
            </th>
        </tr>



    </thead>
    <tbody>
    </tbody>

</table>
<h3><label id=""qid"" style=""display:none""><span class=""label info"">Do You Want To See The Result,Plz click On Submit Button</span></label></h3>
<br>
<button class=""btn btn-primary"" id=""submit"" style=""display:none"">Submit</button>

<script type=""text/javascript"">
    $(window).on(""load"", function () {
        GetTime();
        GetAllQuestion();
       

    });
    function GetTime() {
       
        $(""#timer"").remove();

        $.getJSON(""/Exam/getTime"", function (data) {
            var time = 60 * data, // your time in seconds here
            display = document.querySelector('#safeTimerDisplay');
            startTimer(time, display);
          

        });
    }
    function startTimer(duration, display) {
        var timer = duration, minutes, seconds;
        setInterval(function () {
            minu");
            WriteLiteral(@"tes = parseInt(timer / 60, 10)
            seconds = parseInt(timer % 60, 10);

            minutes = minutes < 10 ? ""0"" + minutes : minutes;
            seconds = seconds < 10 ? ""0"" + seconds : seconds;

            display.textContent = minutes + "":"" + seconds;

            if (--timer < 0) {
                timer = 0;
                // timer = duration; // uncomment this line to reset timer automatically after reaching 0
            }
            if (timer == 0) {
                window.location.href = '/Exam/ViewResult/';
            }
        }, 1000);
    }




    function GetAllQuestion() {
        alert(""getAllQuestion"");
        $(""#table_quest tbody tr"").remove();

        $.getJSON(""/Exam/BindQuestion"", function (data) {
            if (data != 4) {
                alert(""bindquestion into"");


                prd = JSON.parse(data);
                // $.each(data, function (i, prd) {
                $(""#table_quest tbody"").append(
                    `<tr><td col");
            WriteLiteral(@"span=""2"">` + prd.question + `</td></tr> + <tr><td><input name=""opt"" type=""radio"" class=""opt1""  value=""` + prd.opt1 + `"" />` + prd.opt1 + `
                    </td>+<td><input type=""radio"" name=""opt"" class=""opt1"" value=""` + prd.opt2 + `"" />` + prd.opt2 + `</td></tr> + <tr><td><input type=""radio"" name=""opt"" class=""opt1"" value=""` + prd.opt3 + `"" />` +
                    prd.opt3 + `</td>+<td><input type=""radio"" name=""opt"" class=""opt1"" value=""` + prd.opt4 + `""/>` + prd.opt4 +
                    `</td></tr> + <tr><td colspan=""2""><button class=""btn btn-primary"" id=""pnext"" onclick=""save();Next();"">Next</button></td></tr>`);

                $(""#qid"").val(prd.slno);
            }
            else {
                alert(""you Have already Give The Exam"");
                window.location.href = '/Exam/Userwl/';

            }
            //});
        });
    }
    function Next() {
        $(""#table_quest tbody tr"").remove();
        $.getJSON(""/Exam/BindQuestion"", function (data) {
            if");
            WriteLiteral(@" (data == 3) {
                window.location.href = '/Exam/ViewResult/';
                //$(""#table_quest"").hide();
                //$(""#qid"").show();
               // $(""#submit"").show();

            }
            prd = JSON.parse(data);
            // $.each(data, function (i, prd) {
            $(""#table_quest tbody"").append(
                `<tr><td colspan=""2"">` + prd.question + `</td></tr> + <tr><td><input name=""opt"" type=""radio"" class=""opt1""` + ` value=` + prd.opt1 + ` />` + prd.opt1 +
                `</td>+<td><input type=""radio"" name=""opt"" class=""opt1""` + ` value=` + prd.opt2 + ` />` + prd.opt2 + `</td></tr> + <tr><td><input type=""radio"" name=""opt"" class=""opt1""` + ` value=""` + prd.opt3 + `"" />` +
                prd.opt3 + `</td>+<td><input type=""radio"" name=""opt"" class=""opt1""` + ` value=""` + prd.opt4 + `""/>` + prd.opt4 +
                `</td></tr> + <tr><td colspan=""2""><button class=""btn btn-primary"" id=""pnext"" onclick=""save();Next();"">Next</button></td></tr>`);


           ");
            WriteLiteral(@" $(""#qid"").val(prd.slno);
            //});
        });
    }
    $(document).ready(function () {
        $(""#submit"").click(function () {
            window.location.href = '/Exam/ViewResult/';
        });

    });
    function save() {
        var data = {
            optchoose: $("".opt1:checked"").val(),
            qid: $(""#qid"").val(),
        };
        $.post(""/Exam/InsertResult"", data, function (data) {
            if (data == 1) {
                alert(""Answer saved"");
            }
        });
    }
</script>


");
        }
        #pragma warning restore 1998
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.IModelExpressionProvider ModelExpressionProvider { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IUrlHelper Url { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IViewComponentHelper Component { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IJsonHelper Json { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<dynamic> Html { get; private set; }
    }
}
#pragma warning restore 1591