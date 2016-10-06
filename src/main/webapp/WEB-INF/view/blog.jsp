<%@include file="header.jsp"%>

<br><br><br>

<html>
   
   <head>
   <script type="text/javascript" src="resources/bootstrap/js/angular.min.js"></script>
     <!--  <script src = "https://ajax.googleapis.com/ajax/libs/angularjs/1.3.3/angular.min.js"></script> -->
   </head>
   



  <script> 

var app=angular.module("searchApp",[]).controller("TableCtrl",function($scope)
                    {
            
             $scope.prod=${access};
                    });

</script> 
</head>
<form:form action="${pageContext.request.contextPath}/admin/blog/add" method="post" commandName="blog">

<body>
 
	
<div class="container">
    <div class="row">
        <form role="form">
            <div class="col-lg-6">
                <div class="well well-sm"><strong><span class="glyphicon glyphicon-asterisk"></span>Required Field</strong></div>
                <div class="form-group">
                    <label for="InputName">BLOG POST TITLE</label>
                    <div class="input-group">
                        <input type="text" class="form-control" name="title" id="title" placeholder="Enter Name" required>
                        <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                    </div>
                </div>
              
               
                <div class="form-group">
                    <label for="InputMessage">BLOG POST CONTENT</label>
                    <div class="input-group">
                        <textarea name="description" id="description" class="form-control" rows="5" required></textarea>
                        <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                    </div>
                </div>
                 <button class="btn btn-danger" type="reset">Reset</button>
                <input type="submit" name="submit" id="submit" value="Publish" class="btn btn-info pull-right">
               
            </div>
            </form></div>
            </div>
          
        </form:form>
       
   <div class="row"><div class="col-xs-10"><center><h3 style="color:blue">Blog LIST</h3></center></div></div>
<div class="row">
<div class="col-xs-1"></div>

<div class="col-xs-10">

<c:if test="${!empty listBlog}">
    <div class="table-responsive">
    <table class="table table-striped table-bordered w3-blue">
    <thead>
    <tr>
        <th>Blog Id</th>
        <th>Blog Title</th>
        <th>Blog Content</th>
        <th>Blog User</th>
        <th>Edit</th>
        
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${listBlog}" var="blog">
        <tr>
            <td>${blog.blogid}</td>
            <td>${blog.title}</td>
            <td>${blog.description}</td>
            <td>${blog.userid}</td>     
           
            <td><a href="<c:url value='/admin/deleteb/${blog.blogid}' />" >Delete</a></td>
        </tr>
    </c:forEach>
    <tbody>
    </table>
 </div>
</c:if></div>
<div class="col-xs-1"></div>
</div>






					








<div id="footer">
<%@include file="footer.jsp"%>
</div>




   
             
           
             
         
   
</body>