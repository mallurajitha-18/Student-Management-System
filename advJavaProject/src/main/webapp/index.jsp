<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration Form</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
    body {
        background: linear-gradient(to right, #ff7e5f, #feb47b); 
        font-family: 'Arial', sans-serif;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }
    
    .card {
        max-width: 500px;
        width: 100%;
        padding: 30px;
        background: white;
        border-radius: 15px;
        box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
    }

    h2 {
        text-align: center;
        color: #ff7e5f;
        font-weight: bold;
    }

    .form-control {
        border-radius: 8px;
        border: 1px solid #ddd;
        transition: all 0.3s ease;
    }

    .form-control:focus {
        border-color: #ff7e5f;
        box-shadow: 0 0 8px rgba(255, 126, 95, 0.5);
    }

    .btn-custom {
        width: 100%;
        background: linear-gradient(to right, #ff7e5f, #feb47b);
        border: none;
        padding: 12px;
        font-size: 18px;
        border-radius: 8px;
        color: white;
        font-weight: bold;
        transition: all 0.3s ease;
    }

    .btn-custom:hover {
        background: linear-gradient(to right, #feb47b, #ff7e5f);
        transform: scale(1.05);
    }

    .form-label {
        font-weight: bold;
        color: #555;
    }
</style>
</head>
<body>

<div class="card">
    <h2>Registration Form</h2>
    <form name="first" method="post" action="Register" id="registrationForm">
        
        <div class="mb-3">
            <label for="firstname" class="form-label">First Name</label>
            <input type="text" class="form-control" id="firstname" name="firstname" placeholder="First Name">
            <span id="firstnameError" class="text-danger"></span>
        </div>

        <div class="mb-3">
            <label for="lastname" class="form-label">Last Name</label>
            <input type="text" class="form-control" id="lastname" name="lastname" placeholder="Last Name">
            <span id="lastnameError" class="text-danger"></span>
        </div>

        <div class="mb-3">
            <label for="username" class="form-label">Username</label>
            <input type="text" class="form-control" id="username" name="username" placeholder="Username">
            <span id="usernameError" class="text-danger"></span>
        </div>

        <div class="mb-3">
            <label for="password" class="form-label">Password</label>
            <input type="password" class="form-control" id="password" name="password" placeholder="Password">
            <span id="passwordError" class="text-danger"></span>
        </div>

        <div class="mb-3">
            <label for="confirmpassword" class="form-label">Confirm Password</label>
            <input type="password" class="form-control" id="confirmpassword" name="confirmpassword" placeholder="Confirm Password">
            <span id="confirmpasswordError" class="text-danger"></span>
        </div>

        <div class="mb-3">
            <label for="phonenumber" class="form-label">Phone Number</label>
            <input type="tel" class="form-control" id="phonenumber" name="phonenumber" placeholder="Phone Number">
            <span id="phonenumberError" class="text-danger"></span>
        </div>

        <div class="mb-3">
            <label for="email" class="form-label">Email</label>
            <input type="email" class="form-control" id="email" name="email" placeholder="Email">
            <span id="emailError" class="text-danger"></span>
        </div>

        <button type="submit" class="btn btn-custom">Register</button>
        <a href="Login.jsp">Already have an account? Login here</a>
      
    </form>
</div>

</body>
</html>
