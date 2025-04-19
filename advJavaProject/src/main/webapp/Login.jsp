<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<style>
    body {
        background: linear-gradient(to right, #ff7e5f, #feb47b);
        height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
        font-family: 'Arial', sans-serif;
    }

    .container {
        max-width: 400px;
        width: 100%;
        background: white;
        padding: 30px;
        border-radius: 12px;
        box-shadow: 0px 5px 15px rgba(0, 0, 0, 0.2);
    }

    h2 {
        text-align: center;
        color: #ff7e5f;
        font-weight: bold;
        margin-bottom: 20px;
    }

    .form-control {
        border-radius: 8px;
        border: 1px solid #ddd;
        transition: all 0.3s ease-in-out;
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

    .forgot-password {
        display: block;
        text-align: right;
        margin-top: 10px;
        color: #ff7e5f;
        text-decoration: none;
        font-weight: bold;
    }

    .forgot-password:hover {
        text-decoration: underline;
    }

    .signup-text {
        text-align: center;
        margin-top: 15px;
        font-weight: bold;
    }

    .signup-text a {
        color: #ff7e5f;
        text-decoration: none;
        font-weight: bold;
    }

    .signup-text a:hover {
        text-decoration: underline;
    }
</style>
</head>
<body>

<div class="container">
    <h2>LOGIN FORM</h2>
    <form name="LOGIN" method="post" action="Signin">
        <div class="mb-3">
            <label for="username" class="form-label">USERNAME</label>
            <input type="text" class="form-control" id="username" name="username" placeholder="Enter your username">
            <span id="usernameError" class="text-danger"></span>
        </div>

        <div class="mb-3">
            <label for="password" class="form-label">PASSWORD</label>
            <input type="password" class="form-control" id="password" name="password" placeholder="Enter your password">
            <span id="passwordError" class="text-danger"></span>
        </div>

        <a href="#" class="forgot-password">Forgot Password?</a>

        <button type="submit" class="btn btn-custom mt-3">SIGN IN</button>
     

        <p class="signup-text">Don't have an account? <a href="index.jsp">SIGN UP</a></p>
             <p> <%=request.getAttribute("error") %></p>
        
   
    </form>
</div>

</body>
</html>
