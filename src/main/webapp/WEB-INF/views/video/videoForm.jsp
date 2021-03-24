<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>


<!-- Video Gallery -->
	<div class="container section video-gallery">
		<div class="category-head">
			<h1>New <span class="colored">Video</span></h1>
			<p> 아직도 안 본 흑우 읎제~</p>
		</div>

		<div class="videos-container row">
			<c:forEach var="video" items="${videos.content}">
				<div class="col-sm-6 embed-video">
					<iframe src="${video.url}" width="500" height="281" allowfullscreen></iframe>
					<div>[MV] ${video.artist} _ ${video.title} </div>
				</div>
			</c:forEach>
		</div>

		<div class="button-container">
			<c:choose>
				<c:when test="${videos.first}">
					<a class="button"><i class="fa fa-step-backward"></i>  Previous</a>
				</c:when>
				<c:otherwise>
					<a class="button" href="?page=${videos.number-1}"><i class="fa fa-step-backward"></i>  Previous</a>
				</c:otherwise>
			</c:choose>
			<c:choose>
				<c:when test="${videos.last}">
					<a class="button">Next  <i class="fa fa-step-forward"></i></a>
				</c:when>
				<c:otherwise>
					<a class="button" href="?page=${videos.number+1}">Next  <i class="fa fa-step-forward"></i></a>
				</c:otherwise>
			</c:choose>
		</div>
	</div>



<%@ include file="../layout/footer.jsp" %>