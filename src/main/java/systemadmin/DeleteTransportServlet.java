package systemadmin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DeleteTransportServlet")
public class DeleteTransportServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private TransportController transportController = new TransportController();

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id")); 
        boolean isDeleted = transportController.deleteTransportData(id); 
        
        if (isDeleted) {
            response.sendRedirect("GetAllServlet"); 
        } else {
            response.getWriter().println("Failed to delete transport data."); 
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response); 
    }
}
