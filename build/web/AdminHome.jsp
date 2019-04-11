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
            a{
                text-decoration: none;
                color: green;
               
            }
            
        </style>
    </head>
    <body>
    
        
           <h1><center>DETECTING STRESS IN ONLINE SOCIAL NETWORKS</center></h1>
           
           <h3 style="margin-top:50px;"><center>WELCOME ADMIN!!!</center></h3>
   
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
               
            <div  class="col-sm-9" style="margin-top:30px;text-align: justify;color: black;font-size: 20px;">             
            
             <h3 style="margin-top:20px;"><center>ABSTRACT</center></h3>
               Psychological stress is threatening people’s health. It is non-trivial to detect stress timely for proactive care. With the
popularity of social media, people are used to sharing their daily activities and interacting with friends on social media platforms,
making it feasible to leverage online social network data for stress detection. In this paper, we find that users stress state is closely
related to that of his/her friends in social media, and we employ a large-scale dataset from real-world social platforms to systematically
study the correlation of users’ stress states and social interactions. We first define a set of stress-related textual, visual, and social
attributes from various aspects, and then propose a novel hybrid model - a factor graph model combined with Convolutional Neural
Network to leverage tweet content and social interaction information for stress detection. Experimental results show that the proposed
model can improve the detection performance by 6-9% in F1-score. By further analyzing the social interaction data, we also discover
several intriguing phenomena, i.e. the number of social structures of sparse connections (i.e. with no delta connections) of stressed
users is around 14% higher than that of non-stressed users, indicating that the social structure of stressed users’ friends tend to be
less connected and less complicated than that of non-stressed users.
          
            </div>
    </body>
</html>
