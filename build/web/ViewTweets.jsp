<%-- 
    Document   : ViewTweets
    Created on : Oct 27, 2018, 3:33:20 PM
    Author     : Priya
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Detecting Stress in Social Media</title>
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
           
           <h3 style="margin-top:50px;"><center>WELCOME ADMIN!!!</center></h3>
                 
           
            <div  class="col-sm-4" style="margin-top: 50px;font-size: 20px;">
              <a href="AdminHome.jsp"> 
                     HOME PAGE
              </a>
                <br>
                <br>
                <a href="ViewUSers.jsp"> 
                    VIEW USERS
              </a>
               <br><br>
               <a href="ViewTweets.jsp" >
                    VIEW ALL TWEETS  
              </a>
               <br><br>
                  <a href="ReqRes.jsp" > 
                    REQUESTS AND RESPONSES
                  </a>
               
               <br><br>
                 <a href="ViewComments_1.jsp"> 
                     VIEW POSITIVE  TWEETS
                </a>
               <br><br>
               <a href="ViewComments_2.jsp">
                     VIEW NEGATIVE  TWEETS
                                </a>
               <br><br>

                <a href="HomePage.jsp">
                    LOGOUT
                </a>
               <br><br>
           </div>
           
           
            <div class="col-sm-8" >
                      <form  method="get">
                      <p style="text-align: center;font-size: 25px;">
                         VIEW YOUR POSTS
                     </p>
                 <table  class="table-responsive" >
                      
                     
                   
                
                     <%
                         try
{
   Class.forName("com.mysql.jdbc.Driver");
   Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/stressdetection","root","root");
   Statement st=conn.createStatement();
   Statement at=conn.createStatement();
   ResultSet y,j;
 
  
    String query1="select * from post ";
    j=at.executeQuery(query1);
      // out.print("hai");
      while(j.next())

{ 
    
    //out.print("hai");
    String a=j.getString("name");
    String b=j.getString("posts");
     String c=j.getString("date");
     String d=j.getString("time");
   // out.print(a);
   // out.print(b);
            %>
      
        
          <tr>
                         
                        
                       <td >
                            <p style="color:purple;margin-left: 200px;margin-top: 10px;font-size: 20px;">
                                  <%=c%> &nbsp; :  <%=a%>  posted at <%=d%>
                            </p>
                            <p style="color:#009999;margin-left: 300px;margin-top: 10px;font-size: 18px;">
                              
                       
                          <%=b%>
                         </p>
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
    </body>
</html>
