<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ page import="model.PGModel" %>
<%@ page session="true" %>

<!DOCTYPE html>
<html>
<head>
    <title>PG Details</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
        }
        .card {
            margin-top: 50px;
            padding: 20px;
            border-radius: 15px;
            box-shadow: 0 0 15px rgba(0,0,0,0.1);
        }
        .btn-back {
            background-color: #007bff;
            color: white;
        }
    </style>
</head>
<body>
    <div class="container">
        <%
            PGModel pg = (PGModel) request.getAttribute("pg");
        %>
        <div class="card">
            <h2><%= pg.getPgname() %></h2>
            <p><strong>Location:</strong> <%= pg.getLocation() %></p>
            <p><strong>Rent:</strong> ₹<%= pg.getRent() %></p>
            <p><strong>Map Link:</strong> <a href="<%= pg.getMaplink() %>" target="_blank">View Map</a></p>
            <a href="home.jsp" class="btn btn-back">Back to Home</a>
        </div>
    </div>
</body>
</html>