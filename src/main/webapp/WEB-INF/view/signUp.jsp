<%@page isELIgnored="false" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<div id="main">
<div id="header">
<%@include file="header.jsp"%>
</div>
<div id="body">
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<h2 class="add-user-heading">Create an account</h2>
<p>&nbsp;</p>
 <div class="row">
<div class="col-xs-2"><img src="${imgloc}home1.jpg" height="200" width="200" class="img-responsive" alt="home"></div>
<div class="col-xs-1"></div>
<div class="col-xs-9">

<div class="container central">
		<form:form action="${pageContext.request.contextPath}/signup" model="user" commandName="user" method="post" enctype="multipart/form-data">	
		<div class="row">
			<div class=col-xs-3><form:label path="fname"><spring:message text="FirstName"/></form:label></div>
			<div class=col-xs-4><form:input path="fname"/></div>
			<div class=col-xs-5><form:errors path="fname" cssStyle="color: #ff0000;"/></div>
		</div>
		<div class="row">
			<div class=col-xs-3><form:label path="lname"><spring:message text="LastName"/></form:label></div>
			<div class=col-xs-4><form:input path="lname"/></div>
			<div class=col-xs-5><form:errors path="lname" cssStyle="color: #ff0000;"/></div>
		</div>
		<div class="row">
			<div class=col-xs-3><form:label path="emailId"><spring:message text="Email"/></form:label></div>
			<div class=col-xs-4><form:input path="emailId"/></div>
			<div class=col-xs-5><form:errors path="emailId" cssStyle="color: #ff0000;"/><span>${emailMsg}</span></div>
		</div>
	    <div class="row">
			<div class=col-xs-3><form:label path="password"><spring:message text="Password"/></form:label></div>
			<div class=col-xs-4><form:input path="password"/></div>
			<div class=col-xs-5><form:errors path="password" cssStyle="color: #ff0000;"/></div>
		</div>
		<div class="row">
			<div class=col-xs-3><form:label path="gender"><spring:message text="Gender"/></form:label></div>
			<div class=col-xs-4> 
			 <form:select path="gender">
				<form:option value="" label="--- Select ---" />
				<form:option value="Male">Male</form:option>
				<form:option value="Female">Female</form:option>
		     </form:select></div>
           <div class=col-xs-5><form:errors path="gender" cssStyle="color: #ff0000;"/></div>
		</div>
		<div class="row">
			<div class=col-xs-3><form:label path="mobile"><spring:message text="Mobile"/></form:label></div>
			<div class=col-xs-4><form:input path="mobile"/></div>
			<div class=col-xs-5></div>
		</div>
		<div class="row">
			<div class=col-xs-3><form:label path="dob"><spring:message text="DateOfBirth"/></form:label></div>
			<div class=col-xs-4><form:input path="dob"/></div>
			<div class=col-xs-5><form:errors path="dob" cssStyle="color: #ff0000;"/></div>
		</div>
		<div class="row">
			<div class=col-xs-3><form:label path="image"><spring:message text="Profile picture"/></form:label></div>
			<div class=col-xs-4><form:input type="file" path="image"/></div>
			<div class=col-xs-5><form:errors path="image" cssStyle="color: #ff0000;"/></div>
		</div>		
		<div class="row">
			<div class=col-xs-3></div>
		    <div class=col-xs-4><input type="submit" value="<spring:message text="ADD USER"/>"></div>
		    <div class=col-xs-5></div>
		</div>
	    </form:form>
	 </div>
  </div>
</div>

</div>



<div id="footer">


</div>

</div>


