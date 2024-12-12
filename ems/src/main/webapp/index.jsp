<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome page</title>
</head>
<body>

 <% response.sendRedirect("login.jsp"); %>
 
    <h1>welcome to EMS</h1>
    <a href="reg.jsp"><button>Click here to Register</button></a>
    <a href="allemp"><button>view all employee</button></a>
    <a href="login"><button>Click here to login</button></a>
    <script type="text/javascript">
    let msgElem=document.getElementById("msg");
   
    setTimeout(()=>{
    	msgElem.style.display="none";
    },2000);
    </script>
    
</body>
</html>