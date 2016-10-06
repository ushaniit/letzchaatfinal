<%@page isELIgnored="false" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<div id="main">
<div id="header">
<%@include file="header.jsp"%>
</div>
<div id="body">





admin

${ulogin.id}

${pageContext.request.userPrincipal.name}


</div>

<div id="footer">
<%@include file="footer.jsp"%>
</div>


</div>


