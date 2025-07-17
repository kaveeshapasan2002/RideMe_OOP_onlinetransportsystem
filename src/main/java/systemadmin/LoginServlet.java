package systemadmin;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String role = request.getParameter("role"); 

        HttpSession session = request.getSession();

       
        if ("admin".equals(role)) {
            if ("admin".equals(username) && "1234@".equals(password)) {
                session.setAttribute("adminName", username);
               
                response.sendRedirect("adminDashboard.jsp");
            } else {
              
                response.sendRedirect("login.jsp?error=Invalid admin credentials");
            }
        } 
        
       
        else if ("user".equals(role)) {
            if (validateUserCredentials(username, password)) {
                session.setAttribute("username", username);
                
                response.sendRedirect("homePage.jsp");
              
            } else {
               
                response.sendRedirect("login.jsp?error=Invalid user credentials");
            }
        }
    }

   
    private boolean validateUserCredentials(String username, String password) {
        boolean isValid = false;
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        try {
           
            con = DatabaseConnection.getConnection();
            String sql = "SELECT * FROM users WHERE username = ? AND password = ?";
            ps = con.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, password);

            rs = ps.executeQuery();

           
            if (rs.next()) {
                isValid = true;
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
           
            try {
                if (rs != null) rs.close();
                if (ps != null) ps.close();
                if (con != null) con.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        return isValid;
    }
}
