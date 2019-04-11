<%-- 
    Document   : Comments
    Created on : Oct 25, 2018, 2:58:42 PM
    Author     : Priya
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Share Your Post Page</title>
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
            <div style="margin-top: 50px;">
           <h3 style="margin-top:50px;"><center>WELCOME <%String f=session.getAttribute("uname").toString();out.print(f);%>!!!</center></h3>
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
                 <br>
         <div class="col-sm-6" >
                
                
                 <br>
            <div align="center">     
<!--                     <form  action="CommentsConn.jsp?" name="form1" onsubmit="return SignupValidate()" method="get" >
                   
                                <table align="center" style="margin-top: 50px;">
                                  <input type="text" name="post" style="width:55%;height:40px;"><br><br>
                                  <input type="submit" name="Search" value="POST" style="border-radius: 5pt 5pt;margin-top: 10px;background-color: black;color: white; width: 100px; ">
                                </table>
                      </form>-->
<form  action="Comments.jsp" name="form1" method="post" >
                   
                                <table align="center" style="margin-top: 50px;">
                                    <h3 style="font-family: 'Kaushan Script', cursive;margin-top:50px;margin-left: 20px;color: purple;">
                   WHAT'S YOUR MOOD NOW?
                 </h3>
                                    <select name="emotion" >
                                        <option value="">Select</option>
                                        <option value="happy">Happiness</option>
                                        <option value="sad">sadness</option>
                                        <option value="angry">anger</option>
                                        <option value="surprise">surprise</option>
                                    </select>
                                    &nbsp;&nbsp;&nbsp;
                                       <input type="submit" name="Search" value="Choose" style="border-radius: 5pt 5pt;margin-top: 10px;background-color: black;color: white; width: 100px; ">
                                  </table>
                      </form>
        <form  action="CommentsConn.jsp" name="form1" onsubmit="return call();" method="get" >
                    <h3 style="font-family: 'Kaushan Script', cursive;margin-top:20px;color: purple;">
                    SHARE YOUR POSTS
                 </h3>
                               <%try{
                                   String emotion=request.getParameter("emotion");
                                  // session.setAttribute("mood", emotion);
                                   if(emotion.equalsIgnoreCase(""))
                                   
                                   {
                                       emotion="";
                                       String a=" Please Choose Something";
                                      // session.setAttribute("mood", emotion);
                                       out.println(a);
                                       %>
                                       <br> <br>
                                       <img src="images/choose.jpg" alt="not-found" width="200" height="200" style="border-radius: 25pt 25pt;align-content: center;">
                                        <br> <br>
                               <%
                                       
                                   }
                                   if(emotion.equalsIgnoreCase("happy"))
                                   
                                   {out.println(emotion);
                                       %>
                                       <br> <br>
                                       <img src="images/happy.jpg" alt="not-found" width="200" height="200" style="border-radius: 25pt 25pt;align-content: center;">
                                        <br> <br>
                               <%
                                       
                                   }
                                   
                                      if(emotion.equalsIgnoreCase("sad"))
                                   
                                   {out.println(emotion);
                                       %>
                                       <br> <br>
                                       <img src="images/sad.jpg" alt="not-found" width="200" height="200" style="border-radius: 25pt 25pt;align-content: center;">
                                        <br> <br>
                               <%
                                   }
                                         if(emotion.equalsIgnoreCase("angry"))
                                   
                                   {out.println(emotion);
                                       %>
                                       <br> <br>
                                       <img src="images/angry.jpg" alt="not-found" width="200" height="200" style="border-radius: 25pt 25pt;align-content: center;">
                                        <br> <br>
                               <%
                                   }
                                            if(emotion.equalsIgnoreCase("surprise"))
                                   
                                   {out.println(emotion);
                                       %>
                                       <br> <br>
                                       <img src="images/surprise.jpg" alt="not-found" width="200" height="200" style="border-radius: 25pt 25pt;align-content: center;">
                                        <br> <br>
                               <%
                                   }
                                   
%>
                                    <br>
                                     <input type="hidden" name="mood" readonly="true" id="a" value="<%=emotion%>" style="width:55%;height:40px;"><br><br>
                                    <input type="text" id='b' name="post" placeholder="Write Something here....." style="width:55%;height:40px;"><br><br>
                                  <input type="submit" name="Search" value="POST" onsubmit="return call();" style="border-radius: 5pt 5pt;margin-top: 10px;background-color: black;color: white; width: 100px; ">
                               <script>
                                        function call()
                                        {
                                            var a,b;
                                            var a=String(document.getElementById('a').value);
                                             var b=String(document.getElementById('b').value);
                                            // document.write(a);
                                            if(a=="")
                                            {
                                                alert("Choose your Mood...");
                                            }
                                             if(b=="")
                                            {
                                                alert("Please Write Something...");
                                            }
                                            
                                        }
                                        </script>
                                  <%
                               } catch(Exception ex)
{
    
}%>
                                  </table>
                      </form>
            </div>
                 
                 
         </div>
                 <div class="col-sm-6" >
                      <form  method="get">
                          <p style="text-align: center;font-size: 25px;margin-top: 50px;">
                         View Your Posts
                     </p>
                 <table  class="table table-bordered" >
                      
                     
                   
                
                     <%
                         try
{
   Class.forName("com.mysql.jdbc.Driver");
   Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/stressdetection","root","root");
   Statement st=conn.createStatement();
   Statement at=conn.createStatement();
   ResultSet y,j;
   
   String x=session.getAttribute("uname").toString();
   
      String query="select * from post where name='"+x+"' ";
      y=at.executeQuery(query);
      
 while(y.next())

{ 
    //out.print("hai");
    String a=y.getString("name");
    String b=y.getString("posts");
     String c=y.getString("date");
     String d=y.getString("time");
      String e=y.getString("mood");
   // out.print(a);
   // out.print(b);
    
                     %>
      
        
          <tr>
                         
                        
                       <td style="background-color: purple;color: white;">
                           <%=c%> &nbsp; :  <%=a%> shared post at <%=d%>
                         </td>
                          <td style="color:purple;background-color: white;">
                              &nbsp; &nbsp; 
                           Mood: <%=e%>
                            
                         </td>
                         <td style="color:white;background-color: purple;">
                              
                            <%=b%>
                            
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
        
    </body>
</html>
