/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.50
 * Generated at: 2021-04-27 00:32:23 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.Timestamp;

public final class bookRegisterForm_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("java.sql.Timestamp");
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    final java.lang.String _jspx_method = request.getMethod();
    if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET POST or HEAD");
      return;
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=EUC-KR");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write(" <!-- ?????? -->\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"EUC-KR\">\r\n");
      out.write("<title>???????????? ??????</title>\r\n");
      out.write("</head>\r\n");
      out.write("<style>\r\n");
      out.write("\t\r\n");
      out.write("\ttr td:nth-child(1) {\r\n");
      out.write("\t  font-weight: bold;\r\n");
      out.write("\t  font-size:14px;\r\n");
      out.write("\t  text-align: center;\r\n");
      out.write("\t  background: orange;\r\n");
      out.write("\t  width: 100px;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\ttr td:nth-child(2) {\r\n");
      out.write("\t  font-size:12px;\r\n");
      out.write("\t  text-align: left;\r\n");
      out.write("\t}\r\n");
      out.write("\t#button { \r\n");
      out.write("\t  text-align:center; \r\n");
      out.write("\t  background-color: orange;\r\n");
      out.write("\t} \r\n");
      out.write("</style>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("<p style=\"text-align:center;font-weight:bold\">??? ??????</p>\r\n");
      out.write("<form name=\"writeform\" metdod=\"post\" action=\"bookReister.jsp\" enctype=\"multipart/form-data\">\r\n");
      out.write("<table width=\"500\" border=\"1\" cellspacing=\"0\" cellpading=\"0\" align=\"center\">\r\n");
      out.write("  <tr>\r\n");
      out.write("  \t<td>????????????</td>\r\n");
      out.write("  \t<td>\r\n");
      out.write("  \t\t<select name=\"book_kind\">\r\n");
      out.write("\t\t\t<option selected>---- ??? ??? ??? ??? -----</option>\r\n");
      out.write("\t\t\t<option value=\"100\">??????</option>\r\n");
      out.write("\t\t\t<option value=\"200\">??????</option>\r\n");
      out.write("\t\t\t<option value=\"300\">??????</option>\r\n");
      out.write("\t\t\t<option value=\"400\">??????/??????</option>\r\n");
      out.write("\t\t\t<option value=\"500\">??????</option>\r\n");
      out.write("  \t\t</select>\r\n");
      out.write("  \t</td>\r\n");
      out.write("  </tr>\r\n");
      out.write("  <tr>\r\n");
      out.write("  \t<td>???  ???</td>\r\n");
      out.write("  \t<td><input type=\"text\" name=\"book_title\" size=\"50\" required></td>\r\n");
      out.write("  </tr>\r\n");
      out.write("  <tr>\r\n");
      out.write("  \t<td>???  ???</td>\r\n");
      out.write("  \t<td><input type=\"text\" name=\"book_price\" size=\"10\" required>???</td>\r\n");
      out.write("  \t\r\n");
      out.write("  </tr>\r\n");
      out.write("  <tr>\r\n");
      out.write("  \t<td>???  ???</td>\r\n");
      out.write("  \t<td><input type=\"number\" name=\"book_count\" style=\"width:95px\" value=\"1\">???</td>\r\n");
      out.write("  </tr>\r\n");
      out.write("  <tr>\r\n");
      out.write("  \t<td>???  ???</td>\r\n");
      out.write("  \t<td><input type=\"text\" name=\"autdor\" size=\"10\"></td>\r\n");
      out.write("  </tr>\r\n");
      out.write("  <tr>\r\n");
      out.write("  \t<td>?????????</td>\r\n");
      out.write("  \t<td><input type=\"text\" name=\"publisher\" size=\"10\" ></td>\r\n");
      out.write("  </tr>\r\n");
      out.write("  <tr>\r\n");
      out.write("  \t<td>?????????</td>\r\n");
      out.write("  \t<td><select name=\"publishing_year\">\r\n");
      out.write("  \t\t\t<option selected>???</option>\r\n");
      out.write("\t");
	//???????????? ??????
		//timestamp => 2021-04-26 17:00:01
		Timestamp nowTime = new Timestamp(System.currentTimeMillis());
		int lastYear = Integer.parseInt(nowTime.toString().substring(0,4));
		for(int i = lastYear; i >= 2010; i--) {
	
      out.write("\r\n");
      out.write("\t\t\t<option value=\"");
      out.print( i );
      out.write('"');
      out.write('>');
      out.print( i );
      out.write("</option>\r\n");
      out.write("\t");
			
		}
	
      out.write("\r\n");
      out.write("  \t</select>\r\n");
      out.write("  \t<select name=\"publishing_montd\">\r\n");
      out.write("  \t\t\t<option selected>???</option>\r\n");
      out.write("  \t\t\t");

  				for(int i = 1; i <= 12; i++) {
  			
      out.write("\r\n");
      out.write("  \t\t\t\t\t<option value=\"");
      out.print( i );
      out.write('"');
      out.write('>');
      out.print( i );
      out.write("</option>\r\n");
      out.write("  \t\t\t");

  				}
  			 
      out.write("\r\n");
      out.write("  \t</select>\r\n");
      out.write("  \t<select name=\"publishing_day\">\r\n");
      out.write("  \t\t\t<option selected>???</option>\r\n");
      out.write("  \t\t\t");

  				for(int i = 1; i <= 31; i++) {
  			
      out.write("\r\n");
      out.write("  \t\t\t\t\t<option value=\"");
      out.print( i );
      out.write('"');
      out.write('>');
      out.print( i );
      out.write("</option>\r\n");
      out.write("  \t\t\t");

  				}
  			 
      out.write("\r\n");
      out.write("  \t</select>\r\n");
      out.write("  \t</td>\r\n");
      out.write("  </tr>\r\n");
      out.write("  <tr>\r\n");
      out.write("  \t<td>?????????</td>\r\n");
      out.write("  \t<td><input type=\"file\" name=\"book_image\"></td>\r\n");
      out.write("  </tr>\r\n");
      out.write("  <tr>\r\n");
      out.write("  \t<td>??????</td>\r\n");
      out.write("  \t<td><textarea rows=\"13\" cols=\"40\" name=\"book_content\"></textarea></td>\r\n");
      out.write("  </tr>\r\n");
      out.write("  <tr>\r\n");
      out.write("  \t<td>?????????</td>\r\n");
      out.write("  \t<td><input type=\"number\" name=\"discount_rate\" style=\"width:90px\">%</td>\r\n");
      out.write("  </tr>\r\n");
      out.write("  <tr>\r\n");
      out.write("  \t<td id=\"button\" colspan=\"2\">\r\n");
      out.write("  \t\t<input type=\"submit\" value=\"?????????\">&nbsp;&nbsp;&nbsp;\r\n");
      out.write("  \t\t<input type=\"reset\"  value=\"????????????\">\r\n");
      out.write("  \t</td>\r\n");
      out.write("  </tr>\r\n");
      out.write("</table>\r\n");
      out.write("</form>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
