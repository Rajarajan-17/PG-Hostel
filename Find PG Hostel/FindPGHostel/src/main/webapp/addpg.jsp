<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ page import="model.PGModel" %>
<%@ page session="true" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add PG Details</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: linear-gradient(to bottom right, #f8f9fa, #d6e3e5);
            font-family: 'Segoe UI', sans-serif;
            animation: fadeIn 1.5s ease-in-out;
        }

        @keyframes fadeIn {
            0% { opacity: 0; }
            100% { opacity: 1; }
        }

        .container {
            max-width: 500px;
            margin-top: 50px;
            padding: 30px;
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
        }

        h2 {
            font-size: 2rem;
            font-weight: bold;
            color: #333;
            text-align: center;
            animation: slideUp 1s ease-out;
        }

        @keyframes slideUp {
            0% { transform: translateY(30px); opacity: 0; }
            100% { transform: translateY(0); opacity: 1; }
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-control {
            border-radius: 30px;
            border: 1px solid #ddd;
            padding: 12px;
            transition: all 0.3s ease;
        }

        .form-control:focus {
            border-color: #28a745;
            box-shadow: 0 0 8px rgba(40, 167, 69, 0.4);
        }

        .btn-submit {
            background-color: #28a745;
            color: white;
            border-radius: 30px;
            font-size: 1.2rem;
            padding: 12px 24px;
            width: 100%;
            transition: background-color 0.3s ease, transform 0.2s ease;
        }

        .btn-submit:hover {
            background-color: #218838;
            transform: scale(1.05);
        }

        .btn-secondary {
            background-color: #6c757d;
            color: white;
            border-radius: 30px;
            padding: 10px 20px;
            transition: background-color 0.3s ease;
            text-decoration: none;
        }

        .btn-secondary:hover {
            background-color: #5a6268;
            transform: scale(1.05);
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Add Your PG Details</h2>

        <form action="addpg" method="POST">
            <div class="form-group">
                <label for="pgname">PG Name</label>
                <input type="text" id="pgname" name="pgname" class="form-control" required>
            </div>

            <div class="form-group">
                <label for="location">Location</label>
                <input type="text" id="location" name="location" class="form-control" required>
            </div>

            <div class="form-group">
                <label for="rent">Rent (₹)</label>
                <input type="number" id="rent" name="rent" class="form-control" required>
            </div>

            <div class="form-group">
                <label for="maplink">Map Link</label>
                <input type="url" id="maplink" name="maplink" class="form-control" required>
            </div>

            <button type="submit" class="btn btn-submit">Add PG</button>
        </form>

        <br>
        <a href="home.jsp" class="btn btn-secondary">Back to Home</a>
    </div>
</body>
</html>