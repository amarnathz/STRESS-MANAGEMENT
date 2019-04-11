<%-- 
    Document   : UserHome
    Created on : Oct 23, 2018, 4:06:50 PM
    Author     : Priya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome User </title>
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
           
            </div>
       
                <p style="font-size: 30px;margin-left: 500px;margin-top:80px;margin-right: 100px;text-align: justify;font-family:'Mali', cursive; "> 
                    
                    Just follow these four steps.<br>
                    1)Set up your account.<br>
                    2)Tweak your settings.<br>
                    3)Follow family and friends.<br>
                    4)Start tweeting. 
                    
                </p>                                                                                                                                                                                                                                                                                                                                  
    </body>
</html>
