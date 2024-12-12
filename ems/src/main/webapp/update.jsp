<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
Connection con=null;
PreparedStatement ps=null;
ResultSet rs=null;
try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ems","root","Root");
    ps= con.prepareStatement("select *from emp where id=?");
    
    String sid= request.getParameter("id");
    int id= Integer.parseInt(sid);
    ps.setInt(1,id);
    rs=ps.executeQuery();
    rs.next();
}
catch(Exception e){
	e.printStackTrace();
}
%>
<h2><%=session.getAttribute("name") %></h2>

<h1>
update page
</h1>
<form action="update" method="post">
<fieldset>
<legend>UPDATE HERE</legend>
<label>id:</label>
<br>

<input type="number" value="<%=rs.getInt(1)%>" name="id"  placeholder="Enter new  ID">
<br>
<label>Name:</label>
<br>
<input type="text" value="<%=rs.getString(2)%>" name="name" placeholder="Enter new name">
<br>
<label>Email:</label>
<br>
<input type="email" value="<%=rs.getString(3)%>" name="email" placeholder="Enter new Email">
<br>
<label>Password:</label>
<br>
<input type="password" value="<%=rs.getString(4)%>"  name="password" placeholder="Enter new password">
<br>
<label>Salary:</label>
<br>
<input type="number" value="<%=rs.getDouble(5)%>"  name="salary" placeholder="Enter new salary">
<br>
<label>Dno:</label>
<br>
<input type="number" value="<%=rs.getInt(6)%>"  name="dno" placeholder="Enter new  Deptno">
<br>
<br>

<button type= "submit">UPDATE</button>

</fieldset>
</form>


</body>
</html>