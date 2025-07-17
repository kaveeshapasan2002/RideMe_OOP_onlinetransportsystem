package systemadmin;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class TransportController {

  
    public boolean insertTransportData(TransportModel transportModel) {
        String insertSQL = "INSERT INTO admin_portal (minDistance, maxDistance, price, vehicle_number, vehicle_price, bank_name, bank_branch, bank_no) "
                + "VALUES (?, ?, ?, ?, ?, ?, ?, ?)";

        try (Connection connection = DatabaseConnection.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(insertSQL)) {

            preparedStatement.setBigDecimal(1, transportModel.getMinDistance());
            preparedStatement.setBigDecimal(2, transportModel.getMaxDistance());
            preparedStatement.setBigDecimal(3, transportModel.getPrice());
            preparedStatement.setString(4, transportModel.getVehicleNumber());
            preparedStatement.setBigDecimal(5, transportModel.getVehiclePrice());
            preparedStatement.setString(6, transportModel.getBankName());
            preparedStatement.setString(7, transportModel.getBankBranch());
            preparedStatement.setString(8, transportModel.getBankNo());

            return preparedStatement.executeUpdate() > 0;

        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

   
    public TransportModel getById(int id) {
        TransportModel transportModel = null;
        String selectSQL = "SELECT * FROM admin_portal WHERE id = ?";

        try (Connection connection = DatabaseConnection.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(selectSQL)) {

            preparedStatement.setInt(1, id);
            try (ResultSet resultSet = preparedStatement.executeQuery()) {
                if (resultSet.next()) {
                    transportModel = new TransportModel();
                    transportModel.setId(resultSet.getInt("id"));
                    transportModel.setMinDistance(resultSet.getBigDecimal("minDistance"));
                    transportModel.setMaxDistance(resultSet.getBigDecimal("maxDistance"));
                    transportModel.setPrice(resultSet.getBigDecimal("price"));
                    transportModel.setVehicleNumber(resultSet.getString("vehicle_number"));
                    transportModel.setVehiclePrice(resultSet.getBigDecimal("vehicle_price"));
                    transportModel.setBankName(resultSet.getString("bank_name"));
                    transportModel.setBankBranch(resultSet.getString("bank_branch"));
                    transportModel.setBankNo(resultSet.getString("bank_no"));
                }
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return transportModel;
    }

  
    public List<TransportModel> getAllTransportData() {
        List<TransportModel> transportList = new ArrayList<>();
        String query = "SELECT * FROM admin_portal";

        try (Connection connection = DatabaseConnection.getConnection();
             Statement statement = connection.createStatement();
             ResultSet resultSet = statement.executeQuery(query)) {

            while (resultSet.next()) {
                TransportModel transport = new TransportModel();
                transport.setId(resultSet.getInt("id"));
                transport.setMinDistance(resultSet.getBigDecimal("minDistance"));
                transport.setMaxDistance(resultSet.getBigDecimal("maxDistance"));
                transport.setPrice(resultSet.getBigDecimal("price"));
                transport.setVehicleNumber(resultSet.getString("vehicle_number"));
                transport.setVehiclePrice(resultSet.getBigDecimal("vehicle_price"));
                transport.setBankName(resultSet.getString("bank_name"));
                transport.setBankBranch(resultSet.getString("bank_branch"));
                transport.setBankNo(resultSet.getString("bank_no"));

                transportList.add(transport);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return transportList;
    }

    
    public boolean updateTransportData(TransportModel transportModel) {
        String updateSQL = "UPDATE admin_portal SET minDistance = ?, maxDistance = ?, price = ?, vehicle_number = ?, "
                + "vehicle_price = ?, bank_name = ?, bank_branch = ?, bank_no = ? WHERE id = ?";

        try (Connection connection = DatabaseConnection.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(updateSQL)) {

            preparedStatement.setBigDecimal(1, transportModel.getMinDistance());
            preparedStatement.setBigDecimal(2, transportModel.getMaxDistance());
            preparedStatement.setBigDecimal(3, transportModel.getPrice());
            preparedStatement.setString(4, transportModel.getVehicleNumber());
            preparedStatement.setBigDecimal(5, transportModel.getVehiclePrice());
            preparedStatement.setString(6, transportModel.getBankName());
            preparedStatement.setString(7, transportModel.getBankBranch());
            preparedStatement.setString(8, transportModel.getBankNo());
            preparedStatement.setInt(9, transportModel.getId());

            return preparedStatement.executeUpdate() > 0;

        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
    public boolean deleteTransportData(int id) {
        Connection connection = null;
        PreparedStatement preparedStatement = null;

        try {
            connection = DatabaseConnection.getConnection();
            String sql = "DELETE FROM admin_portal WHERE id = ?"; 
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, id);

            int rowsAffected = preparedStatement.executeUpdate(); 
            return rowsAffected > 0; 
        } catch (SQLException e) {
            e.printStackTrace(); 
            return false;
        } 
    
 

}
}