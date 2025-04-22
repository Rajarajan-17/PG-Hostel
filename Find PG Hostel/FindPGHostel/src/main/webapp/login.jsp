<%@ page language="java" contentType="text/html; charset=UTF-8" %>  
<!DOCTYPE html>  
<html>  
<head>  
    <title>Find PG Hostel - Login</title>  
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">  
    <style>  
        body {  
            background: linear-gradient(to right, #00c6ff, #0072ff);  
            color: white;  
            font-family: 'Segoe UI', sans-serif;  
            animation: fadeIn 1.5s ease-in-out;  
        }  

        @keyframes fadeIn {
            0% { opacity: 0; }
            100% { opacity: 1; }
        }

        .card {  
            margin-top: 100px;  
            padding: 20px;  
            border-radius: 20px;  
            box-shadow: 0px 0px 30px rgba(0, 0, 0, 0.3);  
            transition: transform 0.3s ease-in-out;  
        }

        .card:hover {
            transform: translateY(-10px);
        }

        .btn-skip {  
            background: #ffc107;  
            color: black;  
            border-radius: 50px;  
            font-weight: bold;  
            transition: background-color 0.3s ease;  
        }  

        .btn-skip:hover {
            background-color: #e0a800;  
            box-shadow: 0px 0px 10px rgba(255, 193, 7, 0.6);
        }

        .btn-primary {  
            background-color: #007bff;  
            border-color: #007bff;  
            border-radius: 50px;  
            font-weight: bold;  
            transition: background-color 0.3s ease, transform 0.3s ease;  
        }  

        .btn-primary:hover {  
            background-color: #0056b3;  
            border-color: #004085;  
            transform: scale(1.05);  
        }  

        .container {  
            animation: slideUp 1s ease-out;  
        }  

        @keyframes slideUp {  
            0% { transform: translateY(30px); opacity: 0; }  
            100% { transform: translateY(0); opacity: 1; }  
        }  

        .card h2 {  
            font-size: 2rem;  
            font-weight: bold;  
            color: #fff;  
            text-transform: uppercase;  
            margin-bottom: 20px;  
        }

        .form-control {  
            border-radius: 25px;  
            padding: 12px;  
            border: none;  
            margin-bottom: 15px;  
            transition: border-color 0.3s ease;  
        }

        .form-control:focus {  
            border-color: #00c6ff;  
            box-shadow: 0 0 5px rgba(0, 198, 255, 0.5);  
        }

        hr {
            border-top: 2px solid #00c6ff;
            margin-top: 30px;
            margin-bottom: 30px;
        }

        .btn-block {  
            border-radius: 50px;  
        }

    </style>  
</head>  
<body>  
    <div class="container text-center">  
        <div class="row justify-content-center">  
            <div class="col-md-4">  
                <div class="card bg-dark text-white">  
                    <h2>Login to Find PG</h2>  
                    <form action="login" method="post">  
                        <input type="text" name="username" class="form-control mb-3" placeholder="Username" required>  
                        <input type="password" name="password" class="form-control mb-3" placeholder="Password" required>  
                        <button type="submit" class="btn btn-primary w-100">Login</button>  
                    </form>  
                    <hr>  
                    <form action="login" method="get">  
                        <button type="submit" class="btn btn-skip w-100">Skip Login</button>  
                    </form>  
                </div>  
            </div>  
        </div>  
    </div>  
</body>  
</html>