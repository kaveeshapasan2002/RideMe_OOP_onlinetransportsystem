<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="Registration.RegModel" %>
<%@ page import="Registration.RegController" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Profiles</title>
    <link rel="stylesheet" href="CSS/insert.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }
        table, th, td {
            border: 1px solid #ccc;
        }
        th, td {
            padding: 10px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
        h2 {
            text-align: center;
        }
        .action-btn {
            padding: 5px 10px;
            background-color: #007BFF;
            color: white;
            border: none;
            cursor: pointer;
            text-decoration: none;
        }
        .delete-btn {
            background-color: #FF0000;
        }
    </style>
</head>
<body>
    <h2>User Profiles</h2>

    <table>
        <thead>
            <tr>
                <th>User ID</th>
                <th>Name</th>
                <th>Username</th>
                <th>Email</th>
                <th>Password</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <%
                // Fetch all users from the database
                List<RegModel> users = RegController.getAllUsers();
                
                // Handle delete requests
                String action = request.getParameter("action");
                if (action != null && action.equals("delete")) {
                    String userID = request.getParameter("user_id");
                    // Call the delete function from RegController
                    boolean isDeleted = RegController.deletedata(userID);
                    
                    if (isDeleted) {
                        out.println("<p>User deleted successfully.</p>");
                    } else {
                        out.println("<p>Deletion failed.</p>");
                    }
                }
                
                // Display each user's information with Update and Delete options
                for (RegModel user : users) {
            %>
            <tr>
                <td><%= user.getUser_id() %></td>
                <td><%= user.getName() %></td>
                <td><%= user.getUsername() %></td>
                <td><%= user.getEmail() %></td>
                <td><%= user.getPassword() %></td>
                <td>
                    <!-- Link to Update User Details -->
                   
                    <!-- Delete button -->
                    <form method="post" style="display:inline;">
                        <input type="hidden" name="user_id" value="<%= user.getUser_id() %>">
                        <button type="submit" name="action" value="delete" class="action-btn delete-btn" onclick="return confirm('Are you sure you want to delete this user?');">Delete</button>
                    </form>
                </td>
            </tr>
            <%
                }
            %>
        </tbody>
    </table>
</body>
</html>
