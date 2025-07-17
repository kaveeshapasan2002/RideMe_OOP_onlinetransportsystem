<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Admin Login Portal</title>
    <!-- Bootstrap CSS -->
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
            margin: 0 auto;
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
            width: 100%;
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

        fieldset {
            margin-bottom: 20px;
            padding: 15px;
            border: 1px solid #ccc;
        }
    
        legend {
            font-size: 1.5rem;
            font-weight: bold;
            color: #004e92;
            padding: 0 10px;
            border-bottom: 2px solid #004e92;
            margin-bottom: 10px;
        }
    
        label {
            display: block;
            margin-top: 10px;
            font-weight: bold;
        }
    
        input[type="number"],
        input[type="text"] {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
            margin-bottom: 10px;
            border-radius: 4px;
            border: 1px solid #ccc;
        }
    
        input[type="submit"] {
            background-color: #004e92;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 1rem;
        }
    
        input[type="submit"]:hover {
            background-color: #003d75;
        }
    </style>
    
    <script>
        // JavaScript validation function
        function validateForm() {
            // Fetching values from form fields
            var minDistance = document.getElementById("minDistance").value;
            var maxDistance = document.getElementById("maxDistance").value;
            var price = document.getElementById("price").value;
            var vehicleNumber = document.getElementById("vehicle_number").value;
            var vehiclePrice = document.getElementById("vehicle_price").value;
            var bankName = document.getElementById("bank_name").value;
            var bankBranch = document.getElementById("bank_branch").value;
            var bankNo = document.getElementById("bank_no").value;

            // Validate numeric fields (minDistance, maxDistance, price, vehiclePrice) for positive values
            if (minDistance <= 0 || maxDistance <= 0 || price <= 0 || vehiclePrice <= 0) {
                alert("Distance and price values must be positive numbers.");
                return false; // Prevent form submission
            }

            // Validate that maxDistance is greater than minDistance
            if (parseFloat(maxDistance) <= parseFloat(minDistance)) {
                alert("Maximum distance must be greater than minimum distance.");
                return false; // Prevent form submission
            }

            // Validate that vehicle number and bank fields are not empty
            if (vehicleNumber == "" || bankName == "" || bankBranch == "" || bankNo == "") {
                alert("All fields must be filled out.");
                return false; // Prevent form submission
            }

            // Validate that bank number is numeric and of appropriate length (e.g., 8-12 digits)
            if (isNaN(bankNo) || bankNo.length < 8 || bankNo.length > 12) {
                alert("Bank account number must be a numeric value with 8-12 digits.");
                return false; // Prevent form submission
            }

            return true; // If all validations pass, allow form submission
        }
    </script>
    
</head>
<body>

    <div class="container">
        <h2 class="text-center">Admin Portal Form</h2>

        <div class="form-container">
           <form action="adminInsertServlet" method="post" onsubmit="return validateForm()">
    
            <!-- Pricing Section -->
            <fieldset>
                <legend>Pricing</legend>
                
                <label for="minDistance">Minimum Distance (km):</label>
                <input type="number" id="minDistance" name="minDistance" step="0.01" required>
                
                <label for="maxDistance">Maximum Distance (km):</label>
                <input type="number" id="maxDistance" name="maxDistance" step="0.01" required>
                
                <label for="price">Price (Rs):</label>
                <input type="number" id="price" name="price" step="0.01" required>
            </fieldset>
    
            <!-- Rent Vehicle Section -->
            <fieldset>
                <legend>Rent Vehicle</legend>
                
                <label for="vehicle_number">Vehicle Number:</label>
                <input type="text" id="vehicle_number" name="vehicle_number" required>
                
                <label for="vehicle_price">Vehicle Price (Rs):</label>
                <input type="number" id="vehicle_price" name="vehicle_price" step="0.01" required>
            </fieldset>
    
            <!-- Add Banking Section -->
            <fieldset>
                <legend>Add Banking</legend>
                
                <label for="bank_name">Bank Name:</label>
                <input type="text" id="bank_name" name="bank_name" required>
                
                <label for="bank_branch">Bank Branch:</label>
                <input type="text" id="bank_branch" name="bank_branch" required>
                
                <label for="bank_no">Bank Account Number:</label>
                <input type="text" id="bank_no" name="bank_no" required>
            </fieldset>
    
            <input type="submit" value="Submit">
        </form>

        </div>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
