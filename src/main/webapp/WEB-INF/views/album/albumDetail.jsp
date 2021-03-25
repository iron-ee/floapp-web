<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>
    
    
    <!-- Featured Albums Home -->
	<div id="albums" class="container section featured-albums-home">
		<div class="row clearfix">

			<div class="col-sm-4">
				<div class="album-single-info">
					<div class="img-container">
						<img src="${album.imgUrl}" alt="Cover" class="img-responsive">
						<a href="#" class="buy"><span class="price">Like</span> Add List <i class="fa fa-shopping-cart"></i></a>
					</div>
					<h2><i class="fa fa-dot-circle-o"></i> ${album.title}</h2>
					<ul>
						<li><span class="colored">Artist:</span> ${album.artist}</li>
						<li><span class="colored">Release Date:</span> 15 SEP 2016</li>
						<li><span class="colored">Genre:</span>  R&amp;B, DANCE, POP</li>
						<li><span class="colored">Produced By:</span> Music Production INC</li>
					</ul>
				</div>
			</div>

			<div class="col-sm-8 album-container-single">
				<div id="jquery_jplayer_2" class="jp-jplayer"></div>
				<div id="jp_container_2" class="jp-audio single-album-player" role="application" aria-label="media player">
					<div class="jp-type-playlist">
						<div class="jp-gui jp-interface">
							<div class="jp-controls">
								<div id="player-bars" class="bars-animation">
									<div class="bar one"></div>
									<div class="bar two"></div>
									<div class="bar three"></div>
									<div class="bar four"></div>
									<div class="bar five"></div>
								</div>
								<!-- <button id="playlist-toggle"><i class="fa fa-bars"></i></button> -->
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
							<div id="nowPlaying2">
								<span class="artist-name"></span>
								<span class="track-name"></span>
							</div><!-- #nowPlaying -->
							<!-- Jp Progress -->
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
						<div class="jp-no-solution">
							<span>Update Required</span>
							To play the media you will need to either update your browser to a recent version or update your <a href="http://get.adobe.com/flashplayer/" target="_blank">Flash plugin</a>
						</div>
					</div>
				</div>

				<p>This is our best albums launched in 2015. it contains eight awesome tracks recorded especially for you. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore.</p>
			</div>
		</div>
	</div>
	
	<!-- Blog Single -->
	<div class="container blog-single">
		<div class="row">
		<!-- == Content == -->
		<div class="col-sm-8 content">
			<div class="comments-section clearfix">

				<h3>Leave a comment</h3>

				<form name="contact" id="comment-form">
					<input type="hidden" id="albumId" value="${album.id}" />
					<div class="field">
						<p>Type a message <span class="colored">*</span></p>
						<textarea id="reply-content" cols="15" rows="5" class="required" placeholder="Message..." title="Please type a message." name="message"></textarea>
					</div>

					<button id="btn-reply-save" class="button">
		               	<span>Post Comment</span> <i class="fa fa-comment"></i>
	            	</button>
				</form>

				<!-- Comment  -->
				<c:forEach var="reply" items="${album.replys}">
					<div id="reply-${reply.id}" class="comment">
						<div class="avatar">
							<img src="http://localhost:8080/assets/img/blog/avatar-1.jpg" alt="Avatar">
						</div>
						<h4>${reply.user.nickname}</h4>
						<p>${reply.content}</p>
						<c:if test="${reply.user.id == principal.user.id}">
							<a onClick="deleteReply(${reply.id})" class="reply">delete</a>
						</c:if>
					</div>
				</c:forEach>

			</div>
		</div>
	</div>
	</div>
    
    
    <script>
	$("#btn-reply-save").on("click", (e)=>{
		e.preventDefault();
		let data = {
				albumId: $("#albumId").val(),
				content: $("#reply-content").val()
				};
		console.log(data);
		$.ajax({
			type:"POST",
			url:"/reply",
			data:JSON.stringify(data),
			contentType:"application/json; charset=utf-8",
			dataType:"json"
		}).done((res)=>{
			console.log(res);
			if(res.statusCode === 1){
				location.reload();
			}else{
				alert("댓글 작성에 실패하였습니다.")
			}
		});
		
	});
	</script>
	
	<script>
	function deleteReply(id){
		$.ajax({
			type:"DELETE",
			url:"/reply/"+id,
			dataType:"json"
		}).done((res)=>{
			console.log(res);
			if(res.statusCode === 1){
				$("#reply-"+id).remove();
			}else{
				alert("삭제에 실패하였습니다.")
			}
		});
	}
	</script>
    
    
<%@ include file="../layout/footer.jsp" %>