package systemadmin;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;

@WebServlet("/GetAllServlet")
public class GetAllServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<TransportModel> transportList = null; 

        try {
           
            TransportController transportController = new TransportController();
            
           
            transportList = transportController.getAllTransportData();

         
            if (transportList != null && !transportList.isEmpty()) {
                
                request.setAttribute("transportList", transportList);
            } else {
                
                request.setAttribute("errorMessage", "No transport details found.");
            }
        } catch (Exception e) {
           
            e.printStackTrace(); 
            request.setAttribute("errorMessage", "Error retrieving transport details: " + e.getMessage());
        } finally {
           
            RequestDispatcher dispatcher = request.getRequestDispatcher("TransportDetails.jsp");
            dispatcher.forward(request, response);
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
