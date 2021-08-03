<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Employee Management Login</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/page.css">
</head>
<body>
<div class="jumbotron">
    <div class="container">
        <h2>Employee Management System</h2>
        <form action="EmployeeManagement" method="post">
            <div class="form-group">
                <label for="userIdInput">UserId</label>
                <input type="text" class="form-control" id="userIdInput" name="uid" required>
            </div>
            <div class="form-group">
                <label for="userPasswordInput">Password</label>
                <input type="password" class="form-control" id="userPasswordInput" name="pwd" required>
            </div>
            <button type="submit" class="btn btn-primary">Login</button>
        </form>
    </div>
</div>
</body>
</html>
