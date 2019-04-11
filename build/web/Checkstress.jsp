<%-- 
    Document   : Checkstress
    Created on : Oct 29, 2018, 11:46:00 AM
    Author     : Priya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>check stress</title>
    </head>
    <body>
         <form  action="Checkstress.jsp" name="form1" method="post" >
                   
                                <table align="center" style="margin-top: 50px;">
                                    Choose your Feeling:
                                    <select name="emotion">
                                        <option value="">Select</option>
                                        <option value="happy">Happiness</option>
                                        <option value="sad">sadness</option>
                                        <option value="angry">anger</option>
                                        <option value="surprise">surprise</option>
                                    </select>
                                   
                                       <input type="submit" name="Search" value="Choose" style="border-radius: 5pt 5pt;margin-top: 10px;background-color: black;color: white; width: 100px; ">
                                  </table>
              </form>
        <form  action="Checkstress.jsp" name="form1" onsubmit="return call();" method="get" >
                   
                               <%try{
                                   String emotion=request.getParameter("emotion");
                               //    out.println(emotion);
                                   
                                    if(emotion.equalsIgnoreCase(""))
                                   
                                   {
                                       %>
                                       <br>
                                       <img src="images/choose.jpg" alt="not-found" width="200" height="200" style="align-content: center;">
                                       
                               <%
                                       
                                   }
                                   if(emotion.equalsIgnoreCase("Happy"))
                                   
                                   {
                                       %>
                                       <br>
                                       <img src="images/happy.jpg" alt="not-found" width="200" height="200" style="align-content: center;">
                                       
                               <%
                                       
                                   }
                                   
                                      if(emotion.equalsIgnoreCase("sad"))
                                   
                                   {
                                       %>
                                       <br>
                                       <img src="images/sad.jpg" alt="not-found" width="200" height="200" style="align-content: center;">
                                       
                               <%
                                   }
                                         if(emotion.equalsIgnoreCase("angry"))
                                   
                                   {
                                       %>
                                       <br>
                                       <img src="images/angry.jpg" alt="not-found" width="200" height="200" style="align-content: center;">
                                       
                               <%
                                   }
                                            if(emotion.equalsIgnoreCase("surprise"))
                                   
                                   {
                                       %>
                                       <br>
                                       <img src="images/surprise.jpg" alt="not-found" width="200" height="200" style="align-content: center;">
                                       
                               <%
                                   }
                                   
%>
                                    <br>
                                    <input type="hidden" name="mood" readonly="true" id="a" value="<%=emotion%>" style="width:55%;height:40px;"><br><br>
                                    Share Your Post:<input type="text" id="b" name="post" placeholder="Write Something here....." style="width:55%;height:40px;"><br><br>
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
                                                alert("Enter All fields");
                                            }
                                             if(b=="")
                                            {
                                                alert("Enter All fields");
                                            }
                                            
                                        }
                                        </script>
                                
                                  <%
                               } catch(Exception ex)
{
    
}%></table>
                      </form>
    </body>
</html>
