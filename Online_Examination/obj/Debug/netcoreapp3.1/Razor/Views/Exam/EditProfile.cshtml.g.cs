#pragma checksum "D:\Big Project\Prangya Exam_online\Online_Examination_chikun\Online_Examination\Views\Exam\EditProfile.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "1d8b8182ebb14b1001185e46fc6df9a0ec90d9b1"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_Exam_EditProfile), @"mvc.1.0.view", @"/Views/Exam/EditProfile.cshtml")]
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
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"1d8b8182ebb14b1001185e46fc6df9a0ec90d9b1", @"/Views/Exam/EditProfile.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"d9e0fb4419b1f1a92ab5f23750de0b72ed04ed75", @"/Views/_ViewImports.cshtml")]
    public class Views_Exam_EditProfile : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<dynamic>
    {
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
            WriteLiteral("\r\n");
#nullable restore
#line 2 "D:\Big Project\Prangya Exam_online\Online_Examination_chikun\Online_Examination\Views\Exam\EditProfile.cshtml"
  
    ViewData["Title"] = "EditProfile";
    Layout = "user";

#line default
#line hidden
#nullable disable
            WriteLiteral(@"
<h1>EditProfile</h1>



<script type=""text/javascript"">
    $(document).ready(function () {
        $(""#btnEdit"").click(function () {
            if (txtChkValidation('txtName') == true && txtChkValidation('txtNum') == true && txtChkValidation('txtMail') == true && Phonevalidate('txtNum', 'lblErrorPhone') == true && emailValidate('txtMail', 'lblError') == true) {
                var data = {
                    username: $(""#txtName"").val(),
                    userphone: $(""#txtNum"").val(),
                    useremail: $(""#txtMail"").val(),
                };
                $.post(""/Exam/UserUpdate"", data, function (data) {
                    if (data == 1) {
                        alert(""Updated"");
                        window.location.href = '/Exam/Userwl/';
                    } else {
                        alert(""Please check data."");
                    }
                });
            } else {
                txtChkValidation('txtName');
                txtChkValidatio");
            WriteLiteral(@"n('txtNum');
                txtChkValidation('txtMail');
            }
        });


    });

    $(""#btnReset"").click(function () {
        $(""#txtName"").val("""");
        $(""#txtNum"").val("""");
        $(""#txtMail"").val("""");
    });</script>

<div>
    <table class=""table table-bordered table-striped"">
        <tr>
            <th colspan=""2"" align=""justify"">
                <h3>Edit Your Profile</h3>
            </th>
        </tr>
        <tr>
            <th>
                User Name
            </th>
            <td>

                <input type=""text"" id=""txtName""");
            BeginWriteAttribute("value", " value=\"", 1699, "\"", 1724, 1);
#nullable restore
#line 57 "D:\Big Project\Prangya Exam_online\Online_Examination_chikun\Online_Examination\Views\Exam\EditProfile.cshtml"
WriteAttributeValue("", 1707, ViewBag.userName, 1707, 17, false);

#line default
#line hidden
#nullable disable
            EndWriteAttribute();
            WriteLiteral(" onkeypress=\"txtChkValidation(\'txtName\')\" />\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <th>\r\n                Phone No.\r\n            </th>\r\n            <td>\r\n                <input type=\"number\" id=\"txtNum\"");
            BeginWriteAttribute("value", " value=\"", 1949, "\"", 1971, 1);
#nullable restore
#line 65 "D:\Big Project\Prangya Exam_online\Online_Examination_chikun\Online_Examination\Views\Exam\EditProfile.cshtml"
WriteAttributeValue("", 1957, ViewBag.Phone, 1957, 14, false);

#line default
#line hidden
#nullable disable
            EndWriteAttribute();
            WriteLiteral(@" onkeypress=""txtChkValidation('txtNum')"" onchange=""Phonevalidate('txtNum','lblErrorPhone')"" /> <span id=""lblErrorPhone"" style=""color:red""></span>
            </td>
        </tr>
        <tr>
            <th>
                Email
            </th>
            <td>
                <input type=""email"" id=""txtMail""");
            BeginWriteAttribute("value", " value=\"", 2293, "\"", 2315, 1);
#nullable restore
#line 73 "D:\Big Project\Prangya Exam_online\Online_Examination_chikun\Online_Examination\Views\Exam\EditProfile.cshtml"
WriteAttributeValue("", 2301, ViewBag.email, 2301, 14, false);

#line default
#line hidden
#nullable disable
            EndWriteAttribute();
            WriteLiteral(@" onkeypress=""txtChkValidation('txtMail')"" onchange=""emailValidate('txtMail','lblError')"" />  <span id=""lblError"" style=""color:red""></span>
            </td>
        </tr>
        <tr>
            <td></td>
            <td>
                <input type=""button"" id=""btnEdit"" value=""Submit"" />
                <input type=""button"" id=""btnReset"" value=""Reset"" />
            </td>
        </tr>
    </table>
</div>

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
