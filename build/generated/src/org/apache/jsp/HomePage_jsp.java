package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class HomePage_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>Detecting Stress in Social Media</title>\n");
      out.write("          <link href=\"css/style1.css\" type=\"text/css\" rel=\"stylesheet\" />\n");
      out.write("         <link href=\"https://fonts.googleapis.com/css?family=Mali\" rel=\"stylesheet\">\n");
      out.write("          <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\">\n");
      out.write("        <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js\"></script>\n");
      out.write("           <style>\n");
      out.write("           body{\n");
      out.write("                background-image: url(images/bg1.jpg);\n");
      out.write("                background-repeat: no-repeat;\n");
      out.write("                background-size:cover;\n");
      out.write("                 font-family:'Mali', cursive;\n");
      out.write("                 color: black;\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("     <center>\n");
      out.write("        \n");
      out.write("           <h1><center>DETECTING STRESS IN ONLINE SOCIAL NETWORKS</center></h1>\n");
      out.write("           <div style=\"margin-top: 80px;text-align: left;\">\n");
      out.write("               <a href=\"HomePage.jsp\" style=\"margin-left:200px;margin-top: 50px;border-radius: 5pt 5pt;width: 300px; text-align: center;font-size: 25px;color: #cc0033;\">HOME</a>\n");
      out.write("             \n");
      out.write("             <a href=\"AdminLogin.jsp\" style=\"margin-left:200px;border-radius: 5pt 5pt;width: 300px; text-align: center;font-size: 25px;color:  #cc0033;\">ADMIN LOGIN</a>\n");
      out.write("      \n");
      out.write("             <a href=\"UserLogin.jsp\" style=\"margin-left: 200px;border-radius: 5pt 5pt;width: 300px; text-align: center;font-size: 25px;color:  #cc0033;\">ONLINE SOCIAL NETWORK USERS</a>\n");
      out.write("             \n");
      out.write("         </div>\n");
      out.write("           <h3 style=\"margin-top:50px;\"><center>ABSTRACT!!!</center></h3>\n");
      out.write("           <p style=\"font-size: 20px;margin-left: 100px;margin-right: 100px;text-align: justify;font-family:'Mali', cursive; \">\n");
      out.write("               Psychological stress is threatening people’s health. It is non-trivial to detect stress timely for proactive care. With the\n");
      out.write("popularity of social media, people are used to sharing their daily activities and interacting with friends on social media platforms,\n");
      out.write("making it feasible to leverage online social network data for stress detection. In this paper, we find that users stress state is closely\n");
      out.write("related to that of his/her friends in social media, and we employ a large-scale dataset from real-world social platforms to systematically\n");
      out.write("study the correlation of users’ stress states and social interactions. We first define a set of stress-related textual, visual, and social\n");
      out.write("attributes from various aspects, and then propose a novel hybrid model - a factor graph model combined with Convolutional Neural\n");
      out.write("Network to leverage tweet content and social interaction information for stress detection. Experimental results show that the proposed\n");
      out.write("model can improve the detection performance by 6-9% in F1-score. By further analyzing the social interaction data, we also discover\n");
      out.write("several intriguing phenomena, i.e. the number of social structures of sparse connections (i.e. with no delta connections) of stressed\n");
      out.write("users is around 14% higher than that of non-stressed users, indicating that the social structure of stressed users’ friends tend to be\n");
      out.write("less connected and less complicated than that of non-stressed users.\n");
      out.write("           </p>  \n");
      out.write("        </center>\n");
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
