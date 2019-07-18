

import dao.DBConnection;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Date;
import java.util.Properties;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AddAdmin extends HttpServlet {

   RequestDispatcher disp;
   String msg;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
       String name=request.getParameter("name");
       String email=request.getParameter("email");
       String password=request.getParameter("password");
       try{
          Connection con=DBConnection.dbCon();
          PreparedStatement ps=con.prepareStatement("select email from addadmin where name=?");
          
          ps.setString(1, name);
          ResultSet rs=ps.executeQuery();
          if(!rs.next()){
              PreparedStatement pst=con.prepareStatement("insert into addadmin (name, email) values(?,?)");
          pst.setString(1, name);
          pst.setString(2, email);
          int res=pst.executeUpdate();
          if(res>0)
          {
              
              
              
              //String rec=request.getParameter("recipent");
        String sub="You are now an admin";
        String mesg="Your default password is test123";
        
        // sets SMTP server properties
	Properties properties = new Properties();
	properties.put("mail.smtp.host","smtp.gmail.com");
	properties.put("mail.smtp.port","587");
	properties.put("mail.smtp.auth", "true");
	properties.put("mail.smtp.starttls.enable", "true");

        // creates a new session with an authenticator
	Authenticator auth = new Authenticator() {
			public PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication("ns965496@gmail.com", "*n@singh#81");
			}
	};
        Session sess = Session.getInstance(properties, auth);

		// creates a new e-mail message
		Message msg = new MimeMessage(sess);

		msg.setFrom(new InternetAddress("ns965496@gmail.com"));
		InternetAddress[] toAddresses = { new InternetAddress(email) };
		msg.setRecipients(Message.RecipientType.TO, toAddresses);
		msg.setSubject(sub);
		msg.setSentDate(new Date());
		msg.setText(mesg);

		// sends the e-mail
		Transport.send(msg);
                System.out.println("mail sent successfully");
       
              
              
              
                
                disp=request.getRequestDispatcher("AdminAccount.jsp");
          }
          else
              disp=request.getRequestDispatcher("Addadmin.jsp");
           
             }
          else{
               if(rs.getString("email").equals(email))
                   disp=request.getRequestDispatcher("Addadmin.jsp");
               else
                   {
                 PreparedStatement pst=con.prepareStatement("insert into addadmin (name, email) values(?,?)");
          pst.setString(1, name);
          pst.setString(2, email);
          int res=pst.executeUpdate();
          if(res>0){
              disp=request.getRequestDispatcher("AdminAccount.jsp");
          }
          else
              disp=request.getRequestDispatcher("Addadmin.jsp");
            
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
