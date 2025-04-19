<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, com.model.Studentmodel" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Student</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f0f2f5;
        margin: 0;
        padding: 0;
    }
    .card {
        background-color: #ffffff;
        max-width: 500px;
        margin: 50px auto;
        padding: 30px 40px;
        border-radius: 12px;
        box-shadow: 0 6px 12px rgba(0, 0, 0, 0.1);
    }
    h2 {
        text-align: center;
        color: #2d3436;
        margin-bottom: 25px;
    }
    .mb-3 {
        margin-bottom: 20px;
    }
    .form-label {
        display: block;
        margin-bottom: 8px;
        font-weight: bold;
        color: #333;
    }
    .form-control {
        width: 100%;
        padding: 10px 12px;
        border: 1px solid #ccc;
        border-radius: 6px;
        font-size: 15px;
        box-sizing: border-box;
    }
    .form-control:focus {
        border-color: #0984e3;
        outline: none;
        box-shadow: 0 0 5px rgba(9, 132, 227, 0.5);
    }
    .text-danger {
        color: red;
        font-size: 12px;
    }
    .btn {
        width: 100%;
        padding: 12px;
        background-color: #0984e3;
        color: white;
        border: none;
        border-radius: 6px;
        font-size: 16px;
        cursor: pointer;
    }
    .btn:hover {
        background-color: #74b9ff;
    }
</style>
</head>
<body>
<%
    Studentmodel smm = (Studentmodel) request.getAttribute("smm");
%>
<div class="card">
    <h2>Update Student</h2>
    <form name="first" method="post" action="saveafteredit" id="registrationForm">

        <div class="mb-3">
            <label for="firstname" class="form-label">First Name</label>
            <input type="text" class="form-control" id="firstname" name="firstname" placeholder="First Name" value="<%= smm.getFirstname() %>">
            <span id="firstnameError" class="text-danger"></span>
        </div>

        <div class="mb-3">
            <label for="lastname" class="form-label">Last Name</label>
            <input type="text" class="form-control" id="lastname" name="lastname" placeholder="Last Name" value="<%= smm.getLastname() %>">
            <span id="lastnameError" class="text-danger"></span>
        </div>

        <div class="mb-3">
            <label for="username" class="form-label">Username</label>
            <input type="hidden" class="form-control" id="username" name="username" value="<%= smm.getUsername() %>" readonly>
            <span id="usernameError" class="text-danger"></span>
        </div>

        <div class="mb-3">
            <label for="password" class="form-label">Password</label>
            <input type="password" class="form-control" id="password" name="password" placeholder="Password" value="<%= smm.getPassword() %>">
            <span id="passwordError" class="text-danger"></span>
        </div>

        <div class="mb-3">
            <label for="phonenumber" class="form-label">Phone Number</label>
            <input type="tel" class="form-control" id="phonenumber" name="phonenumber" placeholder="Phone Number" value="<%= smm.getPhonenumber() %>">
            <span id="phonenumberError" class="text-danger"></span>
        </div>

        <div class="mb-3">
            <label for="email" class="form-label">Email</label>
            <input type="email" class="form-control" id="email" name="email" placeholder="Email" value="<%= smm.getEmail() %>">
            <span id="emailError" class="text-danger"></span>
        </div>

        <button type="submit" class="btn btn-custom">Update</button>
    </form>
</div>
</body>
</html>
