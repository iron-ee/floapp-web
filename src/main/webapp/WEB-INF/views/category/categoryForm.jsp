<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>

	<!-- Artists -->
	<div id="collection" class="container section artists">
		<div class="category-head">
			<h1>Favorite <span class="colored">Collection</span></h1>
			<p>마, 고마 니 입 맛대로 골라삐라</p>
		</div>

		<div class="container">
			<div class="row">
				<div class="col-sm-3 artist">
					<div class="artist-wrapper">
						<img src="http://localhost:8080/assets/img/category/category-pop.jpg" alt="Artist" class="img-responsive">
						<div class="mask">
							<h1>POP</h1>
							<p>Pop Collection</p>
							<ul class="social">
								<li><a href="/category/pop" class="fa fa-arrow-circle-right"></a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-sm-3 artist">
					<div class="artist-wrapper">
						<img src="http://localhost:8080/assets/img/category/category-ballad.jpg" alt="Artist" class="img-responsive">
						<div class="mask">
							<h1>BALLAD</h1>
							<p>Ballad Collection</p>
							<ul class="social">
								<li><a href="/category/ballad" class="fa fa-arrow-circle-right"></a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-sm-3 artist">
					<div class="artist-wrapper">
						<img src="http://localhost:8080/assets/img/category/category-dance.jpg" alt="Artist" class="img-responsive">
						<div class="mask">
							<h1>DANCE</h1>
							<p>Dance Collection</p>
							<ul class="social">
								<li><a href="/category/dance" class="fa fa-arrow-circle-right"></a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-sm-3 artist">
					<div class="artist-wrapper">
						<img src="http://localhost:8080/assets/img/category/category-hiphop.jpg" alt="Artist" class="img-responsive">
						<div class="mask">
							<h1>HIPHOP</h1>
							<p>HipHop Collection</p>
							<ul class="social">
								<li><a href="/category/hiphop" class="fa fa-arrow-circle-right"></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
<%@ include file="../layout/footer.jsp" %>