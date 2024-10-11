<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Welcome Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f8ff;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        h1 {
            color: #333;
            margin-bottom: 20px;
            text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.1);
        }

        a {
            text-decoration: none;
            margin: 10px;
        }

        button {
            background-color: #007BFF;
            color: white;
            border: none;
            padding: 10px 20px;
            font-size: 16px;
            cursor: pointer;
            border-radius: 5px;
            transition: background-color 0.3s, transform 0.2s;
        }

        button:hover {
            background-color: #0056b3;
            transform: scale(1.05);
        }

        button:active {
            transform: scale(0.95);
        }
    </style>
</head>
<body>

    <center>
        <h1>Welcome to EMS</h1>
        <a href="reg.jsp"><button type="button">Click Here To Register</button></a>
        <a href="allemp"><button type="button">Employee</button></a>
    </center>
    
</body>
</html>
