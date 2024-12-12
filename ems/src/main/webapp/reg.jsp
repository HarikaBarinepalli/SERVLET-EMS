<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration page</title>

</head>
<body>

<form action="reg" method="post">
<fieldset>
<legend>REGISTER HERE</legend>
<label>id:</label>
<br>

<input type="number"  name="id" placeholder="Enter ID">
<br>
<label>Name:</label>
<br>
<input type="text"  name="name" placeholder="Enter name">
<br>
<label>Email:</label>
<br>
<input type="email"  name="email" placeholder="Enter Email">
<br>
<label>Password:</label>
<br>
<input type="password"  name="password" placeholder="Enter password">
<br>
<label>Salary:</label>
<br>
<input type="number"  name="sal" placeholder="Enter salary">
<br>
<label>Dno:</label>
<br>
<input type="number"  name="dno" placeholder="Enter Deptno">
<br>
<br>

<button type= "submit">REGISTER</button>

</fieldset>
</form>

</body>
</html>