<%-- 
    Document   : SearchConn
    Created on : Oct 25, 2018, 1:06:10 PM
    Author     : Priya
--%>

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
           
           <h3 style="margin-top:50px;"><center>WELCOME USER!!!</center></h3>
           <div style="margin-top: 50px;">
           <a  href="SearchFriends.jsp" style=" margin-left: 300px;border-radius: 5pt 5pt;width: 300px; font-size: 25px;color: green;">
               Search Friends
           </a>
           <a  href="FriendRequest.jsp" style=" margin-left:300px;border-radius: 5pt 5pt;width: 300px; font-size: 25px;color: green;">
               View Friend Requests
           </a>
           </div>
             <div class="col-sm-2" >
                
            </div>
           <div class="col-sm-8" >
                
                 <h3 style="font-family: 'Kaushan Script', cursive;margin-top:50px;margin-left: 400px;">
                    Friends List
                 </h3>
                 <br>
            <div align="center">     
                   
                   
                                <table align="center" style="margin-top: 50px;">
                                  <input type="text" name="search" style="width:55%;height:40px;"><br><br>
                                  <input type="submit" name="Search" value="File Search" style="border-radius: 5pt 5pt;margin-top: 10px;background-color: black;color: white; width: 100px; ">
                                </table>
                    
                 </div>  
            </div>
            <div class="col-sm-2" >
                
            </div>
    </body>
</html>
