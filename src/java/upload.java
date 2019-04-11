/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author Priya
 */
@WebServlet(name="upload" , urlPatterns={"/upload"})
@MultipartConfig(maxFileSize=16177216)
public class upload extends HttpServlet {

    
    PrintWriter out;
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet upload</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet upload at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       response.setContentType("text/html;charset-UTF-8");
       out=response.getWriter();
       int result=0;
       Part part=request.getPart("image");
       if(part!=null)
       {
           try
           {
                 Class.forName("com.mysql.jdbc.Driver");
   Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/stressdetection","root","root");
         
   out.println("Connected");
    
   
                String uname=request.getParameter("uname");
                String pass=request.getParameter("pass");
                String mail=request.getParameter("mail");
                String phno=request.getParameter("mob");
                String addr=request.getParameter("addr");
                String dob=request.getParameter("dob");

                
                
                 PreparedStatement ps=conn.prepareStatement("insert into data(image,uname,pass,mail,phno,addr,dob) values(?,?,?,?,?,?,?)");
                 InputStream is=part.getInputStream();
                 ps.setBlob(1, is);
                 ps.setString(2, uname);
                 ps.setString(3, pass);
                 ps.setString(4, mail);
                 ps.setString(5, phno);
                 ps.setString(6, addr);
                  ps.setString(7, dob);
                 result=ps.executeUpdate();
                 if(result>0)
                 {
                     response.sendRedirect("UserLogin.jsp");
                     out.print("Uploaded Successfully");
                 }
                 else
                 {
                     response.sendRedirect("Register.jsp");
                     out.print("Could not upload data" );
                 }
                 
           }
           catch(Exception ex)
           {
                out.print("Error"+ex.getMessage() );
           }
       }
        
        
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
