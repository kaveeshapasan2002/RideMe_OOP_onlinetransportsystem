<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Drivers Profile</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f9f9f9;
        padding: 0;
        margin: 0;
    }
    .navbar {
        background-color: #007bff;
        padding: 10px 20px;
        display: flex;
        justify-content: space-between;
        align-items: center;
        color: #fff;
    }
    .navbar h1 {
        margin: 0;
        font-size: 24px;
    }
    .navbar .nav-buttons {
        display: flex;
        gap: 15px;
    }
    .nav-button {
        background-color: #fff;
        color: #007bff;
        padding: 8px 15px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        text-decoration: none;
        font-weight: bold;
    }
    .nav-button:hover {
        background-color: #0056b3;
        color: #fff;
    }
    .container {
        display: flex;
        flex-wrap: wrap;
        justify-content: center;
        gap: 20px;
        padding: 20px;
    }
    .profile-card {
        background-color: #fff;
        width: 300px;
        border: 1px solid #ddd;
        border-radius: 8px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        text-align: center;
        padding: 20px;
        overflow: hidden;
    }
    .profile-photo {
        width: 150px;
        height: 150px;
        border-radius: 50%;
        border: 2px solid #007bff;
        object-fit: cover;
        margin-bottom: 15px;
    }
    .profile-info {
        margin: 10px 0;
        font-size: 16px;
        color: #333;
    }
    .profile-info span {
        font-weight: bold;
        display: block;
        margin-bottom: 5px;
    }
    .button {
        display: inline-block;
        width: 80%;
        padding: 10px;
        margin-top: 15px;
        border: none;
        cursor: pointer;
        text-align: center;
        border-radius: 5px;
        text-decoration: none;
    }
    .edit-button {
        background-color: #007bff;
        color: #fff;
        margin-bottom: 10px;
    }
    .edit-button:hover {
        background-color: #0056b3;
    }
    .remove-button {
        background-color: #dc3545;
        color: #fff;
    }
    .remove-button:hover {
        background-color: #c82333;
    }
</style>
<script>
    function confirmDeletion(driverId) {
        if (confirm("Are you sure you want to remove this account?")) {
            window.location.href = "removeAccount.jsp?id=" + driverId;
        }
    }
</script>
</head>
<body>
    <div class="navbar">
        <h1>Driver Profiles</h1>
        <div class="nav-buttons">
            <a href="allDrivers.jsp" class="nav-button">See Other Drivers</a>
            <a href="DriverSignup.jsp" class="nav-button">Sign Out</a>
        </div>
    </div>
    <div class="container">
        <c:forEach var="drivers" items="${allDrivers}">
            <div class="profile-card">
                <img src="uploads/${drivers.PPN}" class="profile-photo" alt="Profile Photo">
                <div class="profile-info">
                    <span>ID:</span> ${drivers.id}
                </div>
                <div class="profile-info">
                    <span>Username:</span> ${drivers.username}
                </div>
                <div class="profile-info">
                    <span>Email:</span> ${drivers.email}
                </div>
                <div class="profile-info">
                    <span>Password:</span> ${drivers.password}
                </div>
                <a href="editProfile.jsp?id=${drivers.id}&username=${drivers.username}&email=${drivers.email}&PPN=${drivers.PPN}" class="button edit-button">Edit Profile</a>
                <button onclick="confirmDeletion(${drivers.id})" class="button remove-button">Remove Account</button>
            </div>
        </c:forEach>
    </div>
</body>
</html>
