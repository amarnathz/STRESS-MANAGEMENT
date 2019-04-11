<%-- 
    Document   : ViewConn
    Created on : Oct 22, 2018, 11:20:45 AM
    Author     : Priya
--%>

<%@page import="java.io.ByteArrayOutputStream"%>
<%@page import="java.util.Base64"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Showing image</title>
    </head>
    <body>
        <%
            String id=request.getParameter("id");
             try
           {
                 Class.forName("com.mysql.jdbc.Driver");
                 Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/stressdetection","root","root");
         
                 out.println("Connected");
                  PreparedStatement ps=conn.prepareStatement("select * from data where id=? ");
                  ps.setString(1, id);
                  ResultSet rs=ps.executeQuery();
                  
                  if(rs.next())
                  {
                      
//                      Thumbnails.of(os)
//  .size(150, 150)
//  .toFile("images" + (id) + ".jpg");

                    Blob blob=rs.getBlob("image");
                      byte byteArray[]=blob.getBytes(1,(int) blob.length());
                      response.setContentType("image/gif");
                      ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
                     
                
       
            OutputStream os=response.getOutputStream();
                      os.write(byteArray);
                      byte[] imageBytes = outputStream.toByteArray();
                String base64Image = Base64.getEncoder().encodeToString(imageBytes);
                      os.flush();
                      os.close();
                      
                          }
                    else
                  {
                        out.println("No image dound in db");
                  }
}
             catch(Exception ex)
             {
                  out.println("Error"+ex.getMessage());
             }
            
        %>
          </body>
</html>
