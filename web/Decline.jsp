
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%   
try
{
   Class.forName("com.mysql.jdbc.Driver");
   Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/stressdetection","root","root");
   Statement st=conn.createStatement();
   Statement at=conn.createStatement();
   ResultSet y,k;
  //PreparedStatement ps;
   
    String fromid=request.getParameter("fromid");
    int fromid1=Integer.parseInt(fromid);
    out.println("fromid"+fromid1);
    
    String toid=session.getAttribute("uid").toString();
    int toid1=Integer.parseInt(toid);
    out.println("toid"+toid1);
    
   //String toname=session.getAttribute("toname").toString();
   
 String decision="rejected";


   
st.executeUpdate("update request set decision='"+decision+"' where fromid='"+fromid+"' and toid='"+toid+"'");
 response.sendRedirect("FriendRequest.jsp");

 }  
catch(Exception ex)
{
    System.out.printf("Hai",ex.getMessage());
}
%>   