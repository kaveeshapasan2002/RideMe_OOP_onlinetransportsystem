<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Transport Details</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* Custom CSS */
        body {
            background-color: #f8f9fa;
        }
        h2 {
            margin: 20px 0;
        }
        table {
            margin: 20px 0;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2 class="text-center">Transport Details</h2>
        
       <div class="text-right mb-3">
            <a href="adminlogin.jsp" class="btn btn-primary">Add Details</a>
        </div>
 
        <table class="table table-bordered table-striped">
            <thead class="thead-dark">
                <tr>
                    <th>ID</th>
                    <th>Min Distance</th>
                    <th>Max Distance</th>
                    <th>Price</th>
                    <th>Vehicle Number</th>
                    <th>Vehicle Price</th>
                    <th>Bank Name</th>
                    <th>Bank Branch</th>
                    <th>Bank No</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="transport" items="${transportList}">
                    <tr>
                        <td>${transport.id}</td>
                        <td>${transport.minDistance}</td>
                        <td>${transport.maxDistance}</td>
                        <td>${transport.price}</td>
                        <td>${transport.vehicleNumber}</td>
                        <td>${transport.vehiclePrice}</td>
                        <td>${transport.bankName}</td>
                        <td>${transport.bankBranch}</td>
                        <td>${transport.bankNo}</td>
                        <td>
                            <a href="UpdateTransportServlet?id=${transport.id}" class="btn btn-warning btn-sm">Update</a>
                            <a href="DeleteTransportServlet?id=${transport.id}" class="btn btn-danger btn-sm" onclick="return confirmDelete();">Delete</a>
                             
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>

    <!-- JavaScript -->
    <script>
        function confirmDelete() {
            return confirm('Are you sure you want to delete this transport record?');
        }
    </script>
    
    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
