<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>
    
    
    <!-- Featured Albums Home -->
	<div id="albums" class="container section featured-albums-home">
		<div class="row clearfix">

			<div class="col-sm-4">
				<div class="album-single-info">
					<div class="img-container">
						<img src="/image/${song.img}" alt="Cover" class="img-responsive">
						<a id="list-add" class="buy"><span class="price">Like</span> Add List <i class="fa fa-shopping-cart"></i><input type="hidden" id="musicId-list" value="${song.id}" /></a>
					</div>
					<h2><i class="fa fa-dot-circle-o"></i> ${song.title}</h2>
					<ul>
						<li><span class="colored">Artist:</span> ${song.artist}</li>
						<li><span class="colored">Release Date:</span> ${song.releaseDate}</li>
						<li><span class="colored">Genre:</span> ${song.category}</li>
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
							<div class="jp-playl">
								<ul>
									<li id="music-${song.id}">
									<div>
										<a id="music-artist">${song.artist}  - </a>
										<a id="music-title" onClick="musicppap('${song.file}', '${song.artist}', '${song.title}')" >${song.title}</a>
										<button id="btn-url"  class="jp-next">
											<i class="fa fa-play"></i>
										</button>
										<input type="hidden" id="music-url" value="${song.file}" />
									</div>
								</li>
								</ul>
							</div>
						</div>
						<div class="jp-no-solution">
							<span>Update Required</span>
							To play the media you will need to either update your browser to a recent version or update your <a href="http://get.adobe.com/flashplayer/" target="_blank">Flash plugin</a>
						</div>
					</div>
				</div>

				<p>${song.lyrics}</p>
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
					<input type="hidden" id="musicId" value="${song.id}" />
					<div class="field">
						<p>Type a message <span class="colored">*</span></p>
						<textarea id="reply-content" cols="15" rows="5" class="required" placeholder="Message..." title="Please type a message." name="message"></textarea>
					</div>

					<button id="btn-reply-save" name="submit" class="button">
		               	<span>Post Comment</span> <i class="fa fa-comment"></i>
	            	</button>
				</form>

				<!-- Comment  -->
				<c:forEach var="reply" items="${song.replys}">
					<div id="reply-${reply.id}" class="comment">
						<div class="avatar">
							<img src="http://localhost:8080/assets/img/blog/avatar-1.jpg" alt="Avatar">
						</div>
						<h4>${reply.user.username}</h4>
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
		$("#list-add").on("click", (e)=>{
			e.preventDefault();
			let dataId = {
					musicId: $("#musicId-list").val(),
					};
			console.log(dataId);
			$.ajax({
				type:"POST",
				url:"/listAdd",
				data:JSON.stringify(dataId),
				contentType:"application/json; charset=utf-8",
				dataType:"json"
			}).done((res)=>{
				console.log(res);
				if(res.statusCode === 1){
					alert("리스트에 추가되었습니다.");
				}else{
					alert("리스트 추가에 실패하였습니다.");
				}
			});
			
		});
	</script>
    
    <script>
		$("#btn-reply-save").on("click", (e)=>{
			e.preventDefault();
			let data = {
					musicId: $("#musicId").val(),
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
					alert("댓글이 작성되었습니다.");
					location.reload();
				}else{
					alert("댓글 작성에 실패하였습니다.");
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
					alert("삭제에 실패하였습니다.");
				}
			});
		}
	</script>
    
    <script>
	    function musicppap(id, artist, title){
			let url = $("#btn-url").val();
			console.log(id);
			console.log(artist);
			console.log(title);
			jQuery(document).ready(function($) {
			
		   		"use strict";
	
				var myPlaylist2 = new jPlayerPlaylist({
					jPlayer: "#jquery_jplayer_2",
					cssSelectorAncestor: "#jp_container_2"
				}, [
					{	
						mp3:"/songlist/"+id,
					},
					{	
						mp3:"/songlist/"+id,
					},
				], {
					playlistOptions: {
					    enableRemoveControls: true
					},
					swfPath: "http://localhost:8080/assets/jplayer/jplayer",
					supplied: "mp3",
					wmode: "window",
					useStateClassSkin: true,
					autoBlur: false,
					smoothPlayBar: true,
					keyEnabled: true,
				});
				
				
				$("#jquery_jplayer_2").on($.jPlayer.event.play, function(event) {
				       $('#player-bars').addClass('animated');
				   	}
				);
	
			});
		};
	</script>
    
<%@ include file="../layout/footer.jsp" %>