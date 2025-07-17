package systemadmin;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DatabaseConnection {

   
    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/transportsystem";
    private static final String USERNAME = "root";
    private static final String PASSWORD = "Kaveesha123@";  

   
    public static Connection getConnection() {
        Connection connection = null;
        try {
        
            Class.forName("com.mysql.cj.jdbc.Driver");

            connection = DriverManager.getConnection(JDBC_URL, USERNAME, PASSWORD);
            System.out.println("Connected to the database successfully.");
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            System.out.println("Connection failed!");
        }
        return connection;
    }

    
    public static void closeConnection(Connection connection) {
        try {
            if (connection != null && !connection.isClosed()) {
                connection.close();
                System.out.println("Connection closed.");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

	
}