<%-- 
    Document   : ViewComments
    Created on : Oct 25, 2018, 2:59:01 PM
    Author     : Priya
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Post Page</title>
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
            td
            {
                padding: 8px;
            }
            
        </style>
    </head>
    <body>
         <h1><center>DETECTING STRESS IN ONLINE SOCIAL NETWORKS</center></h1>
             <div  class="col-sm-3" style="margin-top: 50px;font-size: 20px;">
                <a href="AdminHome.jsp"> 
                     HOME PAGE
              </a>
               <br><br>
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
           <div class="col-sm-3" >
           </div>
                 <div class="col-sm-7" >
                      <form  method="get">
                          <p style="text-align: center;font-size: 25px;margin-top: 50px;">
                         View Your Posts
                     </p>
                 <table  class="table table-bordered table-responsive" >
                      
                     
                   
                
                     <%
                         try
{
   Class.forName("com.mysql.jdbc.Driver");
   Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/stressdetection","root","root");
   Statement st=conn.createStatement();
   Statement at=conn.createStatement();
   ResultSet y,j;
 //String x1=session.getAttribute("uid").toString();
 //int x11=Integer.parseInt(x1);
  // String x=session.getAttribute("uname").toString();
   String mood1="sad";
   String mood2="angry";
   int h[];
  // String hname[];
   
     
  
  
  
// out.print(toid);

   
   
    String query1="select * from post where mood='"+mood1+"' or mood='"+mood2+"' ";
   //SELECT * FROM post INNER JOIN request ON Orders.CustomerID = Customers.CustomerID;
    j=at.executeQuery(query1);
      // out.print("hai");
      while(j.next())

{ 
    
    //out.print("hai");
    String a=j.getString("name");
    String b=j.getString("posts");
     String c=j.getString("date");
     String d=j.getString("time");
      String emotion=j.getString("mood");
   //out.print(emotion);
   // out.print(b);
            %>
      
        
          <tr>
                         
              <td style="color: red;">
                 
                  <%// out.println(emotion);
                                   if(emotion.equalsIgnoreCase("happy"))
                                   
                                   {
                                       out.println(emotion);
                                       %>
                                       <br> <br>
                                       <img src="images/happy.jpg" alt="not-found" width="50" height="50" style="border-radius: 25pt 25pt;align-content: center;">
                                        <br> <br>
                               <%
                                   
                                       
                                   }
                                   
                                   else   if(emotion.equalsIgnoreCase("sad"))
                                   
                                   {
                                        out.println(emotion);
                                       %>
                                       <br> <br>
                                       <img src="images/sad.jpg" alt="not-found" width="50" height="50" style="border-radius: 25pt 25pt;align-content: center;">
                                        <br> <br>
                               <%
                                   }
                                     else    if(emotion.equalsIgnoreCase("angry"))
                                   
                                   {
                                        out.println(emotion);
                                       %>
                                       <br> <br>
                                       <img src="images/angry.jpg" alt="not-found" width="50" height="50" style="border-radius: 25pt 25pt;align-content: center;">
                                        <br> <br>
                               <%
                                   }
                                      else  if(emotion.equalsIgnoreCase("surprise"))
                                   
                                   {
                                        out.println(emotion);
                                       %>
                                       <br> <br>
                                       <img src="images/surprise.jpg" alt="not-found" width="50" height="50" style="border-radius: 25pt 25pt;align-content: center;">
                                        <br> <br>
                               <%
                                   }
                                   %>
              </td> 
                       <td>
                            <p style="color:purple;margin-left: 100px;margin-top: 10px;font-size: 20px;">
                              <%=c%> &nbsp; :  <%=a%>  posted at <%=d%>
                            </p>
                            <p style="color:#ff3366;margin-left: 300px;margin-top: 10px;font-size: 18px;">
                              
                       
                          <%=b%>
                         </p>
                         </td>        
      </tr>
                    
<%}
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
