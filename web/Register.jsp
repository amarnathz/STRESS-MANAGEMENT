<%-- 
    Document   : Register
    Created on : Oct 20, 2018, 3:15:48 PM
    Author     : Priya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Page</title>
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
           <h3 style="margin-top:100px;"><center>REGISTER HERE!!!</center></h3>
           <form action="upload" method="post" enctype="multipart/form-data">
                
                <table align="center" style="margin-top: 50px;font-family: ">
                      
                        <tr>
                           
                                <td><label for="dp" >Upload DP:</label></td>
                                
                            
                        </tr>
                        
                        <tr>
                            
                               
                            <td><input type="file" name="image" id="profile-img" required/></td>
                            
                        </tr>
                        <tr>
                         <td>
                    <center>
                        <img src="" id="profile-img-tag" width="150px" height="100px"  style="border-radius: 5pt 5pt;"/>
                    </center>
                   </td>
                        </tr>
                        
                         <script type="text/javascript">

        function readURL(input) {

        if (input.files && input.files[0]) {

            var reader = new FileReader();

            

            reader.onload = function (e) {

                $('#profile-img-tag').attr('src', e.target.result);

            }

            reader.readAsDataURL(input.files[0]);

        }

    }

    $("#profile-img").change(function(){

        readURL(this);

    });

</script>
                        
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
                           
                                <td><label for="mail" >MAIL ID:</label></td>
                            
                        </tr>    

                        
                        <tr>
                                  
                            <td>
                                <input type="text" name="mail" placeholder="Enter Your User Name" required style="border-radius: 5pt 5pt;width: 300px; text-align: center;color: black;">
                            </td>
                           
                        </tr> 
                       <tr>
                           
                           
                           
                         <tr>
                           
                                <td><label for="mob" >MOBILE NUMBER:</label></td>
                            
                          </tr>    

                        
                        <tr>
                               
                            <td>
                                <input type="text" name="mob" placeholder="Enter Your Mobile Number" required style="border-radius: 5pt 5pt;width: 300px; text-align: center;color: black;">
                            </td>
                           
                        </tr> 
                       <tr>
                           
                                <td><label for="addr" >ADDRESS:</label></td>
                            
                          </tr>    
  
                          <tr>
                              <td>   
                        <textarea  name="addr" rows="3" cols="32" placeholder="Enter Your Address" required  style="border-radius: 5pt 5pt;">
                                        
                                    </textarea>
                              </td>
                            </tr>
                            
                              <tr>
                           
                                <td><label for="dob">Date Of Birth:</label></td>
                                
                            
                        </tr>
                        
                        <tr>
                            
                               
                            <td>
                                
                              <input type="date" name="dob" required style="border-radius: 5pt 5pt;width: 300px; text-align: center;">
                                
                            </td>
                            
                        </tr>
                        
                        
                       
                        <tr>
                             <td>
                                 <b> 
                                     <input type="submit" name="submit" value="SIGN UP" id="submit" style="border-radius: 5pt 5pt;margin-top: 10px;background-color: black;color: white; margin-left: 25px;width: 100px; text-align: center;" />
                                 <input type="reset" name="reset" value="RESET"  style="border-radius: 5pt 5pt;margin-top: 10px;background-color: black;color: white; margin-left: 50px;width: 100px; text-align: center;">
                                 </b>
                                 </td>
                        </tr>
                </table>
            </form>      
        </center>
    </body>
</html>
