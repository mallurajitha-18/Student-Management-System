
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*, com.model.Studentmodel" %>
<html>
<head>
    <title>Student List</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f6fa;
            padding: 20px;
        }
        h2 {
            text-align: center;
            color: #2f3640;
        }
        table {
            width: 90%;
            margin: 0 auto;
            border-collapse: collapse;
            background-color: #fff;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
        }
        th, td {
            padding: 12px 15px;
            border: 1px solid #dcdde1;
            text-align: center;
        }
        th {
            background-color: #273c75;
            color: white;
        }
        tr:nth-child(even) {
            background-color: #f1f2f6;
        }
        tr:hover {
            background-color: #dcdde1;
        }
        a {
            color: #487eb0;
            text-decoration: none;
            font-weight: bold;
        }
        a:hover {
            color: #e84118;
        }
    </style>
</head>
<body>
    <h2>Student Details</h2>
    <table>
        <tr>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Username</th>
            <th>Password</th>
            <th>Email</th>
            <th>Phone Number</th>
            <th>Actions</th>
        </tr>
        <%
            List<Studentmodel> students = (List<Studentmodel>) request.getAttribute("students");
            if (students != null) {
                for (Studentmodel s : students) {
        %>
        <tr>
            <td><%= s.getFirstname() %></td>
            <td><%= s.getLastname() %></td>
            <td><%= s.getUsername() %></td>
            <td><%= s.getPassword() %></td>
            <td><%= s.getEmail() %></td>
            <td><%= s.getPhonenumber() %></td>
            <td>
                <a href="updateservlet?username=<%= s.getUsername() %>">Update</a> |
                <a href="delete?username=<%= s.getUsername() %>" 
                   onclick="return confirm('Are you sure you want to delete this student?');">Delete</a>
            </td>
        </tr>
        <%
                }
            } else {
        %>
        <tr>
            <td colspan="8">No student records found.</td>
        </tr>
        <%
            }
        %>
    </table>
</body>
</html>

