<%-- 
    Document   : ViewUSers
    Created on : Oct 23, 2018, 10:56:28 AM
    Author     : Priya
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>

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

                
                <a href="HomePage.jsp" >
                    LOGOUT
                </a>
               <br><br>
           </div>
               
         <div class="col-sm-6" style="height: auto;margin-top:10px;color:black;font-size: 15px;">
         <h3 style="text-align: center;font-family: 'Kaushan Script', cursive;font-size: 15px;">
                    SHOWING ALL USERS
                 </h3>
                 
                 <br>
                 <br>
               
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
                             MAIL-ID
                         </th>
                         
                         <th>
                             PHONE NUMBER
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
   

       String query="select * from data ";
       y=at.executeQuery(query);
       
  while(y.next())
       {
//          String a=y.getString("fname");
//          String b=y.getString("key1");
//          String c=y.getString("key2");
//          String d=y.getString("key3");
//          String e=y.getString("deckey");
           

          %>
      
                     
          <tr style="font-size: 16px;">
                           <td style="color: #00cc33;">
                             <%=y.getInt("id")%>
                         </td>
                            
                         <td style="color: #00cc33;">
                             <%=y.getString("uname")%>
                         </td>
                          
                       
                         
                          <td style="color: #00cc33;">
                              <%=y.getString("mail")%>
                         </td>
                         
                         <td style="color: #00cc33;">
                              <%=y.getString("phno")%>
                         </td>
                         
                          <td style="color: #00cc33;">
                              
                              <a href="Viewdetails.jsp?id=<%=y.getInt("id")%>" style="text-decoration: none;color: #ff0000;">View Details</a>
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
