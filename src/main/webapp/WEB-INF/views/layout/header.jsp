<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<sec:authorize access="isAuthenticated()">
	<sec:authentication property="principal" var="principal" />
</sec:authorize>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>M I M L</title>	
	<!-- CSS -->
	<link rel="stylesheet" href="../../../assets/css/bootstrap.css" />
	<link rel="stylesheet" type="text/css" href="../../../assets/owl-carousel/owl.carousel.css" />
	<link rel="stylesheet" type="text/css" href="../../../assets/owl-carousel/owl.theme.css" />
	<link rel="stylesheet" type="text/css" href="../../../assets/owl-carousel/owl.transitions.css" />
	<link rel="stylesheet" type="text/css" href="../../../assets/lightGallery/css/lightgallery.css" />
	<!-- RS5.0 Main Stylesheet -->
	<link rel="stylesheet" type="text/css" href="../../../assets/revolution/css/settings.css">
	<!-- RS5.0 Layers and Navigation Styles -->
	<link rel="stylesheet" type="text/css" href="../../../assets/revolution/css/layers.css">
	<link rel="stylesheet" type="text/css" href="../../../assets/revolution/css/navigation.css">
	<link rel="stylesheet" type="text/css" href="../../../assets/css/style.css" />
	
	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    
    <!-- ======== JavaScript ======== -->
	<script type="text/javascript" src="../../../assets/js/jquery-1.11.1.min.js"></script>
	<script type="text/javascript" src="../../../assets/js/smooth-scroll.js"></script>
	<script type="text/javascript" src="../../../assets/js/bootstrap.js"></script>
	<script type="text/javascript" src="../../../assets/js/jquery.fitvids.js"></script>
	<script type="text/javascript" src="../../../assets/owl-carousel/owl.carousel.min.js"></script>
	<script type="text/javascript" src="../../../assets/lightGallery/js/lightgallery.min.js"></script>
	<script type="text/javascript" src="../../../assets/js/ajax.gallery.js"></script>
	<script type="text/javascript" src="../../../assets/js/instafeed.min.js"></script>
	<script type="text/javascript" src="../../../assets/js/countdown.js"></script>
	<script type="text/javascript" src="../../../assets/js/jquery.validate.min.js"></script>
	<!-- RS5.0 Core JS Files -->
	<script type="text/javascript" src="../../../assets/revolution/js/jquery.themepunch.tools.min.js?rev=5.0"></script>
	<script type="text/javascript" src="../../../assets/revolution/js/jquery.themepunch.revolution.min.js?rev=5.0"></script>
	<!-- Custom JavaScript -->
	<script type="text/javascript" src="../../../assets/js/js.js"></script>
	<!-- jPlayer Files & JavaScript -->
	<script type="text/javascript" src="../../../assets/jplayer/jplayer/jquery.jplayer.min.js"></script>
	<script type="text/javascript" src="../../../assets/jplayer/add-on/jplayer.playlist.js"></script>
	<!-- MailChimp Subscribe Form Script -->
	<script type='text/javascript' src='../../../assets/js/mc.validate.js'></script>
