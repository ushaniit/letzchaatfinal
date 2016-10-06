<%@page isELIgnored="false" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<div id="main">
<div id="header">
<%@include file="header.jsp"%>
</div>
<div id="body">
<aside class="sidebar1"><div class="container">
  <h3>Notice Board</h3>
  <ul>
    <li><a href="#" data-toggle="popover" title="About Exam" data-content="You are not eligible for this exam">Vendor Exam<img class="img-responsive" src="${imgloc}new_image.jpg" style="height:50; width:50 "/></a></li>
    <li><a href="#" data-toggle="popover" title="About DT Batch" data-content="DT Batch will start from 28/06/16 at 1.30">DT Batch<img class="img-responsive" src="${imgloc}new_image.jpg" style="height:50; width:50 "/></a></li>
                   <li><a href="#" data-toggle="popover" title="About Java Batch" data-content="Java Batch will start from 28/07/16 at 1.30">Java Batch<img class="img-responsive" src="${imgloc}new_image.jpg" style="height:50; width:50 "/></a></li>
                      <li><a href="#" data-toggle="popover" title="About C++ Batch" data-content="Contact to Front Office">C++ Batch<img class="img-responsive" src="${imgloc}new_image.jpg" style="height:50; width:50 "/></a></li>
                      <li><a href="#" data-toggle="popover" title="About C Batch" data-content="Contact to Front Office">C Batch<img class="img-responsive" src="${imgloc}new_image.jpg" style="height:50; width:50 "/></a></li>
  </ul>
</div>
</aside>

<script>
$(document).ready(function(){

	 e.preventDefault(); 
    $('[data-toggle="popover"]').popover();
});
</script>
</div>

<div id="footer">
<%@include file="footer.jsp"%>
</div>


</div>


