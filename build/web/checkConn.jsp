<%-- 
    Document   : Comments
    Created on : Oct 25, 2018, 2:58:42 PM
    Author     : Priya
--%>

<%@page import="sms.SMS"%>
<%@page import="org.jfree.chart.ChartUtilities"%>
<%@page import="org.jfree.chart.entity.StandardEntityCollection"%>
<%@page import="java.io.File"%>
<%@page import="org.jfree.chart.ChartRenderingInfo"%>
<%@page import="org.jfree.chart.ChartRenderingInfo"%>
<%@page import="org.jfree.chart.JFreeChart"%>
<%@page import="org.jfree.chart.ChartFactory"%>
<%@page import="org.jfree.data.general.DefaultPieDataset"%>
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
                
         <div class="col-sm-4" >
              <br>
            <div align="center">     
<%
try
{
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/stressdetection","root","root");
    Statement st=conn.createStatement();
    Statement at=conn.createStatement();
    ResultSet jj,j,k,m,n,o,p,pp,pp1;
    
    String uname=session.getAttribute("uname").toString();
     //out.println("name:"+uname);
    String Countrow="";
    String happy="";
    String sad="";
    String angry="";
    String surprise="";
    
    String mood1="happy";
    String mood2="sad";
    String mood3="angry";
    String mood4="surprise";
     String total="total";
     String Stressed1="Stressed Post";
     String NonStressed1="NonStressed Post";
   int Stressed=0;
   int NonStressed=0;
    k=at.executeQuery("select count(*) from post where name='"+uname+"'");
    
    if(k.next())
    {
                    Countrow=k.getString(1);
                  //  out.println("Total:"+Countrow);
                    
                    m=at.executeQuery("select count(*) from post where mood='"+mood1+"' and name='"+uname+"' ");
                        if(m.next())
                   {
                       happy=m.getString(1);
                      // out.println("happy:"+happy);
                   }
                        
                    n=at.executeQuery("select count(*) from post where mood='"+mood2+"' and name='"+uname+"' ");
                        if(n.next())
                   {
                       sad=n.getString(1);
                      // out.println("sad:"+sad);
                   }
                    o=at.executeQuery("select count(*) from post where mood='"+mood3+"' and name='"+uname+"'");
                        if(o.next())
                    {
                        angry=o.getString(1);
                       // out.println("angry:"+angry);
                    }
                    p=at.executeQuery("select count(*) from post where mood='"+mood4+"' and name='"+uname+"'");

                        if(p.next())
                    {
                        surprise=p.getString(1);
                        //out.println("surprise:"+surprise);
                    } 
                                    //out.println("hello");
                                    NonStressed=Integer.parseInt(happy)+Integer.parseInt(surprise);
                                   // out.println(NonStressed);
                                    Stressed=Integer.parseInt(sad)+Integer.parseInt(angry);
                                   // out.println(Stressed);
                                    st.executeUpdate("truncate table stress");
                                    
                                    
                                     st.executeUpdate("insert into stress(stresstype,count) values('"+mood1+"','"+happy+"') ");
                                               
                                    st.executeUpdate("insert into stress(stresstype,count) values('"+mood2+"','"+sad+"') ");
                                    st.executeUpdate("insert into stress(stresstype,count) values('"+mood3+"','"+angry+"') ");
                                    st.executeUpdate("insert into stress(stresstype,count) values('"+mood4+"','"+surprise+"') ");
                                //  st.executeUpdate("insert into stress(stresstype,count) values('"+total+"','"+Countrow+"') ");
                                     at.executeUpdate("truncate table stresslevel");
                                      st.executeUpdate("insert into stresslevel(types,count) values('"+Stressed1+"','"+Stressed+"') ");
                                      st.executeUpdate("insert into stresslevel(types,count) values('"+NonStressed1+"','"+NonStressed+"') ");
                                      //out.println("hai");
                                
                               
                }
     


             String query = "SELECT * from stress";
             pp=at.executeQuery(query);
      final DefaultPieDataset data = new DefaultPieDataset();
      while(pp.next())
      {
      data.setValue(pp.getString("stresstype"), pp.getInt("count"));
      }

      JFreeChart chart = ChartFactory.createPieChart ("View Category of  Post ", data, true, true, false);

     try {
         final ChartRenderingInfo info = new ChartRenderingInfo(new StandardEntityCollection());
         final File file1 = new File(getServletContext().getRealPath(".") + "/piechart.png");
         ChartUtilities.saveChartAsPNG(file1, chart, 600, 400, info);
         } 
     catch (Exception e) {
            out.println(e);
         }
     
     
     
             String q1 = "SELECT * from stresslevel";
             pp1=at.executeQuery(q1);
      final DefaultPieDataset data1 = new DefaultPieDataset();
      while(pp1.next())
      {
      data1.setValue(pp1.getString("types"), pp1.getInt("count"));
      }

      JFreeChart chart1 = ChartFactory.createPieChart ("Check your Stress Level", data1, true, true, false);

     try {
         final ChartRenderingInfo info1 = new ChartRenderingInfo(new StandardEntityCollection());
         final File file11 = new File(getServletContext().getRealPath(".") + "/piechart1.png");
         ChartUtilities.saveChartAsPNG(file11, chart1, 600, 400, info1);
         } 
     catch (Exception e) {
            out.println(e);
         }
     
     
     
   
        
        }
