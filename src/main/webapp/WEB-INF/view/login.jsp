<%@page isELIgnored="false" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<div id="main">
<div id="header">
<%@include file="header.jsp"%>
</div>
<div id="body">
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>

<div class="row"><div class="col-md-12"><h1>Login FORM</h1></div></div>
<div class="row">
<div class="col-md-4"></div>
<div class="col-md-4">
		 <c:if test="${not empty msg}">
                <div class="msg">${msg}</div>
         </c:if>
		 <c:if test="${not empty error}">
                <div class="error">${error}</div>
            </c:if>
<form:form method="post" modelAttribute="ulogin" commandName="ulogin" class="form-sigin" action="${pageContext.request.contextPath}/login" >
 <h2 class="form-signin-heading">Please sign in</h2>
 <label for="inputEmail" class="sr-only">Username</label>
        <form:input type="text" path="emailId" name="emailId" class="form-control" placeholder="Enter Username"/>
        <label for="inputPassword" class="sr-only">Password</label><form:errors path="emailId" cssStyle="color: #ff0000;"/>
        <form:input type="password" path="password" name="password" class="form-control" placeholder="Password"/><form:errors path="password" cssStyle="color: #ff0000;"/>
        <div class="checkbox">
          <label>
            <input type="checkbox" value="remember-me"> Remember me
          </label>
        </div>
        <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
  </form:form>
</div>
<div class="col-md-4"></div>
</div>
</div>

<div id="footer">
<%@include file="footer.jsp"%>

</div>
</div>




