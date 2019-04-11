<%-- 
    Document   : Login
    Created on : Oct 20, 2018, 3:01:38 PM
    Author     : Priya
--%>

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
     <center>
        
           <h1><center>DETECTING STRESS IN ONLINE SOCIAL NETWORKS</center></h1>
           <div style="margin-top: 80px;text-align: left;">
               <a href="HomePage.jsp" style="margin-left:200px;margin-top: 50px;border-radius: 5pt 5pt;width: 300px; text-align: center;font-size: 25px;color: #cc0033;">HOME</a>
             
             <a href="AdminLogin.jsp" style="margin-left:200px;border-radius: 5pt 5pt;width: 300px; text-align: center;font-size: 25px;color:  #cc0033;">ADMIN LOGIN</a>
      
             <a href="UserLogin.jsp" style="margin-left: 200px;border-radius: 5pt 5pt;width: 300px; text-align: center;font-size: 25px;color:  #cc0033;">ONLINE SOCIAL NETWORK USERS</a>
             
         </div>
           <h3 style="margin-top:50px;"><center>ONLINE SOCIAL NETWORK USERS LOGIN HERE!!!</center></h3>
     <form action="UserLoginConn.jsp" method="post">
                
                <table align="center" style="margin-top: 50px;font-family: 'Mali', cursive;">
                      
                        <tr>
                           
                                <td><label for="uname" >USER NAME:</label></td>
                            
                        </tr>    

                        
                        <tr>
                               
                            <td>
                                <input type="text" name="uname" placeholder="Enter Your User Name" required style="border-radius: 5pt 5pt;width: 300px; text-align: center;color: black;">
                            </td>
                           
                        </tr> 
                        
                        
                        <tr>
                           
                                <td><label for="pass" >PASSWORD:</label></td>
                            
                          </tr>    

                        
                        <tr>
                               
                            <td>
                                <input type="password" name="pass" placeholder="Enter Your Password" required style="border-radius: 5pt 5pt;width: 300px; text-align: center;color: black;">
                            </td>
                           
                        </tr> 
                      
                        <tr>
                             <td>
                                <input type="submit" name="submit" value="SIGN UP" id="submit" style="border-radius: 5pt 5pt;margin-top: 10px;background-color: black;color: white; margin-left: 25px;width: 100px; text-align: center;" />
                                 <input type="reset" name="reset" value="RESET"  style="border-radius: 5pt 5pt;margin-top: 10px;background-color: black;color: white; margin-left: 50px;width: 100px; text-align: center;">
                             </td>
                        </tr>
                         <tr>
                               
                            <td>
                                <a href="Register.jsp" style="margin-top: 50px;border-radius: 5pt 5pt;width: 300px; text-align: center;font-size: 25px;color: green;"> CREATE NEW ACCOUNT?</a>
                            </td>
                           
                        </tr>
                </table>
            </form>      
        </center>
    </body>
</html>
