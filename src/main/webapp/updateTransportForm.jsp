<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Transport</title>
    
      <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #2c2c2c; /* Light black background */
            color: white; /* White text for better contrast */
        }
        h2 {
            margin-bottom: 20px;
        }
        .form-container {
            max-width: 400px;
            margin:0 auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #3c3c3c; /* Darker background for form */
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.5); /* Add shadow for depth */
        }
        input[type="text"], input[type="number"] {
            width: 100%;
            padding: 10px;
            margin: 8px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            background-color: #4c4c4c; /* Input background */
            color: white; /* Input text color */
        }
        input[type="submit"] {
            width: 50%;
            background-color: #28a745; /* Bootstrap success color */
            color: white;
            padding: 10px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s ease; /* Smooth transition */
        }
        input[type="submit"]:hover {
            background-color: #218838; /* Darker green on hover */
        }
    </style>
</head>
<body>
    <h2>Update Transport</h2>

    <form action="UpdateTransportServlet" method="POST">
        <input type="hidden" name="id" value="${transport.id}" />

        <label for="minDistance">Min Distance (km):</label>
        <input type="text" id="minDistance" name="minDistance" value="${transport.minDistance}" required /><br/>

        <label for="maxDistance">Max Distance (km):</label>
        <input type="text" id="maxDistance" name="maxDistance" value="${transport.maxDistance}" required /><br/>

        <label for="price">Price (Rs):</label>
        <input type="text" id="price" name="price" value="${transport.price}" required /><br/>

        <label for="vehicleNumber">Vehicle Number:</label>
        <input type="text" id="vehicleNumber" name="vehicleNumber" value="${transport.vehicleNumber}" required /><br/>

        <label for="vehiclePrice">Vehicle Price (Rs):</label>
        <input type="text" id="vehiclePrice" name="vehiclePrice" value="${transport.vehiclePrice}" required /><br/>

        <label for="bankName">Bank Name:</label>
        <input type="text" id="bankName" name="bankName" value="${transport.bankName}" required /><br/>

        <label for="bankBranch">Bank Branch:</label>
        <input type="text" id="bankBranch" name="bankBranch" value="${transport.bankBranch}" required /><br/>

        <label for="bankNo">Bank Account Number:</label>
        <input type="text" id="bankNo" name="bankNo" value="${transport.bankNo}" required /><br/>

        <input type="submit" value="Update Transport" />
    </form>
       <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
