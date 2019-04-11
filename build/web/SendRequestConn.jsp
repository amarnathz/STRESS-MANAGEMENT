<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.time.LocalTime"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%   
try
{
   Class.forName("com.mysql.jdbc.Driver");
   Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/stressdetection","root","root");
   Statement st=conn.createStatement();
   Statement at=conn.createStatement();
   ResultSet y,m;
   String fromname=session.getAttribute("uname").toString();
    String fromid=session.getAttribute("uid").toString();
  //String search1=request.getParameter("search");
  String id=request.getParameter("id");
 String decision="pending";
  DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd");
        DateFormat dateFormat = new SimpleDateFormat("hh.mm aa");
    	String time = dateFormat.format(new Date()).toString();
    	
         LocalDate localDate = LocalDate.now();
        String date=dtf.format(localDate);
        
       
    
       String query="select * from data where id='"+id+"' "  ;
       y=at.executeQuery(query);
       
  while(y.next())
       {     
           String toname=y.getString("uname");
           String toid=y.getString("id");
           
           String q1="select * from request where fromid='"+fromid+"' and  toid='"+toid+"' "  ;
             m=at.executeQuery(q1);
             if(m.next())
             {
                
              response.sendRedirect("SearchFriends.jsp");
             }
             else
             {
                 st.executeUpdate("insert into request(fromid,fromname,toid,toname,decision,date,time) values('"+fromid+"','"+fromname+"','"+toid+"','"+toname+"','"+decision+"','"+date+"','"+time+"')");
                 response.sendRedirect("SearchFriends.jsp");
             }
           
       }
}
catch(Exception ex)
{
    out.println("Error"+ex);
}


%>
