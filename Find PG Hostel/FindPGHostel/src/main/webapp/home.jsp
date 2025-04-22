<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*, model.PGModel, dao.PGDAO" %>
<%@ page session="true" %>

<jsp:useBean id="pgDao" class="dao.PGDAO" />

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Find PG Hostel</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: linear-gradient(to bottom right, #8e9eab, #eef2f3);
            font-family: 'Segoe UI', sans-serif;
            animation: fadeIn 1.5s ease-in-out;
        }

        @keyframes fadeIn {
            0% { opacity: 0; }
            100% { opacity: 1; }
        }

        .heading {
            text-align: center;
            padding: 40px 0;
            color: #333;
            font-size: 40px;
            font-weight: bold;
            text-transform: uppercase;
            animation: slideUp 1s ease-out;
        }

        @keyframes slideUp {
            0% { transform: translateY(30px); opacity: 0; }
            100% { transform: translateY(0); opacity: 1; }
        }

        .pg-entry {
            transition: 0.3s;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            border-radius: 15px;
            margin-bottom: 20px;
            padding: 12px;
            background-color: #fff;
            display: flex;
            flex-direction: column;
            align-items: flex-start;
            height: auto;
            max-height: 300px; /* Limit height */
        }

        .pg-entry:hover {
            transform: scale(1.05);
            box-shadow: 0 0 30px rgba(0, 0, 0, 0.2);
        }

        .btn-map {
            background-color: #28a745;
            color: white;
            transition: background-color 0.3s ease;
        }

        .btn-map:hover {
            background-color: #218838;
            transform: scale(1.05);
        }

        .btn-edit {
            background-color: #007bff;
            color: white;
            transition: background-color 0.3s ease;
            margin-right: 10px;
        }

        .btn-edit:hover {
            background-color: #0056b3;
        }

        .btn-delete {
            background-color: #dc3545;
            color: white;
            transition: background-color 0.3s ease;
        }

        .btn-delete:hover {
            background-color: #c82333;
            transform: scale(1.05);
        }

        .search-bar {
            max-width: 600px;
            margin: auto;
            margin-bottom: 40px;
        }

        .btn-warning {
            background-color: #ff9800;
            color: white;
            border-radius: 30px;
            transition: background-color 0.3s ease;
        }

        .btn-warning:hover {
            background-color: #e68900;
        }

        .input-group input, .input-group button {
            border-radius: 30px;
            padding: 12px;
        }

        .input-group input {
            border: 1px solid #ddd;
        }

        .input-group button {
            background-color: #007bff;
            color: white;
            border: none;
        }

        .input-group button:hover {
            background-color: #0056b3;
            transform: scale(1.05);
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="heading">Find PG Hostel</div>

        <form action="searchpg" method="post" class="search-bar">
            <div class="input-group">
                <input type="text" name="query" class="form-control" placeholder="Search by PG name or location..." required>
                <button class="btn btn-primary" type="submit">Search</button>
            </div>
        </form>

        <div class="text-end mb-3">
            <a href="addpg.jsp" class="btn btn-warning">+ Add Your PG Details</a>
        </div>

        <div class="row">
            <%
                List<PGModel> pgList = pgDao.getRandomPGs(); // Fetching PG data from the database
                for(PGModel pg : pgList) {
            %>
                <div class="col-md-12">
                    <div class="pg-entry p-3">
                        <h4><%= pg.getPgname() %></h4>
                        <p><strong>Location:</strong> <%= pg.getLocation() %></p>
                        <p><strong>Rent:</strong> ₹<%= pg.getRent() %></p>
                        <a href="<%= pg.getMaplink() %>" class="btn btn-map" target="_blank">View in Map</a>
                        <div class="mt-3">
                            <!-- Edit and Delete buttons -->
                            <a href="editpg.jsp?id=<%= pg.getId() %>" class="btn btn-edit">Edit</a>
                            <a href="deletepg?id=<%= pg.getId() %>" class="btn btn-delete" onclick="return confirm('Are you sure you want to delete this PG?')">Delete</a>
                        </div>
                    </div>
                </div>
            <% } %>
        </div>
    </div>
</body>
</html>