#pragma checksum "D:\Big Project\Prangya Exam_online\Online_Examination_chikun\Online_Examination\Views\Exam\Userwl.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "d8663a5a8c16b0e5ef29deee0f84eefba19caff0"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_Exam_Userwl), @"mvc.1.0.view", @"/Views/Exam/Userwl.cshtml")]
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
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"d8663a5a8c16b0e5ef29deee0f84eefba19caff0", @"/Views/Exam/Userwl.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"d9e0fb4419b1f1a92ab5f23750de0b72ed04ed75", @"/Views/_ViewImports.cshtml")]
    public class Views_Exam_Userwl : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<dynamic>
    {
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
            WriteLiteral("\r\n");
#nullable restore
#line 2 "D:\Big Project\Prangya Exam_online\Online_Examination_chikun\Online_Examination\Views\Exam\Userwl.cshtml"
  
    ViewData["Title"] = "Userwl";
    Layout = "user";

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n<h1>Welcome User</h1>\r\n<div>\r\n    <table class=\"table  table-striped\">\r\n        <tr>\r\n            <th colspan=\"2\" align=\"justify\">\r\n                <h3>WelCome ");
#nullable restore
#line 12 "D:\Big Project\Prangya Exam_online\Online_Examination_chikun\Online_Examination\Views\Exam\Userwl.cshtml"
                       Write(ViewBag.userName);

#line default
#line hidden
#nullable disable
            WriteLiteral(" !!!</h3>\r\n            </th>\r\n        </tr>\r\n    </table>\r\n\r\n    <table class=\"table  table-striped\">\r\n        <tr>\r\n            <th colspan=\"2\" align=\"justify\">\r\n                Time Duration:-");
#nullable restore
#line 20 "D:\Big Project\Prangya Exam_online\Online_Examination_chikun\Online_Examination\Views\Exam\Userwl.cshtml"
                          Write(ViewBag.Time);

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n            </th>\r\n        </tr>\r\n        <tr>\r\n            <th colspan=\"2\" align=\"justify\">\r\n                No of Questions:-");
#nullable restore
#line 25 "D:\Big Project\Prangya Exam_online\Online_Examination_chikun\Online_Examination\Views\Exam\Userwl.cshtml"
                            Write(ViewBag.NoOFQuestion);

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n            </th>\r\n        </tr>\r\n        <tr>\r\n            <th colspan=\"2\" align=\"justify\">\r\n                Rules:-");
#nullable restore
#line 30 "D:\Big Project\Prangya Exam_online\Online_Examination_chikun\Online_Examination\Views\Exam\Userwl.cshtml"
                  Write(ViewBag.Rules);

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n            </th>\r\n        </tr>\r\n    </table>\r\n</div>\r\n\r\n");
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
