<%@page isELIgnored="false" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<div id="main">
<div id="header">
<%@include file="header.jsp"%>

</div>
<div id="body">
 <div class="container">
  <form:form action="${pageContext.request.contextPath}/user/edit/${userid}" class="form-horizontal well" commandName="user">
    <h1>Edit Profile</h1>
  	<hr>
	<div class="row">
      <!-- left column -->
      <div class="col-md-4">
        <div class="text-center">
         
    <img src="/resources/images/${userid}.jpg" class=".img-circle" height="300" width="300"/> 
         
          
        </div>
      </div>
     
      <!-- edit form column -->
    <div class="col-md-8 personal-info">
        <div class="alert alert-info alert-dismissable">
          <a class="panel-close close" data-dismiss="alert">×</a> 
          <i class="fa fa-coffee"></i>
        <strong>STUDENT INFO</strong>
        </div> 
      <!--   <h3>Student info</h3> -->
        
       <!--  <form class="form-horizontal" role="form">
         -->
          <div class="form-group">
            <label class="col-lg-3 control-label">Id</label>
            <div class="col-lg-8">
              <form:input class="form-control" path="id" readOnly="true"/>
            </div>
          </div>
        
        
        
        
          <div class="form-group">
            <label class="col-lg-3 control-label">First name:</label>
            <div class="col-lg-8">
              <form:input class="form-control" path="fname" />
            </div>
          </div>
          <div class="form-group">
            <label class="col-lg-3 control-label">Last name:</label>
            <div class="col-lg-8">
              <form:input class="form-control" path="lname" />
            </div>
          </div>
         
          <div class="form-group">
            <label class="col-lg-3 control-label">Email:</label>
            <div class="col-lg-8">
              <form:input class="form-control" path="emailId" />
            </div>
          </div>
         
          <div class="form-group">
            <label class="col-md-3 control-label">Mobile:</label>
            <div class="col-md-8">
              <form:input class="form-control" path="mobile" />
            </div>
          </div>                  
          
           <div class="form-group">
            <label class="col-md-3 control-label">GENDER:</label>
            <div class="col-md-8">
              <form:input class="form-control" path="gender" />
            </div>
          </div>
         
          <div class="form-group">
            <label class="col-md-3 control-label"></label>
            <div class="col-md-8">
            
           <%--  <a href="<c:url value='/edit/${u.id}'/>" >Edit</a></td> --%>
           
          <input type="submit" class="btn btn-default" value="Update">
              <input type="reset" class="btn btn-default" value="Cancel">
            </div>
          </div>
      <!--   </form> -->
      </div>
  </div>
  </form:form>
</div>
<hr>





















</div>

<div id="footer">
<%@include file="footer.jsp"%>
</div>


</div>


