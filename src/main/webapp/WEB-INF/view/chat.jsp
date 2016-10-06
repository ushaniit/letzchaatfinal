<%@page isELIgnored="false" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CHAT WINDOW</title>
</head>
<style>
 body {
 
  background: linear-gradient(to bottom, #68EACC 0%, #497BE8 100%);
  color: #777;
  
</style>
</head>
<body>


<form action="${pageContext.request.contextPath}/user/application" method="POST">
<h4>Welcome ${user}</h4>

<input type="text" name="username" value="${user}">
<input type="submit" value="Join" >
</form>
</body>



</body>
</html>