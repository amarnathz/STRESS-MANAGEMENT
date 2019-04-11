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
            <div style="margin-top: 50px;">
           <h3 style="margin-top:50px;"><center>WELCOME <%String f=session.getAttribute("uname").toString();out.print(f);%>!!!</center></h3>
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
 String x1=session.getAttribute("uid").toString();
 int x11=Integer.parseInt(x1);
   String x=session.getAttribute("uname").toString();
   String decision="accepted";
   int h[];
  // String hname[];
   
     
   String query="select * from request where decision='"+decision+"' and fromname='"+x+"' ";
      y=at.executeQuery(query);
 while(y.next())

{ 
 
  
   int toid=y.getInt("toid"); 
// out.print(toid);

   
    String toname=y.getString("toname");
    String query1="select * from post where id='"+toid+"' or id='"+x11+"' ";
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
                      <%  }
}
          

 String query12="select * from request where decision='"+decision+"' and toname='"+x+"' ";
      y=at.executeQuery(query12);
 while(y.next())

{ 
 
  
   int fromid=y.getInt("fromid"); 
// out.print(toid);

   
    String toname=y.getString("toname");
    String query11="select * from post where id='"+fromid+"' or id='"+x11+"' ";
    j=at.executeQuery(query11);
      // out.print("hai");
      while(j.next())

{ 
    
    //out.print("hai");
     String a=j.getString("name");
     String b=j.getString("posts");
     String c=j.getString("date");
     String d=j.getString("time");
String emotion=j.getString("mood");
   // out.print(a);
   // out.print(b);
            %>
          <tr>
              <td style="color: red;">
                 
                  <% 
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
                                   
                                   {out.println(emotion);
                                       %>
                                       <br> <br>
                                       <img src="images/sad.jpg" alt="not-found" width="50" height="50" style="border-radius: 25pt 25pt;align-content: center;">
                                        <br> <br>
                               <%
                                   }
                                     else    if(emotion.equalsIgnoreCase("angry"))
                                   
                                   {out.println(emotion);
                                       %>
                                       <br> <br>
                                       <img src="images/angry.jpg" alt="not-found" width="50" height="50" style="border-radius: 25pt 25pt;align-content: center;">
                                        <br> <br>
                               <%
                                   }
                                      else  if(emotion.equalsIgnoreCase("surprise"))
                                   
                                   {out.println(emotion);
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
                            <p style="color:#009999;margin-left: 300px;margin-top: 10px;font-size: 18px;">
                              
                       
                          <%=b%>
                         </p>
              </td>
                         
      </tr>
                     
                     
                 
                      <%  }
}
          
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
