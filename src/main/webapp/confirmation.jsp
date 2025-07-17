<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Confirmation Page</title>
</head>
<body>
    <h1>Data Inserted Successfully!</h1>
    <h2>Inserted Data:</h2>
    <ul>
        <li>Min Distance: <%= request.getAttribute("minDistance") %></li>
        <li>Max Distance: <%= request.getAttribute("maxDistance") %></li>
        <li>Price: <%= request.getAttribute("price") %></li>
        <li>Vehicle Number: <%= request.getAttribute("vehicleNumber") %></li>
        <li>Vehicle Price: <%= request.getAttribute("vehiclePrice") %></li>
        <li>Bank Name: <%= request.getAttribute("bankName") %></li>
        <li>Bank Branch: <%= request.getAttribute("bankBranch") %></li>
        <li>Bank No: <%= request.getAttribute("bankNo") %></li>
    </ul>
    <a href="adminlogin.jsp">Go back to Admin Login</a>
</body>
</html>
