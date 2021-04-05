<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>

<!-- Featured Albums -->
	<div id="albums" class="container section featured-albums-home">
		<div class="category-head">
			<h1>New <span class="colored">Albums</span></h1>
			<p>누구보다 빠르게 남들과는 다르게 색다르게 리듬을 타는 비트위에 나그네.</p>
		</div>

		<div class="albums row">
			<c:forEach var="song" items="${songs.content}">
				<div class="col-sm-6">
					<div class="album">
						<img src="/image/${song.img}" alt="cover" class="img-responsive">
						<div class="cd-mask">
							<div class="center"></div>
						</div>
						<div class="info">
							<a class="album-name" href="/album/${song.id}">${song.title} <i class="fa fa-arrow-circle-right"></i></a>
							<br>
							<p>${song.artist}</p>
						</div>
					</div>
				</div>
			</c:forEach>			
		</div>
		
		<div class="button-container">
			<c:choose>
				<c:when test="${songs.first}">
					<a class="button"><i class="fa fa-step-backward"></i>  Previous</a>
				</c:when>
				<c:otherwise>
					<a class="button" href="?page=${songs.number-1}"><i class="fa fa-step-backward"></i>  Previous</a>
				</c:otherwise>
			</c:choose>
			<c:choose>
				<c:when test="${songs.last}">
					<a class="button">Next  <i class="fa fa-step-forward"></i></a>
				</c:when>
				<c:otherwise>
					<a class="button" href="?page=${songs.number+1}">Next  <i class="fa fa-step-forward"></i></a>
				</c:otherwise>
			</c:choose>
		</div>
	</div>



<%@ include file="../layout/footer.jsp" %>