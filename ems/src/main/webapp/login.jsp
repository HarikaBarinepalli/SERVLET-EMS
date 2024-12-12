<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login here</title>
</head>
<body>

<h2>

<%
session.invalidate();
%>
</h2>

  <form action="login" method="post">
 
  <input type="email"  name="email" placeholder="Enter email"><br>
  <input type="password" name="password" placeholder="Enter password"><br>
   <button type="submit">LOGIN</button>
  </form>
</body>
</html>