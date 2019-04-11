
<%@page import="sms.SMS"%>
<%@page import="org.jfree.chart.ChartUtilities"%>
<%@page import="java.io.File"%>
<%@page import="org.jfree.chart.entity.StandardEntityCollection"%>
<%@page import="org.jfree.chart.ChartRenderingInfo"%>
<%@page import="org.jfree.data.general.DefaultPieDataset"%>
<%@page import="org.jfree.data.jdbc.JDBCPieDataset"%>
<%@page import="org.jfree.chart.JFreeChart"%>
<%@page import="org.jfree.chart.ChartFactory"%>
<%@page import="org.jfree.chart.ChartPanel"%>
<%@page import="org.jfree.ui.ApplicationFrame"%>
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
        <h1> Chart </h1>
        
        
        
        
        
        <%try{
            Class.forName("com.mysql.jdbc.Driver");
    Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/stressdetection","root","root");
    Statement st=conn.createStatement();
    Statement at=conn.createStatement();
    ResultSet p,R,R1;
             String query = "SELECT * from stress";
             p=at.executeQuery(query);
      final DefaultPieDataset data = new DefaultPieDataset();
      while(p.next())
      {
      data.setValue(p.getString("stresstype"), p.getInt("count"));
      }

      JFreeChart chart = ChartFactory.createPieChart ("Pie Chart ", data, true, true, false);

     try {
         final ChartRenderingInfo info = new ChartRenderingInfo(new StandardEntityCollection());
         final File file1 = new File(getServletContext().getRealPath(".") + "/piechart.png");
         ChartUtilities.saveChartAsPNG(file1, chart, 600, 400, info);
         } catch (Exception e) {
            out.println(e);
         }
     
     String name=session.getAttribute("uname").toString();
      String nn="select * from data where uname='"+name+"'";
     R1=at.executeQuery(nn);
     String phno=" ";
     while(R1.next())
     {
     phno=R1.getString("phno");
     }
     
     
     String mm="select * from stresslevel";
     R=at.executeQuery(mm);
     int i=1;
     while(R.next())
     {
         
        
         String link1="https://www.verywellfit.com/best-sites-for-online-yoga-videos-3567242";
         String link2="https://studybreaks.com/culture/music/relaxing-songs/";
        String types1,types2;
        int count1,count2;
        String counting1,counting2;
         if(i==1)
         {
          types1=R.getString("types");
          counting1=R.getString("count");
           count1=Integer.parseInt(counting1);
         i++;
          out.println(types1);
          out.println(counting1);
           out.println(count1);
         }
          if(i==2)
         {
          types2=R.getString("types");
          counting2=R.getString("count");
             count2=Integer.parseInt(counting2);
         //i++;
         out.println(types2);
          out.println(counting2);
           out.println(count2);
         }
//          if (i==3)
//          {
//              if(count1>)
//              {
//                  SMS a=new SMS();
//              }
//          }
     }
     
     
        }
        catch(Exception ex)
        {
            out.println(ex);
        }
     %>
  
 <img src="piechart.png" WIDTH="600" HEIGHT="400" BORDER="0">
</body> 
</html>