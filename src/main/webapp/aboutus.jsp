<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us | Online Transport System</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            background-color: #f9f9f9;
            color: #333;
        }

        /* Navbar Styling */
        .navbar-dark .navbar-nav .nav-link {
            font-size: 1.1rem;
            color: rgba(255, 255, 255, 0.8);
            padding-right: 20px;
        }

        .navbar-dark .navbar-nav .nav-link:hover {
            color: #fff;
            text-decoration: underline;
        }

        /* Header Section */
        .about-header {
            background: linear-gradient(135deg, #000428, #004e92);
            color: white;
            padding: 80px 0;
            text-align: center;
        }

        .about-header h1 {
            font-size: 3rem;
            font-weight: bold;
            margin-bottom: 20px;
        }

        .about-header p {
            font-size: 1.3rem;
        }

        /* About Us Section */
        .about-content {
            padding: 60px 40px;
        }

        .about-content h2 {
            font-size: 2.5rem;
            margin-bottom: 20px;
        }

        .about-content p {
            font-size: 1.1rem;
            color: #555;
            margin-bottom: 30px;
            line-height: 1.8;
        }

        .about-mission, .about-values {
            margin-bottom: 50px;
        }

        .about-values ul {
            list-style: none;
            padding: 0;
        }

        .about-values ul li {
            font-size: 1.2rem;
            color: #444;
            margin-bottom: 15px;
        }

        .about-values ul li::before {
            content: "✓ ";
            color: #004e92;
            font-weight: bold;
        }

        /* Team Section */
        .team-section {
            background-color: #fff;
            padding: 60px 40px;
        }

        .team-section h2 {
            font-size: 2.5rem;
            margin-bottom: 40px;
        }

        .team-member {
            text-align: center;
            margin-bottom: 30px;
        }

        .team-member img {
            border-radius: 50%;
            width: 150px;
            height: 150px;
            object-fit: cover;
            margin-bottom: 15px;
        }

        .team-member h4 {
            font-size: 1.3rem;
            font-weight: bold;
            margin-bottom: 5px;
        }

        .team-member p {
            font-size: 1rem;
            color: #777;
        }

        /* Footer Styling */
        footer {
            background: linear-gradient(135deg, #000428, #004e92);
            color: rgba(255, 255, 255, 0.9);
            padding: 50px 0;
            margin-top: 50px;
        }

        .footer-content {
            text-align: center;
        }

        .footer-bottom {
            font-size: 0.9rem;
            color: rgba(255, 255, 255, 0.7);
        }
    </style>
</head>
<body>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">TransportService</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="home.jsp">Home</a>
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
                        <a class="nav-link active" href="aboutus.jsp">About Us</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="signup.jsp">Sign Up</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- About Us Header -->
    <section class="about-header">
        <div class="container">
            <h1>About Us</h1>
            <p>Your reliable partner for seamless transportation.</p>
        </div>
    </section>

    <!-- About Us Content -->
    <section class="about-content container">
        <div class="about-mission">
            <h2>Our Mission</h2>
            <p>
                At TransportService, our mission is to revolutionize transportation by providing safe, reliable, and affordable rides across the city. 
                We aim to create a seamless user experience that connects passengers with drivers instantly, ensuring convenience and satisfaction.
            </p>
        </div>

        <div class="about-values">
            <h2>Our Values</h2>
            <ul>
                <li>Customer First: Ensuring every ride is safe and convenient.</li>
                <li>Innovation: Always improving our services through technology.</li>
                <li>Efficiency: Minimizing wait times and maximizing customer satisfaction.</li>
                <li>Teamwork: Working collaboratively to drive success and value.</li>
            </ul>
        </div>
    </section>

    <!-- Team Section -->
    <section class="team-section">
        <div class="container">
            <h2>Meet Our Team</h2>
            <div class="row">
                <!-- Team Member 1 -->
                <div class="col-md-4 team-member">
                    <img src="images/Screenshot 2024-10-15 at 16.01.41.png" alt="Team Member 1">
                    <h4>Kaveesha</h4>
                    <p>CEO & Founder</p>
                </div>
                <!-- Team Member 2 -->
                <div class="col-md-4 team-member">
                    <img src="images/Screenshot 2024-10-15 at 16.00.53.png" alt="Team Member 2">
                    <h4>Chamithu</h4>
                    <p>CEO & Founder</p>
                </div>
                <!-- Team Member 3 -->
                <div class="col-md-4 team-member">
                    <img src="images/Screenshot 2024-10-15 at 16.02.11.png" alt="Team Member 3">
                    <h4>Aenuka</h4>
                    <p>Head of Technology</p>
                </div>
                <div class="col-md-4 team-member">
                    <img src="images/Screenshot 2024-10-15 at 16.01.23.png" alt="Team Member 4">
                    <h4>Vishwa</h4>
                    <p>Deputy Head of Technology</p>
                </div>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer>
        <div class="footer-content">
            <h2>TransportService</h2>
            <p>Moving you across cities and towns.</p>
        </div>
        <div class="footer-bottom">
            <p>© 2024 TransportService. All rights reserved.</p>
        </div>
    </footer>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
