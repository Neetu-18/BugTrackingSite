

import dao.DBConnection;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class LoginController extends HttpServlet {
    RequestDispatcher disp;
String msg;
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String name=request.getParameter("uname");
        String passwd=request.getParameter("pwd");
        try{
            Connection con=DBConnection.dbCon();
            PreparedStatement pst=con.prepareStatement("select password from addadmin where name=?");
            pst.setString(1, name);
            ResultSet rs=pst.executeQuery();
            if(!rs.next()){
                msg="User does not exist....!";
                disp=request.getRequestDispatcher("index.jsp");
               }
            else{
                if(rs.getString("password").equals(passwd))
                    disp=request.getRequestDispatcher("AdminAccount.jsp");
                
                else{
                    msg="invalid password ...!";
                    disp=request.getRequestDispatcher("index.jsp");
                }
            }
             disp.forward(request,response);
        }
        catch(Exception e){
            System.out.println("Error"+e);
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
        processRequest(request, response);
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
