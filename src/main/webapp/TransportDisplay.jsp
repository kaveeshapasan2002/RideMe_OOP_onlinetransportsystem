<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Transport Details</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            padding: 8px 12px;
            border: 1px solid #ccc;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>

<h2 style="text-align:center">Inserted Transport Details</h2>

<% 
    // Get the transport data from the request attributes
    String minDistance = (String) request.getAttribute("minDistance");
    String maxDistance = (String) request.getAttribute("maxDistance");
    String price = (String) request.getAttribute("price");
    String vehicleNumber = (String) request.getAttribute("vehicleNumber");
    String vehiclePrice = (String) request.getAttribute("vehiclePrice");
    String bankName = (String) request.getAttribute("bankName");
    String bankBranch = (String) request.getAttribute("bankBranch");
    String bankNo = (String) request.getAttribute("bankNo");
%>

<table>
    <tr>
        <th>Field</th>
        <th>Value</th>
    </tr>
    <tr>
        <td>Minimum Distance (km)</td>
        <td><%= minDistance %></td>
    </tr>
    <tr>
        <td>Maximum Distance (km)</td>
        <td><%= maxDistance %></td>
    </tr>
    <tr>
        <td>Price (Rs)</td>
        <td><%= price %></td>
    </tr>
    <tr>
        <td>Vehicle Number</td>
        <td><%= vehicleNumber %></td>
    </tr>
    <tr>
        <td>Vehicle Price (Rs)</td>
        <td><%= vehiclePrice %></td>
    </tr>
    <tr>
        <td>Bank Name</td>
        <td><%= bankName %></td>
    </tr>
    <tr>
        <td>Bank Branch</td>
        <td><%= bankBranch %></td>
    </tr>
    <tr>
        <td>Bank Account Number</td>
        <td><%= bankNo %></td>
    </tr>
</table>

</body>
</html>
