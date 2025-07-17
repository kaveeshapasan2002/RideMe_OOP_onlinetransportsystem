<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard - ride me</title>
    <link rel="stylesheet" href="CSS/dashboard.css">
    
     <!-- Background Image -->
    <style>
        body {
            background-image: url("${pageContext.request.contextPath}/images/premium_photo-1661922380380-e214c7130cad.avif");
            background-size: cover;
            background-position: center;
        }

        /* Style for Logout Button */
        .logout-btn {
            background-color: #ff4b5c;
            color: white;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
            font-size: 16px;
            margin-top: 10px;
        }

        .logout-btn:hover {
            background-color: #ff2e44;
        }
    </style>
    
    
    
</head>
<body>

<!-- Header Section -->
    <header>
        <div class="header-container">
            <h1>Ride me</h1>
            <nav class="main-nav">
                <a href="homePage.jsp" class="nav-link">Home</a>
                <a href="movies.html" class="nav-link">Ride</a>
                <a href="tvseries.html" class="nav-link">Drive</a>
                  <a href="tvseries.html" class="nav-link">Package</a>
                <a href="aboutus.jsp" class="nav-link">About Us</a>
                
                
            </nav>
            <div class="auth-buttons">
                
            </div>
        </div>
    </header>
    
    <div class="container">
        <!-- Sidebar Navigation -->
        <nav class="sidebar">
            <ul>
            	<li><a href="displayreg.jsp">User Management</a></li>
            	 <li><a href="GetAllServlet">Admin Management</a></li>
                <li><a href="">Ride Management</a></li>
                <li><a href="">Driver Management</a></li>
                <li><a href="">Package Management</a></li>
                
              
            </ul>
        </nav>

        <!-- Main Content Area -->
        <div class="main-content">
            <div class="admin-info">
                <h1>Welcome, ${adminName}</h1>
                <p>Manage Ride me efficiently with your tools to the left.</p>
                   
                    <!-- Logout Button -->
                   <!-- Logout Button -->
<form action="LogoutServlet" method="get">
    <button type="submit" class="logout-btn">Logout</button>
</form>
                </div>
            </div>
        </div>
    </div>

   
    
    
    <!-- Footer Section -->
    <footer>
        <nav class="footer-nav">
            <a href="homePage.jsp" class="footer-link">Home</a>
            <a href="movies.html" class="footer-link">Ride</a>
            <a href="tvseries.html" class="footer-link">Drive</a>
            <a href="aboutus.jsp" class="footer-link">About Us</a>
            <a href="contact.html" class="footer-link">package</a>
            <a href="profile.html" class="footer-link">Profile</a>
        </nav>
        <p>&copy; 2024 Ride me. All rights reserved.</p>
    </footer>
  
    
</body>
</html>