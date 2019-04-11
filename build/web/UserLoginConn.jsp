



<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%-- 
    Document   : validatecaptcha
    Created on : Oct 9, 2015, 10:54:33 AM
    Author     : Aravind Sankaran Nair
--%>


<%
    try
{
   Class.forName("com.mysql.jdbc.Driver");
   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/stressdetection","root","root");
         //   Connection con=DriverManager.getConnection("jdbc:mysql://sql12.freemysqlhosting.net:3306/sql12259565","sql12259565","Riyasen$234");
            Statement st=con.createStatement();
            //out.println("Connected");
   ResultSet y,j;
   out.println("Connected");
    
    
            //String uname1 = "Server";
           // String pass1 = "Admin";
          String uname=request.getParameter("uname");
          String pass=request.getParameter("pass");
            
            y=st.executeQuery("select * from data where uname='"+uname+"' and pass='"+pass+"' ");
       if(y.next())
       {
           int id=y.getInt("id");
            response.sendRedirect("UserHome.jsp");
            session.setAttribute("uname", uname);
             session.setAttribute("uid", id);
      
        }
        else
        {
        response.sendRedirect("index.html");
        }
     }
catch(Exception ex)
{
    out.println("Hai");
    System.out.printf("Hai",ex.getMessage());
}
    
    %>
