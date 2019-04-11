<%-- 
    Document   : FriendRequest
    Created on : Oct 25, 2018, 12:04:56 PM
    Author     : Priya
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Friend Requests</title>
          <link href="css/style1.css" type="text/css" rel="stylesheet" />
         <link href="https://fonts.googleapis.com/css?family=Mali" rel="stylesheet">
          <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
           <style>
           body{
                background-image: url(images/bg1.jpg);
                background-repeat: no-repeat;
                background-size:cover;
                 font-family:'Mali', cursive;
                 color: black;
            }
            
        </style>
    </head>
    <body>
         <h1><center>DETECTING STRESS IN ONLINE SOCIAL NETWORKS</center></h1>
           
           <h3 style="margin-top:50px;"><center>WELCOME <%String f=session.getAttribute("uname").toString();out.print(f);%>!!!</center></h3>
            <div style="margin-top: 50px;">
            <a  href="UserHome.jsp" style=" margin-left:50px;margin-top: 50px;border-radius: 5pt 5pt;width: 300px; text-align: center;font-size: 25px;color: green;">
               Home
           </a>
           <a  href="Comments.jsp" style=" margin-left:50px;margin-top: 50px;border-radius: 5pt 5pt;width: 300px; text-align: center;font-size: 25px;color: green;">
               Share Your Post
           </a>
           <a  href="ViewComments.jsp" style=" margin-left:50px;margin-top: 50px;border-radius: 5pt 5pt;width: 300px; text-align: center;font-size: 25px;color: green;">
               View Posts
           </a>
           <a  href="SearchFriends.jsp" style=" margin-left:50px;margin-top: 50px;border-radius: 5pt 5pt;width: 300px; text-align: center;font-size: 25px;color: green;">
               Search Friends
           </a>
           <a  href="FriendRequest.jsp" style=" margin-left:50px;margin-top: 50px;border-radius: 5pt 5pt;width: 300px; text-align: center;font-size: 25px;color: green;">
               View Friend Requests
           </a>
                <a  href="checkConn.jsp" style=" margin-left:200px;margin-top: 50px;text-decoration: none;border-radius: 5pt 5pt;width: 300px; text-align: center;font-size: 25px;color: green;">
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
               Check your Stress Level
           </a>
               <a  href="HomePage.jsp" style=" margin-left:50px;margin-top: 50px;border-radius: 5pt 5pt;width: 300px; text-align: center;font-size: 25px;color: green;">
               Logout
           </a>
            </div>
           <div class="col-sm-2" >
                
            </div>
            <div  class="col-sm-8" style="margin-left: 200px;">
           
                  
                 <form  method="get">
                     <table   class="table-responsive" >
                     
                    
                     
                
                     <%
                         try
{
   Class.forName("com.mysql.jdbc.Driver");
   Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/stressdetection","root","root");
   Statement st=conn.createStatement();
   Statement at=conn.createStatement();
   ResultSet y,j;
   
String fromid=session.getAttribute("uid").toString();
String fromname=session.getAttribute("uname").toString();
                   // out.print(i);
                   
       String query="select * from request where  toid='"+fromid+"' and toname='"+fromname+"'";
       y=at.executeQuery(query);
       
  while(y.next())
       {

                     %>
      
                     
          <tr style="font-size: 20px;">
                          
                            
                        
          <p style="color: #660066;;font-size: 20px;">
                              <br><br>
                              <%=y.getString("date") %> 
       
                              <span style="color: crimson;"> &nbsp;&nbsp;&nbsp;(<%=y.getString("time")%> ):</span></p> <p style="color:brown;font-size: 20px;"><%=y.getString("fromname")%> send you Friend Request
                              
          </p>
                     </tr>
                     <tr style="">
                              <br>
                              <a href="Accept.jsp?fromid=<%=y.getInt("fromid")%>" style="text-decoration: none;color: green;text-align: center;font-size: 20px;margin-left: 100px;">
                              Accept
                              </a>
                     </tr>
                     <tr>
                              <a href="Decline.jsp?fromid=<%=y.getInt("fromid")%>" style="text-decoration: none;color:red;font-size: 20px;">
                                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  Decline
                                 
                              </a>
                     
                     </tr>
                      <%  }
          
   }
catch(Exception ex)
{
    System.out.printf("Hai",ex.getMessage());
}
                         
                         %>
                     
                 </table>
                     </form>
                 </div>  
            
            <div class="col-sm-2" >
                
            </div>
    </body>
</html>
