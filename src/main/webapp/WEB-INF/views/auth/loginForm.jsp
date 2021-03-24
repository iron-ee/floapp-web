<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!-- CSS -->
	<link rel="stylesheet" href="http://localhost:8080/assets/css/bootstrap.css" />
	<link rel="stylesheet" type="text/css" href="http://localhost:8080/assets/owl-carousel/owl.carousel.css" />
	<link rel="stylesheet" type="text/css" href="http://localhost:8080/assets/owl-carousel/owl.theme.css" />
	<link rel="stylesheet" type="text/css" href="http://localhost:8080/assets/owl-carousel/owl.transitions.css" />
	<link rel="stylesheet" type="text/css" href="http://localhost:8080/assets/lightGallery/css/lightgallery.css" />
	<!-- RS5.0 Main Stylesheet -->
	<link rel="stylesheet" type="text/css" href="http://localhost:8080/assets/revolution/css/settings.css">
	<!-- RS5.0 Layers and Navigation Styles -->
	<link rel="stylesheet" type="text/css" href="http://localhost:8080/assets/revolution/css/layers.css">
	<link rel="stylesheet" type="text/css" href="http://localhost:8080/assets/revolution/css/navigation.css">
	<link rel="stylesheet" type="text/css" href="http://localhost:8080/assets/css/style.css" />
	    <!-- ======== JavaScript ======== -->
	<script type="text/javascript" src="http://localhost:8080/assets/js/jquery-1.11.1.min.js"></script>
	<script type="text/javascript" src="http://localhost:8080/assets/js/smooth-scroll.js"></script>
	<script type="text/javascript" src="http://localhost:8080/assets/js/bootstrap.js"></script>
	<script type="text/javascript" src="http://localhost:8080/assets/js/jquery.fitvids.js"></script>
	<script type="text/javascript" src="http://localhost:8080/assets/owl-carousel/owl.carousel.min.js"></script>
	<script type="text/javascript" src="http://localhost:8080/assets/lightGallery/js/lightgallery.min.js"></script>
	<script type="text/javascript" src="http://localhost:8080/assets/js/ajax.gallery.js"></script>
	<script type="text/javascript" src="http://localhost:8080/assets/js/instafeed.min.js"></script>
	<script type="text/javascript" src="http://localhost:8080/assets/js/countdown.js"></script>
	<script type="text/javascript" src="http://localhost:8080/assets/js/jquery.validate.min.js"></script>
	<!-- RS5.0 Core JS Files -->
	<script type="text/javascript" src="http://localhost:8080/assets/revolution/js/jquery.themepunch.tools.min.js?rev=5.0"></script>
	<script type="text/javascript" src="http://localhost:8080/assets/revolution/js/jquery.themepunch.revolution.min.js?rev=5.0"></script>
	<!-- Custom JavaScript -->
	<script type="text/javascript" src="http://localhost:8080/assets/js/js.js"></script>
		<!-- MailChimp Subscribe Form Script -->
	<script type='text/javascript' src="http://localhost:8080/assets/js/mc.validate.js"></script>
	<title>Login</title>
</head>
<body>
	<div id="contact" class="contact-home section">
		<div class="category-head">
			<h1>드루와 <span class="colored">로그인</span></h1>
			<p>어서와, 빨리와 현기증나니깐</p>
		</div>

		<div class="container">
			<form action="login" method="post" name="contact" id="contact-form">
				<div class="field">
					<p>ID (Email 형식) <span class="colored">*</span></p>
					<input name="username" type="email" class="required" title="Please type your ID" placeholder="Email ...">
				</div>

				<div class="field">
					<p>Password <span class="colored">*</span></p>
					<input name="password" type="password" class="required" title="Please type your Password" placeholder="Password ...">
				</div>

				<div class="button-container">
					<button name="submit" class="button">
						Send <i class="fa fa-envelope"></i>
					</button>
				</div>
			</form>
		</div>
		
		<br/>
		<br/>
		
		<div class="category-head">
			<p> 회원가입 아직 아니했니? </p>
			<form action="joinForm" method="get">
				<div class="button-container"><button class="button">회원가입</button></div>
			</form>
		</div>
		
		<br/>
		<br/>
		<br/>
		
		<div class="category-head">
			<h1>소셜 <span class="colored">회원가입, 로그인</span></h1>
			<p>간편하게 3초컷 회원가입 1초컷 로그인</p>
		</div>
		
		<div class="button-container">
			<form action="/oauth2/authorization/google" method="get">
				<button name="submit" class="button"> Google </button>	
			</form>
			<form action="/oauth2/authorization/facebook" method="get">
				<button name="submit" class="button"> Facebook </button>
			</form>
			<form action="/oauth2/authorization/naver" method="get">
				<button name="submit" class="button"> Naver </button>
			</form>
			<form action="/oauth2/authorization/kakao" method="post">
				<button name="submit" class="button"> Kakao </button>
			</form>
		</div>
		
		
		
	</div>
<%@ include file="../layout/footer.jsp" %>