</head>
<body data-spy="scroll" data-target=".nav-container" data-offset="80">
	
	<!-- Preloader -->
	<div id="preloaderTL">
		<div class="bars-animation">
			<div class="bar one"></div>
			<div class="bar two"></div>
			<div class="bar three"></div>
			<div class="bar four"></div>
			<div class="bar five"></div>
		</div>
	</div>

	<!-- Header Bars Animated -->
	<div class="header-bars-animated">
		<div class="container">
			<ul class="bars-container">
				<li><div class="bar-wrapper"><div class="bar one"></div></div></li>
				<li><div class="bar-wrapper"><div class="bar two"></div></div></li>
				<li><div class="bar-wrapper"><div class="bar three"></div></div></li>
				<li><div class="bar-wrapper"><div class="bar four"></div></div></li>
				<li><div class="bar-wrapper"><div class="bar five"></div></div></li>

				<li><div class="bar-wrapper"><div class="bar one"></div></div></li>
				<li><div class="bar-wrapper"><div class="bar two"></div></div></li>
				<li><div class="bar-wrapper"><div class="bar three"></div></div></li>
				<li><div class="bar-wrapper"><div class="bar four"></div></div></li>
				<li><div class="bar-wrapper"><div class="bar five"></div></div></li>

				<li><div class="bar-wrapper"><div class="bar one"></div></div></li>
				<li><div class="bar-wrapper"><div class="bar two"></div></div></li>
				<li><div class="bar-wrapper"><div class="bar three"></div></div></li>
				<li><div class="bar-wrapper"><div class="bar four"></div></div></li>
				<li><div class="bar-wrapper"><div class="bar five"></div></div></li>

				<li><div class="bar-wrapper"><div class="bar one"></div></div></li>
				<li><div class="bar-wrapper"><div class="bar two"></div></div></li>
				<li><div class="bar-wrapper"><div class="bar three"></div></div></li>
				<li><div class="bar-wrapper"><div class="bar four"></div></div></li>
				<li><div class="bar-wrapper"><div class="bar five"></div></div></li>

				<li><div class="bar-wrapper"><div class="bar one"></div></div></li>
				<li><div class="bar-wrapper"><div class="bar two"></div></div></li>
				<li><div class="bar-wrapper"><div class="bar three"></div></div></li>
				<li><div class="bar-wrapper"><div class="bar four"></div></div></li>
				<li><div class="bar-wrapper"><div class="bar five"></div></div></li>
			</ul>
		</div>
	</div>



	<!-- Header Bar 2 -->
	<div id="home" class="header-bar-2">
		<div class="logo-container">
			<a href="mainForm"><span>Music Is</span> My Life</a>
		</div>
		<div class="player-nav-container">
			<!-- Audio Player -->
			<div class="player-container">
				<i id="player-button" class="fa fa-music"></i>
				<div id="jquery_jplayer_1" class="jp-jplayer"></div>
				<div id="jp_container_1" class="jp-audio" role="application" aria-label="media player">
					<div class="jp-type-playlist">
						<div class="jp-gui jp-interface">
							<div class="jp-controls">
								<button id="playlist-toggle"><i class="fa fa-bars"></i></button>
								<button class="jp-previous" tabindex="0"><i class="fa fa-step-backward"></i></button>
								<button class="jp-play" tabindex="0"><i class="fa fa-play"></i></button>
								<button class="jp-next" tabindex="0"><i class="fa fa-step-forward"></i></button>
								<button class="jp-mute" tabindex="0"><i class="fa fa-volume-up"></i></button>
								<!-- <button class="jp-volume-max" role="button" tabindex="0"><i class="fa fa-volume-up"></i></button> -->
								<div class="jp-volume-bar">
									<div class="jp-volume-bar-value"></div>
								</div>
							</div>
							<!-- Display the track inside player -->
							<div id="nowPlaying">
								<span class="artist-name"></span>
								<span class="track-name"></span>
							</div><!-- #nowPlaying -->
							<div class="jp-progress">
								<div class="jp-seek-bar">
									<div class="jp-play-bar"></div>
								</div>
							</div>
							<!-- Playlist -->
							<div class="jp-playlist">
								<ul>
									<li>&nbsp;</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- Nav Container -->
			<div class="nav-container">
				<ul id="main-nav" class="main-nav nav">
					<li><a class="scrollTo" href="mainForm">Home</a></li>
					<li><a class="scrollTo" href="#albums">Albums</a></li>
					<li><a class="scrollTo" href="#events">Song</a></li>
					<li><a class="scrollTo" href="#galleryId">Video</a></li>
					<li class="has-submenu">
						<a href="#">Pages <i class="fa fa-angle-down"></i></a>
						<ul class="submenu">
							<li><a href="album-single.html">Album Single</a></li>
							<li><a href="albums.html">Albums Page</a></li>
							<li><a href="blog-single.html">Blog Single</a></li>
							<li><a href="blog.html">Blog Page</a></li>
							<li><a href="events.html">Events</a></li>
							<li><a href="video-gallery.html">Video Gallery</a></li>
							<li><a href="header-2.html">Header Style 2</a></li>
							<li><a href="owl-slider.html">Owl Slider</a></li>
						</ul>
					</li>
					<c:choose>
						<c:when test="${empty principal}">
							<li><a href="joinForm">join</a></li>
							<li><a href="loginForm">login</a></li>
						</c:when>
						<c:otherwise>
							<li><a href="mainForm">info</a></li>
							<li><a href="logout">logout</a></li>
						</c:otherwise>
					</c:choose>
				</ul>
				<i id="menu-button" class="fa fa-bars"></i>
			</div>
		</div>

		<div class="search-container">
			<i id="search-button" class="fa fa-search search-button"></i>
			<form  id="search-nav" class="search-nav" method="post" action="#">
				<input type="text" class="search-input" placeholder="Search..">
				<button type="submit"><i class="fa fa-search"></i></button>
			</form>
		</div>
	</div>

	<!-- Go to top button -->
	<div class="back-to-top fa fa-angle-up"></div>