catch(Exception ex)
{
    out.println("Error:"+ex.getMessage());
}
     %>
     <%
         try
         {
             
             Class.forName("com.mysql.jdbc.Driver");
    Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/stressdetection","root","root");
    Statement st=conn.createStatement();
    Statement at=conn.createStatement();
    ResultSet p,R,R1;
    
    
         String name=session.getAttribute("uname").toString();
      String nn="select * from data where uname='"+name+"'";
     R1=at.executeQuery(nn);
     String phno=" ";
     while(R1.next())
     {
     phno=R1.getString("phno");
     }
    
       String link1="https://www.verywellfit.com/best-sites-for-online-yoga-videos-3567242";
         String link2="https://studybreaks.com/culture/music/relaxing-songs/";
     String mm="select * from stresslevel";
       st.executeUpdate("truncate table stressabc");
     R=at.executeQuery(mm);
     int i=1;
     while(R.next())
     {
         
        
       
        String types1,types2;
        int count1,count2;
        String counting1,counting2;
         if(i==1)
         {
          types1=R.getString("types");
          counting1=R.getString("count");
           count1=Integer.parseInt(counting1);
         i++;
         int b=0;
           st.executeUpdate("insert into stressabc(a,b) values('"+count1+"','"+b+"')");
         }
         
          if(i==2)
         {
          types2=R.getString("types");
          counting2=R.getString("count");
             count2=Integer.parseInt(counting2);
         //i++;
        st.executeUpdate("update stressabc set b='"+count2+"'");
         }
}
     
     
     
      String aa="select * from stressabc";
     p=at.executeQuery(aa);
     
     if(p.next())
     {
         int a=p.getInt(1);
            int b=p.getInt(2);
            
            if(a>b)
            {
                SMS sms=new SMS();
                // out.println(name);
    // out.println(phno);
                sms.SendSMS(phno, name+" your Stress Level is Too High...Please take a relaxation  for minutes by watching this"+link1+" and "+link2);
            }
     }
         }catch(Exception ex)
         {
             
         }
    %>
  
 <img src="piechart.png" WIDTH="600" HEIGHT="400" BORDER="0" style="margin-top: 100px;margin-left: 50px;">
 <br>

            </div>

            </div>
             <div class="col-sm-4" >
                 <img src="piechart1.png" WIDTH="600" HEIGHT="400" BORDER="0" style="margin-top: 120px;margin-left: 250px;"> 
                 </div>
         </div>
            </body>