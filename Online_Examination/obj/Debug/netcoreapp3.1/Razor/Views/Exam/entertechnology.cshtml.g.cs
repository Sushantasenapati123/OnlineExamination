#pragma checksum "D:\Big Project\Prangya Exam_online\Online_Examination_chikun\Online_Examination\Views\Exam\entertechnology.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "8471293cd1e83220fce491fed14976eb701f70c8"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_Exam_entertechnology), @"mvc.1.0.view", @"/Views/Exam/entertechnology.cshtml")]
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
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"8471293cd1e83220fce491fed14976eb701f70c8", @"/Views/Exam/entertechnology.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"d9e0fb4419b1f1a92ab5f23750de0b72ed04ed75", @"/Views/_ViewImports.cshtml")]
    public class Views_Exam_entertechnology : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<dynamic>
    {
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
            WriteLiteral("\r\n");
#nullable restore
#line 2 "D:\Big Project\Prangya Exam_online\Online_Examination_chikun\Online_Examination\Views\Exam\entertechnology.cshtml"
  
    ViewData["Title"] = "entertechnology";
    Layout = "admin";

#line default
#line hidden
#nullable disable
            WriteLiteral(@"
<h1>entertechnology</h1>

<table id=""tbl"" class=""table table-bordered"">
    <tr>
        <td align=""justify"">
            <label for=""techid"" id=""techid""></label>

        </td>
        <td>
            <table class=""table  table-bordered table-striped"">
                <tr>
                   
                    <th colspan=""2"" align=""justify"">
                        Enter Technology
                    </th>
                </tr>
                <tr>
                    <th align=""right"">Enter Technology</th>
                    <td>
                        <input id=""txtUserID"" type=""text"" class=""form-control"" placeholder=""Enter User ID"" onkeypress=""txtChkValidation('txtUserID')"" />
                    </td>

                </tr>



                <tr>
                    <td colspan=""2"" align=""right"">
                        <input type=""button"" id=""btn_reg"" value=""saveupdate"" />
                    </td>
                </tr>
            </table>

        </td>
   ");
            WriteLiteral(@" </tr>
</table>

<table class=""table"" id=""table_user"">
    <thead>
        <tr>
            <th>
               ID
            </th>
            <th>
              Tech Name
            </th>
           
            <th>
                Action
            </th>
        </tr>
    </thead>
    <tbody>
    </tbody>
</table>


<script type=""text/javascript"">
    $(window).on(""load"", function () {

        gettechnology();


    });
    function gettechnology() {
        $(""#table_user tbody tr"").remove();


        $.getJSON(""/Exam/GetAllTech"", function (data) {

            data = JSON.parse(data);
            $.each(data, function (i, usr) {
                $(""#table_user tbody"").append(
                    `<tr><td>` + usr.techid + `</td><td>` + usr.techname + `</td><td><button class=""btn btn-primary"" onclick=""Edit(` + usr.techid + `)"">Edit</button><button class=""btn btn-primary"" onclick=""Delete(` + usr.techid + `)"">Delete</button></td></tr>`
                );
            });
   ");
            WriteLiteral(@"     });
    }
    function Delete(techid) {
        $.post(""/Exam/Delete"", { vid: techid }, function (data) {      //passing the id of the selected user to the action method for deletion
            if (data != null) {
                location.reload();///to refresh page
                alert(""product Deleted"");
            }
            else {
                alert(""Error"");
            }
        });
    }

    function Edit(techid) {
        alert(""Edit"");

        $.get(""/Exam/bindtechbyid"", { pid: techid }, function (data) {

            prod = JSON.parse(data);
            

            $(""#txtUserID"").val(prod.techname),
            $(""#techid"").val(prod.techid);


           
          
           
           
        });
    }


  
    $(document).ready(function () {
       

        $(""#btn_reg"").click(function () {
          
            alert(""click"");
            var login = {
                techname: $(""#txtUserID"").val(),
                techid: $(""#techid"").val(),
            WriteLiteral(@"
            };

            $.getJSON(""/Exam/entertechnologyy"", login, function (data) {

                data = JSON.parse(data);
                if (data == 1) {
                    alert(""insert successfull"");
                    gettechnology();
                    Reset();
                } else {
                    alert(""failed"");
                }
            });

        });
    });
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