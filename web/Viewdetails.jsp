<%-- 
    Document   : Viewdetails
    Created on : Oct 23, 2018, 11:09:20 AM
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
                <a href=""> 
                     VIEW POSITIVE  TWEETS
                </a>
               <br><br>
               <a href="">
                     VIEW NEGATIVE  TWEETS
                                </a>
               <br><br>

                <a href="" > 
                    ADD TWEET CATEGORY 
                                </a>
               <br><br>
                <a href="" >
                    SOCIAL INTERACTION  RESULTS
                </a>
               <br><br>
                
                <a href="HomePage.jsp" >
                    LOGOUT
                </a>
               <br><br>
           </div>
            <div class="col-sm-6" style="height: auto;margin-top: 50px;color:green;font-size: 15px;">
                     <center>
                         <p>USER PROFILE</p>
                         <table class="table" style="margin-top: 50px;margin-left: 100px;">
                             
                             
                              <%
                                 try{
                             Class.forName("com.mysql.jdbc.Driver");
           
                            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/stressdetection","root","root");
                            Statement st=con.createStatement();
                            Statement st1=con.createStatement();
                            ResultSet x,y,z;
                           String i=request.getParameter("id");
                            
                            
                            z=st.executeQuery("select * from data where id='"+i+"' ");
                            if(z.next())
                            {
                                
                             %>
                             <tr >
                                 <td>USER ID :</td>
                                  <td><%=z.getInt(1)%></td>  
                             </tr>
                             <tr>
                                 <td> USER NAME :</td>
                                  <td><%=z.getString(3)%></td>
                             </tr>
                             <tr>
                                  <td>PASSWORD:</td>
                                  <td><%=z.getString(4)%></td>
                             </tr>
                              <tr>
                                  <td>Mail ID:</td>
                                  <td><%=z.getString(5)%></td>
                             </tr>
                             
                             <tr > 
                                <td>PHONE NUMBER:</td>
                                 <td><%=z.getString(6)%></td>
                             </tr>
                             
                             <tr > 
                                <td>ADDRESS:</td>
                                 <td><%=z.getString(7)%></td>
                             </tr>
                             <tr > 
                                <td>DATE OF BIRTH:</td>
                                 <td><%=z.getString(8)%></td>
                             </tr>
                             <%
                                }
                           
else
{
response.sendRedirect("index.html");
}
                    }
                    catch(Exception ex)
                    {
                        out.println("HAI :"+ex.getMessage());

                    }
                   

                             %>
                         </table>
                         
                     </center>
                         <a href="ViewUSers.jsp" style="margin-left:650px;color: purple" >
                    BACK
                </a>
                </div>
           
    </body>
</html>
