<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Deliver your Packages</title>
    <style>
        body {
            display: flex;
            flex-direction: column;
            min-height: 100vh; /* Make sure the body takes at least the full height of the viewport */
            font-family: Arial, sans-serif;
            background-image: url('image/back_pk02.jpg'); /* Background image for entire body */
            background-size: cover; /* Cover the entire area */
            background-position: center; /* Center the background image */
            background-repeat: no-repeat; /* Prevent repetition of the image */
            margin: 0;
            padding: 0;
        }

        header {
            background-color: rgba(27, 30, 59, 0.8); /* Semi-transparent background for better readability */
            color: white;
            padding: 10px 20px;
            text-align: right; /* Aligns nav bar to the right */
        }

        nav ul {
            list-style-type: none;
            padding: 0;
            display: inline-block;
            
        }

        nav ul li {
            display: inline;
            margin: 0 15px;
        }

        nav ul li a {
        	padding: 10px 15px;
            color: white;
            text-decoration: none;
            font-weight: bold;
            transition: box-shadow 0.3s; /* Add transition for shadow effect */
          
	          	
        }

        nav ul li a:hover {
            box-shadow: 7 4px 8px rgba(0, 0, 0, 0.3); /* Shadow effect on hover */
            background-color: #616484;
        }

        main {
            flex: 1; /* Allow main to grow and take available space */
            padding: 20px;
            background-color: rgba(27, 30, 59, 0.6); /* Semi-transparent white background for readability  */
            max-width: 800px;
            margin: 20px auto;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h1, h2 {
            color: #e9dede;
        }
        
        h1{
        	 text-align: center;
        }
        p{
        	color: #e9dede;
        }

        section {
            margin-bottom: 20px;
        }

        ul {
            margin: 10px 0;
            padding-left: 20px;
            color: #faf2f2;
        }

        .buttons {
            display: flex;
            justify-content: space-around;
            margin-top: 20px;
        }

        button {
            background-color: #4d66c4;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        button:hover {
            background-color: #22b9d7;
        }

        footer {
            text-align: center;
            padding: 10px 0;
            background-color: #333;
            color: white;
            width: 100%;
        }
    </style>
</head>
<body>
    <header>
        <nav>
            <ul>
                <li><a href="index.jsp">Home</a></li>
                <li><a href="ride.jsp">Ride</a></li>
                <li><a href="food.jsp">Drive</a></li>
                <li><a href="food.jsp">About Us</a></li>
                <li><a href="food.jsp">Logout</a></li>
            </ul>
        </nav>
    </header>

    <main>
        <h1>Package Delivery</h1>
        <section>
            <h2>Package Delivery Rules</h2>
            <p>We ensure safe and timely delivery of packages. Please follow our delivery rules:</p>
            <ul>
                <li>Packages must be securely packed.</li>
                <li>No hazardous materials are allowed.</li>
                <li>Ensure accurate address and contact information.</li>
            </ul>
        </section>

        <section>
            <h2>Pricing</h2>
            <p>Our pricing is based on distance and package weight:</p>
            <ul>
                <li>Under 5 kg: $5</li>
                <li>5 kg - 10 kg: $10</li>
                <li>10 kg - 20 kg: $15</li>
                <li>Above 20 kg: Please contact us for a quote.</li>
            </ul>
        </section>

        <div class="buttons">
            <button onclick="location.href='SendPackage.jsp'">New Delivery</button>
            <button onclick="location.href='GetAllServlet'">Delivery History</button>
        </div>
    </main>

    <footer>
        <p>&copy; 2024 RideMe. All rights reserved.</p>
    </footer>
</body>
</html>