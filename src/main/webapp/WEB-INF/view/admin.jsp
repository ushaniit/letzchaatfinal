<div id="main">
<div id="header">
<%@include file="header.jsp"%>
</div>
<div>
<h1 align="center">Welcome to Admin Page</h1>

<br><br>
 <aside class="sidebar">

           <ul>	<li></li>
               <li>
               
                    <h4>Categories</h4>
                    <ul>
                        <li><a href="${pageContext.request.contextPath}/admin/viewblog">View All Blog</a><span class="badge ">${blog}</span></li>
                       <li><a href="admin/AllUser">View All User</a><span class="badge">${users}</span></li>
                          <li><a href="admin/viewContact">User Msg</a><span class="badge ">${message}</span></li>
                    </ul>
                </li>
                
             </ul>
		
        </aside>



</div>


<div id="footer">
<%@include file="footer.jsp"%>
</div>
</div>



