package systemadmin;

import java.io.IOException;
import java.math.BigDecimal;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UpdateTransportServlet")
public class UpdateTransportServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private TransportController transportController = new TransportController();

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        TransportModel transport = transportController.getById(id);
        request.setAttribute("transport", transport);
        request.getRequestDispatcher("updateTransportForm.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        BigDecimal minDistance = new BigDecimal(request.getParameter("minDistance"));
        BigDecimal maxDistance = new BigDecimal(request.getParameter("maxDistance"));
        BigDecimal price = new BigDecimal(request.getParameter("price"));
        String vehicleNumber = request.getParameter("vehicleNumber");
        BigDecimal vehiclePrice = new BigDecimal(request.getParameter("vehiclePrice"));
        String bankName = request.getParameter("bankName");
        String bankBranch = request.getParameter("bankBranch");
        String bankNo = request.getParameter("bankNo");

        TransportModel transportModel = new TransportModel(id, minDistance, maxDistance, price, vehicleNumber, vehiclePrice, bankName, bankBranch, bankNo);
        
        boolean isUpdated = transportController.updateTransportData(transportModel);

        if (isUpdated) {
            
            response.sendRedirect("GetAllServlet");
        } else {
            response.getWriter().println("Failed to update transport data.");
        }
    }
}
