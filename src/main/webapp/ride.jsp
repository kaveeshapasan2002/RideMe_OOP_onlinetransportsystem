<%@ page language="java" contentType="text/html; charset=UTF-8"
 
 pageEncoding="UTF-8"%>
 
 <%@ page import="javax.servlet.http.*, javax.servlet.*" %>
<%
    HttpSession userSession = request.getSession(false); // Get existing session
    if (session == null || session.getAttribute("loggedInUser") == null) {
        response.sendRedirect("login.jsp"); // Redirect if not logged in
        return;
    }
%>   
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Transportation System</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            color: #333;
        }

        header {
            background-color: #333;
            color: #fff;
            padding: 10px 0;
        }

        nav {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 0 20px;
        }

        nav .logo h1 {
            font-size: 24px;
        }

        nav .logo span {
            color: #00d9ff;
        }

        nav ul {
            list-style: none;
            display: flex;
        }

        nav ul li {
            margin-left: 20px;
        }

        nav ul li a {
            color: #fff;
            text-decoration: none;
            font-size: 18px;
        }

        .search-section {
            text-align: center;
            margin: 40px 0;
        }

        .search-section h2 {
            font-size: 36px;
            margin-bottom: 20px;
        }

        .search-bar {
            display: flex;
            justify-content: center;
            gap: 10px;
        }

        .search-bar input {
            padding: 10px;
            font-size: 18px;
            width: 300px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .search-btn {
            padding: 10px 20px;
            font-size: 18px;
            background-color: #00d9ff;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .search-btn:hover {
            background-color: #00a3cc;
        }

        .map-section {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 300px;
            background-color: #fff;
            margin: 40px 0;
            border: 1px solid #ccc;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }

        .map-placeholder {
            text-align: center;
            color: #aaa;
        }

        .map-placeholder i {
            color: #00d9ff;
        }

        .vehicle-section {
            margin: 40px 0;
            text-align: center;
        }

        .vehicle-section h2 {
            font-size: 30px;
            margin-bottom: 20px;
        }

        .vehicles {
            display: flex;
            justify-content: center;
            gap: 30px;
        }

        .vehicle-option {
            font-size: 18px;
            background-color: #fff;
            padding: 20px;
            width: 200px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            display: flex;
            flex-direction: column;
            align-items: center;
            cursor: pointer;
            transition: transform 0.3s;
        }

        .vehicle-option:hover {
            transform: scale(1.05);
        }

        .vehicle-option input {
            margin-bottom: 10px;
        }

        .vehicle-option label {
            font-size: 20px;
            font-weight: bold;
            color: #333;
        }

        .vehicle-option .icon {
            font-size: 30px;
            color: #00d9ff;
            margin-top: 10px;
        }

        .payment-section {
            margin: 40px 0;
            text-align: center;
        }

        .payment-section h2 {
            font-size: 30px;
            margin-bottom: 20px;
        }

        .payment-options {
            display: flex;
            flex-direction: column;
            align-items: center;
            gap: 20px;
        }

        .payment-option {
            font-size: 18px;
            background-color: #fff;
            padding: 20px;
            width: 300px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            display: flex;
            align-items: center;
            justify-content: space-between;
            cursor: pointer;
            transition: transform 0.3s;
        }

        .payment-option:hover {
            transform: scale(1.05);
        }

        .payment-option input {
            margin-right: 10px;
        }

        .payment-option label {
            font-size: 20px;
            font-weight: bold;
            color: #333;
        }

        .payment-option .icon {
            font-size: 30px;
            color: #00d9ff;
        }

        footer {
            text-align: center;
            padding: 20px;
            background-color: #333;
            color: #fff;
        }

        footer p {
            margin: 0;
        }
    </style>
</head>
<body>
    <header>
        <nav>
            <div class="logo">
                <h1>Transport<span>Hub</span></h1>
            </div>
            <ul>
                <li><a href="#">Home</a></li>
                <li><a href="#">Services</a></li>
                <li><a href="#">Contact</a></li>
            </ul>
        </nav>
    </header>
<form action="InsertServlet" method="post">
    <section class="search-section">
        <h2>Find Your Ride</h2>
        <div class="search-bar">
            <input type="text" name="location" placeholder="Enter pickup location">
            <input type="text" name="destination" placeholder="Enter destination">
            
        </div>
    </section>

    <section class="map-section">
        <h3>Map Section</h3>
        <div class="map-placeholder">
            <!-- Placeholder for the map -->
            <i class="fas fa-map-marked-alt fa-5x"></i>
            <p>Interactive map will be displayed here</p>
        </div>
    </section>

    <!-- Choose Vehicle Section -->
    
        <section class="vehicle-section">
        <h2>Choose Your Vehicle</h2>
        
        
        <div class="vehicles">
               <div class="vehicle-option">
                <input type="radio" id="car" name="VehicleType" value="car">
                <label for="car">Car</label>
                <i class="fas fa-car-side icon"></i>
            	</div>
            <div class="vehicle-option">
                <input type="radio" id="three-wheel" name="VehicleType" value="three-wheel">
                <label for="three-wheel">Three-Wheel</label>
                <i class="fas fa-taxi icon"></i>
            </div>
    

            <div class="vehicle-option">
                <input type="radio" id="bike" name="VehicleType" value="bike">
                <label for="bike">Bike</label>
                <i class="fas fa-motorcycle icon"></i>
            </div>

        </div>
    </section>

    <!-- Choose Payment Section -->
    <section class="payment-section">
        <h2>Select Payment Method</h2>
        <div class="payment-options">
            <div class="payment-option">
                <input type="radio" id="cash" name="PaymentMethod" value="cash">
                <label for="cash">Cash</label>
                <i class="fas fa-money-bill-wave icon"></i>
 
        </div>
        
            <div class="payment-option">
                <input type="radio" id="card" name="PaymentMethod" value="card">
                <label for="card">Credit/Debit Card</label>
                <i class="fas fa-credit-card icon"></i>
            </div>
    </section>
    <section class="vehicle-section">
    <input type="submit" value="Search Ride" class="search-btn"> 
     </section>
</form>
    <footer>
        <p>&copy; 2024 TransportHub. All rights reserved.</p>
    </footer>
</body>
</html>