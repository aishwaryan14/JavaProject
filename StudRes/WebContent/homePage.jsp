<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>  
<!DOCTYPE>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
 </head>
<body>
<nav class="navbar navbar-expand-lg navbar navbar-dark bg-dark">
  <!-- <a class="navbar-brand" href="#">MSRIT Student Resources</a>-->
  <a class="navbar-brand" href="#">
    <img src="http://d2e9h3gjmozu47.cloudfront.net/brand.png" width="100" height="50" alt="">
  </a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">About Us</a>
      </li>
      
      <li class="nav-item">
        <a class="nav-link" href="https://www.msrit.edu/">College Website</a>
      </li>
      
        <%
     String uname= (String)session.getAttribute("user");
     String upass= (String)session.getAttribute("pass");
     System.out.println(uname);
	 System.out.println(upass);
	 request.setAttribute("usr",uname);
     
    %>
    
      
     
      
      
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Departments
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="IS.jsp">ISE</a>
          <a class="dropdown-item" href="#">CSE</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Common</a>
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="contact.jsp">Contact Us</a>
      </li>
      
       <c:choose>
      
      
        <c:when test="${usr eq 'admin'}">
        	
            <li class="nav-item active">
         <a class="nav-link" href="upload.jsp">Upload file</a>
      		</li>
      		
      		
      		
      		  <form action="Logout" method="post">
     	 <input class="btn btn-link" type="submit" value="Logout">
   			</form>
        </c:when>
        <c:otherwise>
             <li class="nav-item active">
         <a class="nav-link" href="login.jsp">Login</a>
      		</li>
        </c:otherwise>
    </c:choose>
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
  </div>
</nav>

<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
	      <img class="d-block w-100" src="http://d2e9h3gjmozu47.cloudfront.net/Banner/banner.jpeg" style="height: 425px; opacity: .2;" alt="First slide">
      <div class="carousel-caption d-none d-md-block">
		<h1 class="text-dark">Welcome to resources</h1>
    	<p class="text-body">This is a common platform for all departments and semesters to share and use repositories containing all kinds of study materials.</p>
	  </div>
    </div>    
    <div class="carousel-item">
      	<img class="d-block w-100" src="http://res.cloudinary.com/weloft/image/upload/c_scale,h_750/v1483774741/dept-sliders/ise.jpg" style="height: 425px;  opacity: .2;" alt="Second slide">
      <div class="carousel-caption d-none d-md-block">
	    <h1 class="text-dark">Contact us</h1>
    	<p class="text-body ">Request materials by contacting us.</p>
    	<a href="contact.jsp" class="btn btn-info">Contact us</a>
	  </div>
    </div>
    <div class="carousel-item">
    	  <img class="d-block w-100" src="https://d2e9h3gjmozu47.cloudfront.net/Banner/ramaiah-our-logo-featured.jpg" style="height: 425px; opacity: .2" alt="Third slide">
      <div class="carousel-caption d-none d-md-block">
	    <h1 class="text-dark">Login as admin</h1>
    	<p class="text-body ">Login as admin and upload materials.</p>
    	<a href="login.jsp" class="btn btn-info">Login</a>
	  </div>
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
<section class="wel-area wel-area-15" style="margin-top: 90px;">

			<div class="container">

				<div class="row">

					<div class="col-md-12 col-sm-12 col-xs-12">

						<div class="widget wel-service-1-widget">

							<div class="widget-title widget-title-s5 text-center">
								<span></span>
								<h2>OUR BEST FEATURES</h2>
								<p>We are constantly improvising</p>
							</div>
							<!-- widget-title -->

							<div class="widget-content">

								<div class="row">

									<div class="col-md-4 col-sm-4 col-xs-12">
										<span class="boxy-title"> <i class="fa fa-flag-checkered pull-left" style="background-color: #F9A61A; width: 100%;"> <a href="#" style="padding: 12px; font: italic normal normal normal 28px/21px georgia;">Top
													Ranked</a>
										</i>
										</span>
										<article class="entry-item clearfix">

											<div class="entry-content">

												<p class="boxy-content">We are ranked No. 64 among the
													top 100 Engineering Institutions across the country as per
													MHRD, Govt. of India, 2019</p>
												<a class="more-link clearfix" href="#" style="display: none">
													<span class="pull-left">Read more</span> <i class="fa fa-angle-right pull-left"></i>
												</a>
											</div>
										</article>
									</div>
									<!-- col-md-4 -->

									<div class="col-md-4 col-sm-4 col-xs-12">

										<article class="entry-item clearfix">
											<span class="boxy-title"> <i class="fa fa-mortar-board pull-left" style="background-color: #e46a16; width: 100%;"> <a href="#" style="padding: 12px; font: italic normal normal normal 28px/21px georgia;">Industry
														Collaborations</a>
											</i>
											</span>
											<!--i class="fa fa-mortar-board pull-left" style="background-color: #e46a16"></i-->
											<div class="entry-content">

												<p class="boxy-content">
													We are collaborated with 46 Industries so far. <br> We
													have an average of 350 Publications per year. <br> We
													have an average of 96% Placement Percentage.
												</p>
												<a class="more-link clearfix" href="#" style="display: none">
													<span class="pull-left">Read more</span> <i class="fa fa-angle-right pull-left"></i>
												</a>
											</div>
										</article>
									</div>
									<!-- col-md-4 -->

									<div class="col-md-4 col-sm-4 col-xs-12">
										<span class="boxy-title"> <i class="fa fa-lightbulb-o pull-left" style="background-color: #ac3b67; width: 100%;"> <a href="#" style="padding: 12px; font: italic normal normal normal 28px/21px georgia;">NAAC
													Accreditated with 'A' grade</a>
										</i>
										</span>
										<article class="entry-item clearfix">

											<div class="entry-content">

												<p class="boxy-content">
													We are accredited by NAAC with 'A' grade. <br> <br>
													All of our academic departments are accredited by NBA under
													new process.
												</p>
												<br> <a class="more-link clearfix" href="#" style="display: none"> <span class="pull-left">Read
														more</span> <i class="fa fa-angle-right pull-left"></i>
												</a>
											</div>
										</article>
									</div>
									<!-- col-md-4 -->

								</div>
								<!-- row -->

							</div>
							<!-- widget-content -->

						</div>
						<!-- widget -->

					</div>
					<!-- col-md-12 -->

				</div>
				<!-- row -->

			</div>
			<!-- container -->
		</section>
</body>
</html>