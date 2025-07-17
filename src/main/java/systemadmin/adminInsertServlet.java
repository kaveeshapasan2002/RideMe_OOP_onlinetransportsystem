package systemadmin;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet("/adminInsertServlet")
public class adminInsertServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String minDistance = request.getParameter("minDistance");
        String maxDistance = request.getParameter("maxDistance");
        String price = request.getParameter("price");
        String vehicleNumber = request.getParameter("vehicle_number");
        String vehiclePrice = request.getParameter("vehicle_price");
        String bankName = request.getParameter("bank_name");
        String bankBranch = request.getParameter("bank_branch");
        String bankNo = request.getParameter("bank_no");

        String insertSQL = "INSERT INTO admin_portal (minDistance, maxDistance, price, vehicle_number, vehicle_price, bank_name, bank_branch, bank_no) "
                + "VALUES (?, ?, ?, ?, ?, ?, ?, ?)";

        try (Connection connection = DatabaseConnection.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(insertSQL)) {

            // Set the values for the PreparedStatement
            preparedStatement.setBigDecimal(1, new java.math.BigDecimal(minDistance));
            preparedStatement.setBigDecimal(2, new java.math.BigDecimal(maxDistance));
            preparedStatement.setBigDecimal(3, new java.math.BigDecimal(price));
            preparedStatement.setString(4, vehicleNumber);
            preparedStatement.setBigDecimal(5, new java.math.BigDecimal(vehiclePrice));
            preparedStatement.setString(6, bankName);
            preparedStatement.setString(7, bankBranch);
            preparedStatement.setString(8, bankNo);

            int rowsInserted = preparedStatement.executeUpdate();
            if (rowsInserted > 0) {
                response.sendRedirect("GetAllServlet");
            } else {
                request.setAttribute("errorMessage", "Failed to insert data.");
                RequestDispatcher dispatcher = request.getRequestDispatcher("adminlogin.jsp");
                dispatcher.forward(request, response);
            }

        } catch (SQLException e) {
            e.printStackTrace();
            request.setAttribute("errorMessage", "Database error: " + e.getMessage());
            RequestDispatcher dispatcher = request.getRequestDispatcher("adminlogin.jsp");
            dispatcher.forward(request, response);
        }
    }
}
