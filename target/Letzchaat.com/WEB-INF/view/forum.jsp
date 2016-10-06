<%@page isELIgnored="false" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<div id="main">
<div id="header">
<%@include file="header.jsp"%>
</div>

<div id="body">
<div class="row">
	<div class=col-md-4></div>
	<div class=col-md-4> FORUM PAGE</div>
	<div class=col-md-4></div>
</div>
				
<form:form action="${pageContext.request.contextPath}/admin/forum/add" modelAttribute="forum" commandName="forum" method="post">
<c:if test="${!empty forum.name}">
<div class="row">
	<div class=col-md-4></div>
	<div class=col-md-2><form:label path="id"><spring:message text="ID"/></form:label></div>
	<div class=col-md-2> <form:input path="id" readonly="true" size="8"  disabled="true" />
            <form:hidden path="id" /></div>
	<div class=col-md-2></div>
	<div class=col-md-2></div>
</div>	
</c:if>
<div class="row">
	<div class=col-md-4></div>
	<div class=col-md-2><form:label path="name"><spring:message text="FORUM NAME"/></form:label></div>
	<div class=col-md-2> <form:input path="name"/></div>
	<div class=col-md-2><form:errors path="name" cssStyle="color: #ff0000;"/></div>
	<div class=col-md-2></div>
</div>
<div class="row">
	<div class=col-md-4></div>
	<div class=col-md-2><form:label path="topic"><spring:message text="FORUM TOPIC"/></form:label></div>
	<div class=col-md-2> <form:input path="topic"/></div>
	<div class=col-md-2><form:errors path="topic" cssStyle="color: #ff0000;"/></div>
	<div class=col-md-2></div>
</div>
<%-- 
<div class="row">
	<div class=col-md-4></div>
	<div class=col-md-2><form:label path="user"><spring:message text="USER"/></form:label></div>
	<div class=col-md-2> <form:input path="user" value="${userid}"/></div>
	<div class=col-md-2></div>
	<div class=col-md-2></div>
</div>
 --%>	
<div class="row">
	<div class=col-md-4></div>
	<div class=col-md-2></div>
	<div class=col-md-2><c:if test="${!empty forum.name}">
                <input type="submit"
                    value="<spring:message text="Edit Forum"/>" />
            </c:if>
	</div>
	<div class=col-md-2> <c:if test="${empty forum.name}">
                <input type="submit"
                    value="<spring:message text="Add Forum"/>" />
         </c:if>
  </div>
	<div class=col-md-2></div>
</div> 

<div class="row">
	<div class=col-md-4></div>
	<div class=col-md-2></div>
	<div class=col-md-2></div>
	<div class=col-md-2></div>
	<div class=col-md-2></div>
</div>	
	
			
</form:form>						
</div>

<div id="footer">
<%@include file="footer.jsp"%>
</div>


</div>


