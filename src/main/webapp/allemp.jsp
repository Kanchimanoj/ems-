<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>All Employee Details</title>
    <style type="text/css">
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }
        h1 {
            color: #333;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            background-color: white;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border: 1px solid #ddd; /* Add border to the table */
        }
        th, td {
            padding: 10px;
            text-align: left;
            border: 1px solid #ddd; /* Add border to table cells */
        }
        th {
            background-color: #4CAF50;
            color: white;
        }
        tr:hover {
            background-color: #f1f1f1;
        }
        button {
            background-color: #007BFF;
            color: white;
            border: none;
            padding: 10px 15px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 14px;
            margin: 4px 2px;
            cursor: pointer;
            border-radius: 4px;
            transition: background-color 0.3s;
        }
        button:hover {
            background-color: #0056b3;
        }
        #createbut {
            margin: 20px 0;
            text-align: right;
        }
    </style>
</head>
<body>
<center>
    <h1>All Employee Details</h1>
    <!--  <div id="createbut">
        <a href="reg.jsp"><button>Create</button></a> -->
    </div> 
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Password</th>
                <th>Phone No</th>
                <th colspan="3" style="text-align: center;">Action</th>
            </tr>
        </thead>
        <tbody>
            <%
            ResultSet rs = (ResultSet) request.getAttribute("rs");
            while (rs.next()) {
            %>
            <tr>
                <td><%=rs.getInt(1)%></td>
                <td><%=rs.getString(2)%></td>
                <td><%=rs.getString(3)%></td>
                <td><%=rs.getString(4)%></td>
                <td><%=rs.getString(5)%></td>
                <td style="text-align: right;"><a href="reg.jsp"><button>Create</button></a> 
                <td style="text-align: right;"><a href="updatepage?id=<%=rs.getInt(1)%>"><button>Update</button></a></td>
                 <td style="text-align: right;"><a href="delete?id=<%=rs.getInt(1)%>"><button>Delete</button></a></td>
                  
            </tr>
            <%
            }
            %>
        </tbody>
    </table>
</center>
</body>
</html>
