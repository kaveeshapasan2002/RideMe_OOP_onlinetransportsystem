package Registration;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/InsertServlet")
public class InsertServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        String name = request.getParameter("name");
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirmPassword");
        
        // Validate if password and confirmPassword match
        if (!password.equals(confirmPassword)) {
            // Display an alert using JavaScript if passwords don't match
            response.getWriter().println("<script>alert('Passwords do not match!'); window.history.back();</script>");
            return; // Exit the method without inserting data
        }
        
        
        boolean isTrue;
        
        // If passwords match, proceed with data insertion
        isTrue = RegController.insertdata(name, username, email, password);
        
        if (isTrue) {
            String alertMessage = "Data Insert Successful";
            response.getWriter().println("<script>alert('" + alertMessage + "'); window.location.href='login.jsp';</script>");
        } else {
            RequestDispatcher dis2 = request.getRequestDispatcher("wrong.jsp");
            dis2.forward(request, response);
        }
    }
}
