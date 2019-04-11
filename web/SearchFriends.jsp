<%-- 
    Document   : SearchFriends
    Created on : Oct 25, 2018, 12:04:34 PM
    Author     : Priya
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search Friends</title>
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
            <a  href="UserHome.jsp" style=" margin-left:80px;margin-top: 50px;border-radius: 5pt 5pt;width: 300px; text-align: center;font-size: 25px;color: green;">
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
           <div class="col-sm-8" >
                
                 <h3 style="font-family: 'Kaushan Script', cursive;margin-top:50px;margin-left: 400px;">
                    SEARCH
                 </h3>
                 <br>
                
                 <div align="center">     
                     
                      <form  action="SearchFriends.jsp?" name="form1" onsubmit="return SignupValidate()" method="get" >
                   
                                <table align="center" style="margin-top: 50px;">
                                  <input type="text" name="search" style="width:55%;height:40px;"><br><br>
                                  <input type="submit" name="Search" value="Search Friends" style="border-radius: 5pt 5pt;margin-top: 10px;background-color: black;color: white; width: 150px; ">
                                </table>
                      </form>
                
             
                 <form  method="get">
                 <table  class="table table-bordered" >
                     
                     <tr>
                          <th>
                            USER ID
                         </th>
                         <th>
                            USER NAME
                         </th>
                          
                         
                          <th>
                             ACTION
                         </th>
                     </tr>
                     
                
                     <%
                         try
{
   Class.forName("com.mysql.jdbc.Driver");
   Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/stressdetection","root","root");
   Statement st=conn.createStatement();
   Statement at=conn.createStatement();
   ResultSet y,j;
   
String i=request.getParameter("search");
                   // out.print(i);
                    String full=i+"%";
       String query="select * from data where uname LIKE '"+full+"'";
       y=at.executeQuery(query);
       
  while(y.next())
       {
//          String a=y.getString("fname");
//          String b=y.getString("key1");
//          String c=y.getString("key2");
//          String d=y.getString("key3");
//          String e=y.getString("deckey");
    
                     %>
      
                     
          <tr style="font-size: 20px;">
                           <td style="color: #00cc33;">
                             <%=y.getInt("id")%>
                         </td>
                            
                         <td style="color: #00cc33;">
                             <%=y.getString("uname")%>
                         </td>
                        
                          <td style="color: #00cc33;">
                              
                              <a href="SendRequestConn.jsp?id=<%=y.getInt("id")%>" style="text-decoration: none;color: #ff0000;">Send Requests</a>
                         </td>
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
            </div>
            <div class="col-sm-2" >
                
            </div>
    </body>
</html>
