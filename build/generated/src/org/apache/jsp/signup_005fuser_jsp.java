package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class signup_005fuser_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js\" integrity=\"sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <script src=\"https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js\" integrity=\"sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js\" integrity=\"sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3\" crossorigin=\"anonymous\">\n");
      out.write("        <title>Sign up</title>\n");
      out.write("        \n");
      out.write("        <script>\n");
      out.write("            function valid() {\n");
      out.write("              \n");
      out.write("                var pass1 = document.getElementById(\"pass\").value;\n");
      out.write("                var pass2 = document.getElementById(\"rpass\").value;\n");
      out.write("                if (pass1 != pass2) {\n");
      out.write("                    alert(\"Passwords Do not match\");\n");
      out.write("                    return true;\n");
      out.write("                }else{return false; }\n");
      out.write("            }\n");
      out.write("        </script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <section>\n");
      out.write("        <div class=\"container mt-5 col-lg-5\" style=\"background-color: #f7f7f7;\">\n");
      out.write("            <div style=\"padding-top:20px;\">\n");
      out.write("                <h3 class=\"text-center\" >Sign up</h3>\n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("            <form class=\"mt-4\" method=\"post\" id=\"form\" onsubmit=\"valid()\">\n");
      out.write("                <div class=\"form-floating mb-3\">\n");
      out.write("                    <input type=\"text\" class=\"form-control\" id=\"floatingInput\" placeholder=\"name@example.com\" required>\n");
      out.write("                    <label for=\"floatingInput\">User name</label>\n");
      out.write("                  </div>\n");
      out.write("                <div class=\"form-floating mb-3\">\n");
      out.write("                    <input type=\"email\" class=\"form-control\" id=\"floatingInput\" placeholder=\"name@example.com\" required>\n");
      out.write("                    <label for=\"floatingInput\">Email</label>\n");
      out.write("                  </div>\n");
      out.write("                  <div class=\"form-floating mb-3\">\n");
      out.write("                    <input type=\"password\" class=\"form-control\" id=\"pass\" placeholder=\"Password\" required>\n");
      out.write("                    <label for=\"floatingPassword\">Password</label>\n");
      out.write("                  </div>\n");
      out.write("                <div class=\"form-floating mb-3\">\n");
      out.write("                    <input type=\"password\" class=\"form-control\" id=\"rpass\" placeholder=\"Password\" required>\n");
      out.write("                    <label for=\"floatingPassword\">Re-enter Password</label>\n");
      out.write("                  </div>\n");
      out.write("                 <div class=\"form-group text-center mb-3\">\n");
      out.write("                     <input  type=\"submit\" class=\"btn btn-primary\" name=\"btn\" value=\"Submit\">\n");
      out.write("                  </div>\n");
      out.write("                <div style=\"padding-bottom: 10px;\"></div>     \n");
      out.write("            </form>\n");
      out.write("        </div>\n");
      out.write("        </section>\n");
      out.write("        ");

//            String btn = request.getParameter("btn");
//            if(btn.equals("submit")){
//                out.println("btn");
//            }
        
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
