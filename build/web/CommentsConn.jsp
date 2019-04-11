<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.time.LocalTime"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%
                         try
{
   Class.forName("com.mysql.jdbc.Driver");
   Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/stressdetection","root","root");
   Statement st=conn.createStatement();
   Statement at=conn.createStatement();
   ResultSet y,j;
   
        String z=session.getAttribute("uid").toString();
        String mood=request.getParameter("mood");
        out.print(z);
        int idd=Integer.parseInt(z);
        String x=session.getAttribute("uname").toString();
        out.print(x);
        
        String post=request.getParameter("post");
        out.print(post);
        
        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd");
        DateFormat dateFormat = new SimpleDateFormat("hh.mm aa");
    	String time = dateFormat.format(new Date()).toString();
    	
         LocalDate localDate = LocalDate.now();
        String date=dtf.format(localDate);
        
       
       
        String[] strgs = post.split(" ");
        
        for(int i=0;i<strgs.length;i++)
        {
            // ||  t.equalsIgnoreCase("feelings")
            String t=strgs[i];
            
            if(t.equalsIgnoreCase("Affectionate") || t.equalsIgnoreCase("Cheerful") || t.equalsIgnoreCase("Merry") || t.equalsIgnoreCase("Overjoyed") ||t.equalsIgnoreCase("Glad") || t.equalsIgnoreCase("wonder") || t.equalsIgnoreCase("happiness") || t.equalsIgnoreCase("love")|| t.equalsIgnoreCase("happy") || t.equalsIgnoreCase("like") || t.equalsIgnoreCase("blessed") ||t.equalsIgnoreCase("good") || t.equalsIgnoreCase("lucky") || t.equalsIgnoreCase("flying") || t.equalsIgnoreCase("dancing") || t.equalsIgnoreCase("singing"))
            {
                mood="happy";
            }
            else if(t.equalsIgnoreCase("amazed") || t.equalsIgnoreCase("amused") || t.equalsIgnoreCase("excited") || t.equalsIgnoreCase("admired") ||t.equalsIgnoreCase("dumbstruck") || t.equalsIgnoreCase("amazing") || t.equalsIgnoreCase("chilledout") || t.equalsIgnoreCase("inspiration")|| t.equalsIgnoreCase("chilledout") || t.equalsIgnoreCase("inspiration") || t.equalsIgnoreCase("thrills") ||t.equalsIgnoreCase("awesome") )
            {
                mood="suprise";
            }
            else if(t.equalsIgnoreCase("ashamed") || t.equalsIgnoreCase("sad") || t.equalsIgnoreCase("overcome") || t.equalsIgnoreCase("impassioned") ||t.equalsIgnoreCase("calm") || t.equalsIgnoreCase("depressed") || t.equalsIgnoreCase("sorrowful") || t.equalsIgnoreCase("sad")  )
            {
                mood="sad";
            }
            
             else if(t.equalsIgnoreCase("angry") || t.equalsIgnoreCase("afraid") || t.equalsIgnoreCase("anoyed") || t.equalsIgnoreCase("movedon") ||t.equalsIgnoreCase("nervous") || t.equalsIgnoreCase("irritated") || t.equalsIgnoreCase("hate") || t.equalsIgnoreCase("hatred")  )
            {
                mood="angry";
            }
            
           
            //Affectionate ,  Aggressive, Pleased ,Cheerful ,Merry ,Overjoyed ,Glad,wonder ,happiness , feeling of love ,
       // Feels like dancing, bouncy feeling, animated,happy,like u,enjoy,flying,blessed,feeling good,I am lucky
        }
        
             st.executeUpdate("insert into post(id,name,posts,date,time,mood) values('"+idd+"','"+x+"','"+post+"','"+date+"','"+time+"','"+mood+"')");
             response.sendRedirect("Comments.jsp");
}
                         catch(Exception ex)
                         {
                             out.println("Error"+ex);
                         }
                   %>