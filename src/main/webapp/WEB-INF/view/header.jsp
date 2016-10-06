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
<script>
function formSubmit()
 {
    document.getElementById("logout").submit();
 }

</script>
<style>
<!--nav-bar script-->

.active {
    background-color: #FFF;
    }

.navbar {
	  padding-top: 5px;
      padding-bottom: 5px;
      border: 0;
      border-radius: 0;
      margin-bottom: 0;
      font-size: 14px !important;
      font-weight:bold;
      letter-spacing: 3px;
      z-index: 9999;
      line-height: 2 !important;
      font-family: Montserrat, sans-serif;   
  }
  .navbar-nav  li a:hover, .navbar-nav li.active a  {
      color: #1abc9c !important;
      background-color: #fff !important;
  }
  
  .navbar-inverse .navbar-toggle {
      border-color: transparent;
      color: #fff !important;
  }
  <!--container-->
  .container-fluid about
  { margin-left: 20px;
  	padding: 60px 50px;					
  }
  <!--carousel-->
 
 #myCarousel1 carousel-inner .item > img {
  display: block;
  line-height: 1;
}
  
 #myCarousel1 .carousel-indicators {
  bottom:-50px;
}
#myCarousel1 .carousel-inner {
  margin-top:90px;
   margin-bottom:50px;
}
   .carousel-control.right, .carousel-control.left {
      background-image: none;
      color: #1abc9c;
  }
  .carousel-indicators li {
      border-color: #1abc9c;
  }
  .carousel-indicators li.active {
      background-color: #1abc9c;
  }
 <!--thumbnail-->
 .thumbnail {
    padding: 0 0 15px 0;
    border: none;
    border-radius: 0;
}

.thumbnail img {
    width: 300px;
    height: 300px;
    margin-bottom: 10px;
}

  .logo {
      color: #1abc9c;
      font-size: 150px;
  }

  body{line-height: 1.8;}
 
    h4 {
      font-size: 19px;
      line-height: 1.375em;
      color: #303030;
      font-weight: 400;
      margin-bottom: 30px;
  }
   h2 {
      font-size: 24px;
      text-transform: uppercase;
      color: #303030;
      font-weight: 600;
      margin-bottom: 30px;
  }
  .item h4 {
    font-size: 19px;
    line-height: 1.375em;
    font-weight: 400;
    font-style: italic;
    margin: 70px 0;
}

.item span {
    font-style: normal;
}

<!--sidebar-->  
  .sidebar {
    float: left;
    width: 23%;
	margin-top: 10px;
} 
  
  .sidebar h4 {
	padding-bottom: 0;
	font-size: 13px;
	color: #fff;
	text-transform: uppercase;
	font-weight: normal;
	padding: 7px 7px;
	border-bottom: 1px solid #A31923;
  	background-color: #DE2D3A;
}



.sidebar h4 {
	padding-bottom: 0;
	font-size: 13px;
	color: #fff;
	text-transform: uppercase;
	font-weight: normal;
	padding: 7px 7px;
	border-bottom: 1px solid #A31923;
  	background-color: #DE2D3A;
}
.sidebar1 h4 {
	padding-bottom: 0;
	font-size: 13px;
	color: #fff;
	text-transform: uppercase;
	font-weight: normal;
	padding: 7px 7px;
	border-bottom: 1px solid #A31923;
  	background-color: #DE2D3A;
}
.sidebar ul {
	margin: 0;
	padding: 0;
	list-style: none;
}
.sidebar1 ul {
	margin: 0;
	padding: 0;
	list-style: none;
}
.sidebar ul li {
	background-color: #E6E7E9;
	margin-bottom: 20px;
	line-height: 1.9em;
}
.sidebar1 ul li {
	background-color: #E6E7E9;
	margin-bottom: 20px;
	line-height: 1.9em;
}

.sidebar li ul {
    list-style: none outside none;
    margin: 0px;
}
.sidebar1 li ul {
    list-style: none outside none;
    margin: 0px;
}

.sidebar li ul li {
	display: block;
	border-top: none;
	padding: 7px;
	margin: 0;
	line-height: 1.5em;
	font-size: 13.5px;
}
.sidebar1 li ul li {
	display: block;
	border-top: none;
	padding: 7px;
	margin: 0;
	line-height: 1.5em;
	font-size: 13.5px;
}

.sidebar li ul li.text { 
	border-bottom: none;
}
.sidebar1 li ul li.text { 
	border-bottom: none;
}
.sidebar li ul li a {
	font-weight: normal;
}
.sidebar1 li ul li a {
	font-weight: normal;
}

.sidebar li ul li a:hover {
}



.sidebar li ul li a.readmore {
   color: #799AC0;
   font-weight: bold;
}
.sidebar1 li ul li a.readmore {
   color: #799AC0;
   font-weight: bold;
}

 
 
#body {
   padding:10px;
   padding-bottom:40px; 
    margin-bottom:40px;  /* Height of the footer */
}
  
#main{height:100%;}

<!--footer script-->
#footer {
   position:absolute;
   bottom:0;
   width:100%;
     height:30px; /* Height of the footer */
}
 footer .glyphicon {
      font-size: 20px;
      margin-bottom: 20px;
      color: #f4511e;
  }
