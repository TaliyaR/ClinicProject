<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>MedClinic</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="" />
	<meta name="keywords" content="" />
	<meta name="author" content="" />

	<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="../../resources/css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="../../resources/css/icomoon.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="../../resources/css/bootstrap.css">
	<!-- Magnific Popup -->
	<link rel="stylesheet" href="../../resources/css/magnific-popup.css">
	<!-- Owl Carousel  -->
<!--	<link rel="stylesheet" href="css/owl.carousel.min.css">-->
<!--	<link rel="stylesheet" href="css/owl.theme.default.min.css">-->
	<!-- Flexslider  -->
	<link rel="stylesheet" href="../../resources/css/flexslider.css">
	<!-- Flaticons  -->
	<link rel="stylesheet" href="../../resources/fonts/flaticon/font/flaticon.css">
	<!-- Theme style  -->
	<link rel="stylesheet" href="../../resources/css/style.css">

	<!-- Modernizr JS -->
	<script src="../../resources/js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
		<script src="../../resources/js/respond.min.js"></script>
		<![endif]-->

	</head>
	<body>
		
	<div class="colorlib-loader"></div>
	
	<div id="page">
	<nav class="colorlib-nav" role="navigation">
		<div class="top-menu">
			<div class="container">
				<div class="row">
					<div class="col-xs-12">
						<div class="top">
							<div class="row">
								<div class="col-md-6">
									<div id="colorlib-logo"><a href="/jsp/index.jsp">Med<span>Clinic</span></a></div>
								</div>
								<div class="col-md-6">
									<div class="num">
										<span class="icon"><i class="icon-phone"></i></span>
										<p><a href="#">8-800-555-35-35</a><br><a href="#">8-800-555-35-35</a></p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="menu-wrap">
				<div class="container">
					<div class="row">
						<div class="col-xs-8">
							<div class="menu-1">
								<ul>
									<li class="active"><a href="/jsp/index.jsp">Домой</a></li>
									<li><a href="/maindoctors">Врачи</a></li>
									<li><a href="/jsp/aboutUs.jsp">О нас</a></li>
									<li><a href="/jsp/contact.jsp">Контакты</a></li>
								</ul>
							</div>
						</div>
						<div class="navbar-right">
							<div class="menu-1">
								<ul><li class="active"><a href="/edit">Личный кабинет</a> </li></ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</nav>
	
	<aside id="colorlib-hero">
		<div class="flexslider">
			<ul class="slides">
		   	<li style="background-image: url(../../resources/images/img_bg_6.jpg);">
		   		<div class="overlay"></div>
		   		<div class="container">
		   			<div class="row">
			   			<div class="col-md-8 col-md-offset-2 col-md-pull-2 slider-text">
			   				<div class="slider-text-inner">
			   					<h1>Ваше здоровье <strong>на первом <br>месте</strong></h1>
<!--									<h2>Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</h2>-->
<!--							<p><a class="btn btn-primary btn-lg btn-learn" href="#">Make an Appointment</a></p>-->
						</div>
			   			</div>
			   		</div>
		   		</div>
		   	</li>
		   	<li style="background-image: url(../../resources/images/img_bg_5.jpg);">
		   		<div class="overlay"></div>
		   		<div class="container">
		   			<div class="row">
			   			<div class="col-md-8 col-md-offset-2 col-md-pull-2 slider-text">
			   				<div class="slider-text-inner">
			   					<h1>Мы поможем вам <strong>найти лучшего доктора</strong></h1>
<!--									<h2>Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</h2>-->
<!--									<p><a class="btn btn-primary btn-lg btn-learn" href="#">Make an Appointment</a></p>-->
			   				</div>
			   			</div>
			   		</div>
		   		</div>
		   	</li>
		   	<li style="background-image: url(../../resources/images/img_bg_1.jpg);">
		   		<div class="overlay"></div>
		   		<div class="container">
		   			<div class="row">
			   			<div class="col-md-8 col-md-offset-2 col-md-pull-2 slider-text">
			   				<div class="slider-text-inner">
			   					<h1>Гарантированно <strong>безопасная</strong> медицина</h1>
<!--									<h2>Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</h2>-->
<!--									<p><a class="btn btn-primary btn-lg btn-learn" href="#">Make an Appointment</a></p>-->
			   				</div>
			   			</div>
			   		</div>
		   		</div>
		   	</li>
		  	</ul>
	  	</div>
	</aside>

	<div id="colorlib-choose">
		<div class="container-fluid">
			<div class="row">
				<div class="choose">
					<div class="half img-bg" style="background-image: url(../../resources/images/cover_bg_1.jpg);"></div>
					<div class="half features-wrap">
						<div class="features-services animate-box">
							<div class="colorlib-heading animate-box">
								<h2>Что делает нас лучшими?</h2>
							</div>
							<div class="row">
								<div class="col-md-6">
									<div class="features animate-box">
										<span class="icon text-center"><i class="flaticon-healthy-1"></i></span>
										<div class="desc">
											<h3>Квалифицированные доктора</h3>
											<p>A small river named Duden flows by their place and supplies it with the necessary regelialia. </p>
										</div>
									</div>
									<div class="features animate-box">
										<span class="icon text-center"><i class="flaticon-stethoscope"></i></span>
										<div class="desc">
											<h3>Бесплатная консультация</h3>
											<p>A small river named Duden flows by their place and supplies it with the necessary regelialia. </p>
										</div>
									</div>
								</div>
								<div class="col-md-6">
									<div class="features animate-box">
										<span class="icon text-center"><i class="flaticon-medical-1"></i></span>
										<div class="desc">
											<h3>Онлайн запись</h3>
											<p>A small river named Duden flows by their place and supplies it with the necessary regelialia. </p>
										</div>
									</div>
									<div class="features animate-box">
										<span class="icon text-center"><i class="flaticon-radiation"></i></span>
										<div class="desc">
											<h3>Современное оборудование</h3>
											<p>A small river named Duden flows by their place and supplies it with the necessary regelialia. </p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


	</div>

	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="icon-arrow-up"></i></a>
	</div>
	
	<!-- jQuery -->
	<script src="../../resources/js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="../../resources/js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="../../resources/js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="../../resources/js/jquery.waypoints.min.js"></script>
	<!-- Stellar Parallax -->
	<script src="../../resources/js/jquery.stellar.min.js"></script>
	<!-- Carousel -->
	<script src="../../resources/js/owl.carousel.min.js"></script>
	<!-- Flexslider -->
	<script src="../../resources/js/jquery.flexslider-min.js"></script>
	<!-- countTo -->
	<script src="../../resources/js/jquery.countTo.js"></script>
	<!-- Magnific Popup -->
	<script src="../../resources/js/jquery.magnific-popup.min.js"></script>
	<script src="../../resources/js/magnific-popup-options.js"></script>
	<!-- Sticky Kit -->
	<script src="../../resources/js/sticky-kit.min.js"></script>
	<!-- Main -->
	<script src="../../resources/js/main.js"></script>

	</body>
</html>

