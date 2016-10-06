<%@page isELIgnored="false" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@include file="header.jsp"%>
<style>@media screen and (max-width: 768px) {
    .col-sm-3 {
        text-align: center;
        margin: 25px 0;
    }
    .slideanim {visibility:hidden;}
    
    </style>
<!-- carousel section -->
<div class="container-fluid">
   <div id="myCarousel1" class="carousel slide" style="max-width: 100%; margin: 0 auto">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#myCarousel1" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel1" data-slide-to="1"></li>
        <li data-target="#myCarousel1" data-slide-to="2"></li>
        <li data-target="#myCarousel1" data-slide-to="3"></li>
        <li data-target="#myCarousel1" data-slide-to="4"></li>
      </ol>
      <div class="carousel-inner">
        <div class="item active">
          <img class="img-responsive center-block" src="${imgloc}NIIT-DT-banner.jpg" alt="First carousel Image">
       </div>
        <div class="item">
          <img class="img-responsive center-block" src="${imgloc}NIIT-GNIIT-banner.jpg"    alt="Second carousel Image">
          </div>
        <div class="item">
          <img class="img-responsive center-block" src="${imgloc}niit-tc-banner.JPG"    alt="Third carousel Image">
         </div>
		 <div class="item">
          <img class="img-responsive center-block" src="${imgloc}New-Generic-Web-Banner-NIIT.JPG"    alt="Fourth carousel Image">
         </div>
          <div class="item">
          <img class="img-responsive center-block" src="${imgloc}school-solutions.jpg"    alt="Fourth carousel Image">
         </div>
   
   </div>
      <a class="left carousel-control" href="#myCarousel1" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a>
      <a class="right carousel-control" href="#myCarousel1" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
    </div>
        </div>
        <!--carousel end here -->
   
<br><br>


<!-- Container (bulletin Section) -->
<div id="bulletin" class="container-fluid text-center bg-grey">
  <h2>BULLETIN</h2><br>
  <h4>What we have done</h4>
  <div class="row text-center slideanim">
  
    <div class="col-sm-4">
      <div class="thumbnail">
        <img src="${imgloc}meanstack.png" alt="Mean Stack" width="400" height="300">
        <p><strong>NIIT launches course in Web App Development with MEAN Stack</strong></p>
        <p>MongoDB, Express.js, AngularJS, Node.js (MEAN) represents a group of open source technologies which are known to synergize well together, thereby empowering students to launch their own web and mobile apps.</p>
      </div>
    </div>
    <div class="col-sm-4">
      <div class="thumbnail">
        <img src="${imgloc}scholarship.jpg" alt="scholarship" width="400" height="300">
        <p><strong>NIIT announces 17th National Scholarship in Nigeria</strong></p>
        <p> NIIT, a global leader in skills and talent development has offered the 17th National Scholarship in Nigeria, to reward meritorious students desirous of building successful careers in today's knowledge economy</p>
      </div>
    </div>
    <div class="col-sm-4">
      <div class="thumbnail">
        <img src="${imgloc}diginext.jpg" alt="diginext" width="400" height="300">
        <p><strong>NIIT announces the launch of the first Interactive Live Online course in Digital Marketing</strong></p>
        <p>The Professional Diploma in Digital Marketing is designed for Marketing, Product, Advertising and Sales Professionals who want to build a career in Digital Marketing. </p>
      </div>
    </div>
  </div><br>
  
  <div id="aboutus" class="container-fluid about">
  <div class="row">
    <div class="col-sm-9">
      <h2>About Company Page</h2><br>
      <h4>Established in 1981, NIIT Limited, a global leader in Skills and Talent Development, offers multi-disciplinary learning management and training delivery solutions to corporations, institutions, and individuals in over 40 countries. It has become known, in particular, as a corporate training company and Industrial Training Company, with customized programs for both large and small enterprises.</h4>
<p>
NIIT has three main lines of business across the globe-Corporate Learning Group, Skills and Careers Group, and the School Learning Group.
      NIIT's Corporate Learning Group (CLG) has established NIIT as a leading Corporate Training company which offers Managed Training Services (MTS) to market-leading organizations in North America, Europe, Asia, and Oceania.
     NIIT's Skills and Careers Group (SCG) delivers a diverse range of learning and talent development programs to millions of individuals and corporate learners in areas including Banking, Finance & Insurance, Soft Skills, Business Analytics, Retail Sales Enablement, Management Education, Vocational Skills, Digital Media Marketing and new-age IT.
       NIIT's School Learning Group (SLG) provides technology based learning to over 15,000 government and private schools in India, Bhutan, South Africa and the Middle East. The futuristic NIIT nGuru range of learning solutions for schools comprises Interactive Classrooms with digital content, technology-driven Math Lab, IT Wizard programs and Quick School-an Education Resource Planning software.</p>
      <br><a class="btn btn-default btn-lg" href="#contact" >Get in Touch</a>
    </div>
    <div class="col-sm-3">
      <span class="glyphicon glyphicon-signal logo"></span>
    </div>
  </div>
</div>

  
  
  
  
  
  <h2>What our customers say</h2>
  <div id="myCarousel" class="carousel slide text-center" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarouse" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <h4>"This company is the best. I am so happy with the result!"<br><span style="font-style:normal;">Michael Roe, Vice President, Comment Box</span></h4>
      </div>
      <div class="item">
        <h4>"One word... WOW!!"<br><span style="font-style:normal;">John Doe, Salesman, Rep Inc</span></h4>
      </div>
      <div class="item">
        <h4>"Could I... BE any more happy with this company?"<br><span style="font-style:normal;">Chandler Bing, Actor, FriendsAlot</span></h4>
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>

<div id="contact" class="container-fluid bg-grey">
  <h2 class="text-center">CONTACT</h2>
  <div class="row">
    <div class="col-sm-5">
      <p>Contact us and we'll get back to you within 24 hours.</p>
      <p><span class="glyphicon glyphicon-map-marker"></span> Chicago, US</p>
      <p><span class="glyphicon glyphicon-phone"></span> +00 1515151515</p>
      <p><span class="glyphicon glyphicon-envelope"></span> myemail@something.com</p>
    </div>
    <div class="col-sm-7 slideanim">
      <div class="row">
        <div class="col-sm-6 form-group">
          <input class="form-control" id="name" name="name" placeholder="Name" type="text" required>
        </div>
        <div class="col-sm-6 form-group">
          <input class="form-control" id="email" name="email" placeholder="Email" type="email" required>
        </div>
      </div>
      <textarea class="form-control" id="comments" name="comments" placeholder="Comment" rows="5"></textarea><br>
      <div class="row">
        <div class="col-sm-12 form-group">
          <button class="btn btn-default pull-right" type="submit">Send</button>
        </div>
      </div>
    </div>
  </div>
</div>





<%@include file="footer.jsp"%>