</style>
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60"><!-- 
<nav class="navbar navbar-inverse .navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="${pageContext.request.contextPath}/index">LetZChaat</a>
    </div>
    <c:url value="/logout" var="logout" />
                <form action="${logout}" method="post" id="logout">
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                </form>
     <div class="collapse navbar-collapse" id="myNavbar">
    <ul class="nav navbar-nav">
     <li class="active"><a href="${pageContext.request.contextPath}/index">Home</a></li>
     <li><a href="${pageContext.request.contextPath}/index">AboutUs</a></li>
     <li><a href="${pageContext.request.contextPath}/bulletin">Bulletin</a></li>
     <li><a href="${pageContext.request.contextPath}/jobs">Jobs</a></li>
     <c:if test="${pageContext.request.userPrincipal.name == 'admin@gmail.com'}">
                      <li><a href="${pageContext.request.contextPath}/admin/forum">Forum</a></li>
                      <li><a href="${pageContext.request.contextPath}/admin/blog">Blog</a></li>
                      <li><a href="${pageContext.request.contextPath}/admin/member">member</a></li>
     </c:if>
      <c:if test="${pageContext.request.userPrincipal.name != null}">
    				<security:authentication var="user" property="principal.authorities" />
					<security:authorize var="loggedIn" access="isAuthenticated()">
					<security:authorize access="hasRole('ROLE_USER')">
					<li><a href="${pageContext.request.contextPath}/user/blog">Blog</a></li>
					</security:authorize>
					</security:authorize>
					</c:if>
	 </ul>
    <ul class="nav navbar-nav navbar-right">
     <c:if test="${pageContext.request.userPrincipal.name != null}">
    				<security:authentication var="user" property="principal.authorities" />
					<security:authorize var="loggedIn" access="isAuthenticated()">
					<security:authorize access="hasRole('ROLE_ADMIN')">
					<li style="color:red">Admin</li>
					</security:authorize>
					<security:authorize access="hasRole('ROLE_USER')">
					<li style="color:red">User</li>
					</security:authorize>
					</security:authorize>	 
					<li></li>
					<li></li>
					<li style="color:red"> Welcome <i>${pageContext.request.userPrincipal.name}</i></li>
					<li> <a href="javascript:formSubmit()">Logout</a></li>
					</c:if>		
   <c:if  test="${pageContext.request.userPrincipal.name==null}">
   
       <li><a href="${pageContext.request.contextPath}/login"><span
							class="glyphicon glyphicon-user"></span> Sign In</a></li>
      <li><a href="${pageContext.request.contextPath}/signup"><span
							class="glyphicon glyphicon-user"></span> Sign Up</a></li>
   </c:if>
    </ul>
      </div>
  </div>
</nav>
 -->
 <nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="${pageContext.request.contextPath}/index">LETZCHAAT</a>
    </div>
     <c:url value="/logout" var="logout" />
                <form action="${logout}" method="post" id="logout">
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                </form>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
      <c:if  test="${pageContext.request.userPrincipal.name==null}">
        <li class="active"><a href="${pageContext.request.contextPath}/index">HOME</a></li>
        <li><a href="#bulletin">BULLETIN</a></li>
        <li><a href="#aboutus">ABOUTUS</a></li>
        <li><a href="${pageContext.request.contextPath}/index">JOBS</a></li>
      </c:if>
        
        
        
         
      <c:if test="${pageContext.request.userPrincipal.name != null}">
    				<security:authentication var="user" property="principal.authorities" />
					<security:authorize var="loggedIn" access="isAuthenticated()">
					<security:authorize access="hasRole('ROLE_USER')">
					<li class="active"><a href="${pageContext.request.contextPath}/user/userHome">HOME</a></li>
					<li><a href="${pageContext.request.contextPath}/user/profile">PROFILE</a></li>
					<li><a href="${pageContext.request.contextPath}/user/Forum">FORUM</a></li>
					<li><a href="${pageContext.request.contextPath}/user/blog">BLOG</a></li>
					<li><a href="${pageContext.request.contextPath}/user/chat">CHAT</a></li>
					</security:authorize>
					</security:authorize>
					
					<security:authorize var="loggedIn" access="isAuthenticated()">
					<security:authorize access="hasRole('ROLE_ADMIN')">
					<li class="active"><a href="${pageContext.request.contextPath}/admin/adminPage">HOME</a></li>
       				  <li><a href="${pageContext.request.contextPath}/admin/forum">FORUM</a></li>
                      <li><a href="${pageContext.request.contextPath}/admin/blog">BLOG</a></li>
                      <li><a href="${pageContext.request.contextPath}/admin/member">MEMBER</a></li>
                      <li><a href="${pageContext.request.contextPath}/admin/jobs">JOBS</a></li>
					</security:authorize>
					</security:authorize>
					
					</c:if>    
      </ul>
      <ul class="nav navbar-nav navbar-right">
      <c:if test="${pageContext.request.userPrincipal.name != null}">
    				<security:authentication var="user" property="principal.authorities" />
					<security:authorize var="loggedIn" access="isAuthenticated()">
					<security:authorize access="hasRole('ROLE_ADMIN')">
					<li style="color:red">Admin</li>
					
					</security:authorize>
					<security:authorize access="hasRole('ROLE_USER')">
					<li style="color:red">User</li>
					</security:authorize>
					</security:authorize>
					 
					<li> </li>
					<li> </li>
					<li style="color:red">Welcome <i>${pageContext.request.userPrincipal.name}</i></li>
					<li> <a href="javascript:formSubmit()"><span class="glyphicon glyphicon-log-out"></span>Logout</a></li>
					</c:if>		
  
      <c:if  test="${pageContext.request.userPrincipal.name==null}">
        <li style="float:right"><a href="${pageContext.request.contextPath}/login"><span class="glyphicon glyphicon-user"></span> SIGNIN</a></li>
        <li style="float:right"><a href="${pageContext.request.contextPath}/signup"><span class="glyphicon glyphicon-log-in"></span>SIGNUP</a></li>
        <li><span class="glyphicon glyphicon-search"></span>SEARCH</li>
      </c:if>
      </ul>
    </div>
  </div>
</nav>
 
<p>&nbsp;</p>
<p>&nbsp;</p>

















