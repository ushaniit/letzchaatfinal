<%@page isELIgnored="false" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<div id="main">
<div id="header">
<%@include file="header.jsp"%>
</div>
<br><br>
<br>
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
	<div class=col-md-2><form:label path="forumid"><spring:message text="ID"/></form:label></div>
	<div class=col-md-2> <form:input path="forumid" readonly="true" size="8"  disabled="true" />
            <form:hidden path="forumid" /></div>
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
</form:form>	

<div class="row"><div class="col-xs-10"><center><h3 style="color:blue">FORUM LIST</h3></center></div></div>
<div class="row">
<div class="col-xs-1"></div>

<div class="col-xs-10">

<c:if test="${!empty listForum}">
    <div class="table-responsive">
    <table class="table table-striped table-bordered w3-blue">
    <thead>
    <tr>
        <th>Forum Id</th>
        <th>Forum Name</th>
        <th>Forum Topic</th>
        <th>Forum User</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${listForum}" var="forum">
        <tr>
            <td>${forum.forumid}</td>
            <td>${forum.name}</td>
            <td>${forum.topic}</td>
            <td>${forum.forumid}</td>     
            <td><a href="<c:url value='/admin/edit/${forum.forumid}' />" >Edit</a></td>
            <td><a href="<c:url value='/admin/delete/${forum.forumid}' />" >Delete</a></td>
        </tr>
    </c:forEach>
    <tbody>
    </table>
 </div>
</c:if></div>
<div class="col-xs-1"></div>
</div>






					
</div>







<div id="footer">
<%@include file="footer.jsp"%>
</div>


</div>


