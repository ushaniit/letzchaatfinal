<%@page isELIgnored="false" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/security/tags" prefix="security"  %>
<c:url value="/resources/bootstrap/css/" var="bcss"/>
<c:url value="/resources/bootstrap/js/" var="bjs"/>
<c:url value="/resources/images/" var="imgloc"/>
<html>
<head><title>LetZChaat</title>
<link rel="stylesheet" href="${bcss}bootstrap.min.css"/>
<link rel="stylesheet" href="${bcss}bootstrap-theme.min.css"/>
<script src="${bjs}angular.min.js"></script>
 <script>function formSubmit()
 {
    document.getElementById("logout").submit();
		 }
</script>
<style>
<!--nav-bar script-->
.navbar-header{height:150px; color:blue;}
#main{height:100%;}

<!--footer script-->
#footer {
   position:absolute;
   bottom:0px;
   width:100%;
   height:120px;   /* Height of the footer */
}

</style>
</head>
<body>
<nav class="navbar navbar-inverse .navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="${pageContext.request.contextPath}/index">LetZChaat</a>
    </div>
    <c:url value="/logout" var="logout" />
                <form action="${logout}" method="post" id="logout">
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                </form>
    
    <ul class="nav navbar-nav">
     <li class="active"><a href="${pageContext.request.contextPath}/index">Home</a></li>
     <li><a href="${pageContext.request.contextPath}/index">AboutUs</a></li>
     <li><a href="${pageContext.request.contextPath}/index">Bulletin</a></li>
     <li><a href="${pageContext.request.contextPath}/index">Jobs</a></li>
     <c:if test="${pageContext.request.userPrincipal.name == 'admin'}">
                      <li><a href="${pageContext.request.contextPath}/forum">Forum</a></li>
                      <li><a href="${pageContext.request.contextPath}/blog">Blog</a></li>
     </c:if>
     
  </ul>
    
    <ul class="nav navbar-nav navbar-right">
    <c:if test="${pageContext.request.userPrincipal.name != null}">
					<li> Welcome :${pageContext.request.userPrincipal.name}</li>
					<li> <a href="javascript:formSubmit()">Logout</a></li>
					<security:authentication var="user" property="principal.authorities" />
					<security:authorize var="loggedIn" access="isAuthenticated()">
					<security:authorize access="hasRole('ROLE_ADMIN')">
					<li>Admin</li>
					</security:authorize>
					<security:authorize access="hasRole('ROLE_USER')">
					<li>User</li>
					</security:authorize>
					</security:authorize>
					</c:if>		
   <c:if  test="${pageContext.request.userPrincipal.name==null}">
   
       <li><a href="${pageContext.request.contextPath}/login"><span
							class="glyphicon glyphicon-user"></span> Sign In</a></li>
      <li><a href="${pageContext.request.contextPath}/signup"><span
							class="glyphicon glyphicon-user"></span> Sign Up</a></li>
   </c:if>
    </ul>
      
  </div>
</nav>






















