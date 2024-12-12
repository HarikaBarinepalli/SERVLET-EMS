<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Employee Page</title>
<style type="text/css">
#createbut{
margin-left:50%;
margin-top:15px;
padding:10px;
}
</style>
</head>
<body>
  <h1 style="text-align:center">All Employees</h1>
  <a id="createbut"><button href="reg.jsp">Create</button></a>
  <table border="5" cellpadding="5" cellspacing="0" align="center" rules="all">
    <thead>
      <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Email</th>
        <th>Password</th>
        <th>Salary</th>
        <th>Deptno</th>
        <th colspan="2">Action</th>

      </tr>
    </thead>
    <tbody >
      <%
      ResultSet rs = (ResultSet)request.getAttribute("rs"); // casting
      while(rs.next()){
      %>
      <tr>
        <td><%= rs.getString(1) %></td>
        <td><%= rs.getString(2) %></td>
        <td><%= rs.getString(3) %></td>
        <td><%= rs.getString(4) %></td>
        <td><%= rs.getString(5) %></td>
        <td><%= rs.getString(6) %></td>
        <td><a href="delete?id=<%= rs.getString(1)  %>"><button>Delete</button></a></td>
        <td><a href="update.jsp?id=<%= rs.getString(1)  %>"><button>Update</button></a></td>
      </tr>
      <%
      }
      %>
    </tbody>
  </table>
  
  <a href="login.jsp"><button>LOGOUT</button></a>
  
  <script type="text/javascript">
  const msgElem=document.getElementById("msg");
  setTimeout(()=>{
	  msgElem.style.display="none";
  },2000)
  </script>
  
  
</body>

</html>