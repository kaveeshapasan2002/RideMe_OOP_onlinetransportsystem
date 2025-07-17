


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Online Transport System</title>
   
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            background-color: #000;
            color: white;
            margin: 0;
            padding: 0;
        }

   
        .navbar {
            position: sticky;
            top: 0;
            z-index: 1000;
            transition: background-color 0.3s ease;
        }

        .navbar.scrolled {
            background-color: rgba(0, 0, 0, 0.9);
        }

        .navbar-brand {
            font-weight: bold;
            font-size: 1.5rem;
            color: #fff !important;
        }

        .navbar-dark .navbar-nav .nav-link {
            font-size: 1.1rem;
            color: rgba(255, 255, 255, 0.8);
            padding-right: 20px;
        }

        .navbar-dark .navbar-nav .nav-link:hover {
            color: #fff;
            text-decoration: underline;
        }

   
        .main-container {
            display: flex;
            justify-content: space-between;
            align-items: center;
            min-height: 80vh;
            padding: 60px;
        }

        .left-section {
            max-width: 600px;
        }

        .left-section h1 {
            font-size: 4rem;
            font-weight: 700;
            margin-bottom: 20px;
        }

        .left-section p {
            font-size: 1.2rem;
            margin-bottom: 30px;
            color: #d3d3d3;
        }

        .input-group {
            margin-bottom: 15px;
        }

        .form-control {
            background-color: #222;
            color: white;
            border: 1px solid #444;
            padding: 10px 15px;
        }

        .form-control:focus {
            border-color: #555;
            box-shadow: none;
        }

        .btn-custom {
            background-color: #1a73e8;
            color: white;
            padding: 10px 25px;
            font-size: 1.1rem;
            border: none;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        .btn-custom:hover {
            background-color: #1557b6;
        }

        .right-section img {
    width: 100%; /* Ensure the image takes full width of the container */
    height: 600px; /* Maintain aspect ratio */
    border-radius: 50px;
    box-shadow: 0px 20px 15px rgba(0, 0, 0, 0.5);
}


        /* Footer Styling */
        footer {
            background: linear-gradient(135deg, #000428, #004e92);
            padding: 50px 0;
            color: rgba(255, 255, 255, 0.9);
            margin-top: 50px;
        }

        .footer-content {
            display: flex;
            justify-content: space-between;
            flex-wrap: wrap;
            gap: 20px;
            padding: 0 60px;
        }

        .footer-logo h2 {
            font-size: 2.2rem;
            font-weight: bold;
            color: #fff;
            margin-bottom: 15px;
        }

        .footer-logo p {
            color: rgba(255, 255, 255, 0.7);
            font-size: 1rem;
        }

        .footer-links h4 {
            color: #fff;
            font-size: 1.3rem;
            margin-bottom: 20px;
        }

        .footer-links ul {
            list-style-type: none;
            padding: 0;
        }

        .footer-links ul li a {
            color: rgba(255, 255, 255, 0.8);
            text-decoration: none;
            font-size: 1rem;
            margin-bottom: 10px;
            display: block;
            transition: color 0.3s;
        }

        .footer-links ul li a:hover {
            color: #1a73e8;
        }

        .social-icons h4 {
            color: #fff;
            font-size: 1.3rem;
            margin-bottom: 20px;
        }

        .social-icons a {
            color: rgba(255, 255, 255, 0.8);
            margin-right: 15px;
            font-size: 1.8rem;
            transition: color 0.3s ease;
        }

        .social-icons a:hover {
            color: #1a73e8;
        }

        .footer-bottom {
            text-align: center;
            padding-top: 20px;
            font-size: 0.9rem;
            color: rgba(255, 255, 255, 0.7);
            border-top: 1px solid rgba(255, 255, 255, 0.2);
            margin-top: 20px;
        }

        .footer-bottom p {
            margin: 0;
        }

        @media (max-width: 768px) {
            .footer-content {
                flex-direction: column;
                align-items: center;
            }

            .footer-logo, .footer-links, .social-icons {
                text-align: center;
                margin-bottom: 20px;
            }
        }
    </style>
</head>
<body>
    
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">Ride me</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="homePage.jsp">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="ride.jsp">Ride</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="drive.jsp">Drive</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="package.jsp">Package</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="aboutus.jsp">About Us</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="login.jsp">Login</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    
    <div class="container-fluid">
        <div class="main-container">
            <div class="left-section">
                <h1>Go anywhere with Our Service</h1>
                <p>Request a ride, hop in, and you’re on your way.</p>
                <div class="input-group">
                    <input type="text" class="form-control" placeholder="Pickup Location">
                </div>
                <div class="input-group">
                    <input type="text" class="form-control" placeholder="Drop-off Location">
                </div>
                
                <button  class="btn btn-custom">Request a Ride</button>
            </div>
            <div class="right-section">
                <img src="images/mobile-app-location-digital-art.jpg" alt="Ride Service Image">
            </div>
        </div>
    </div>


    <footer>
        <div class="footer-content">
            <div class="footer-logo">
                <h2>Ride me</h2>
                <p>Fast and reliable rides at your fingertips.</p>
            </div>
            <div class="footer-links">
                <h4>Quick Links</h4>
                <ul>
                    <li><a href="#">Terms of Service</a></li>
                    <li><a href="#">Privacy Policy</a></li>
                    <li><a href="#">Contact Us</a></li>
                </ul>
            </div>
            <div class="social-icons">
                <h4>Follow Us</h4>
                <a href="#" class="fab fa-facebook"></a>
                <a href="#" class="fab fa-twitter"></a>
                <a href="#" class="fab fa-instagram"></a>
                <a href="#" class="fab fa-linkedin"></a>
            </div>
        </div>
        <div class="footer-bottom">
            <p>&copy; 2024 Ride me. All rights reserved.</p>
        </div>
    </footer>

   
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
