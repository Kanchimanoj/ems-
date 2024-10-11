<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Update Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }
        h1 {
            color: #333;
            text-align: center;
        }
        form {
            background: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }
        input[type="text"] {
            width: calc(100% - 20px);
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        button {
            padding: 10px 15px;
            background-color: #28a745;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        button:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>

<%
    ResultSet rs = (ResultSet) request.getAttribute("rs");
%>

<h1>Update Page</h1>
<form action="update" method="post">
    <input type="text" value="<%= rs.getInt(1) %>" name="id" placeholder="Enter Id">
    <input type="text" value="<%= rs.getString(2) %>" name="name" placeholder="Enter name">
    <input type="text" value="<%= rs.getString(3) %>" name="email" placeholder="Enter email">
    <input type="text" value="<%= rs.getString(4) %>" name="password" placeholder="Enter password">
    <input type="text" value="<%= rs.getString(5) %>" name="phno" placeholder="Enter phone number">
    <button type="submit">Update</button>
</form>
</body>
</html>
