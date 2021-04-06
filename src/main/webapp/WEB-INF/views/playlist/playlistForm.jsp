<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>

<div class="container">
	<!-- Featured Albums -->
	<div id="playlist" class="container section featured-albums-home">
		<div class="category-head">
			<h1>나만 알고싶은, <span class="colored">PlayList</span></h1>
			<p>1일 1깡, 1일 3롤린</p>
		</div>

	<br/>
	<br/>
	<br/>
		
	<!-- Favorite music -->
	<div id="songs" class="col-sm-12 album-container-single">
		<div id="jquery_jplayer_2" class="jp-jplayer"></div>
		<div id="jp_container_2" class="jp-audio single-album-player"
			role="application" aria-label="media player">
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
						<button class="jp-previous" tabindex="0">
							<i class="fa fa-step-backward"></i>
						</button>
						<button class="jp-play" tabindex="0">
							<i class="fa fa-play"></i>
						</button>
						<button class="jp-next" tabindex="0">
							<i class="fa fa-step-forward"></i>
						</button>
						<button class="jp-mute" tabindex="0">
							<i class="fa fa-volume-up"></i>
						</button>
						<!-- <button class="jp-volume-max" role="button" tabindex="0"><i class="fa fa-volume-up"></i></button> -->
						<div class="jp-volume-bar">
							<div class="jp-volume-bar-value"></div>
						</div>
					</div>
					<!-- Display the track inside player -->
					<div id="nowPlaying2">
						<span class="artist-name"></span> 
						<span class="track-name"></span>
					</div>
					<!-- #nowPlaying -->
					<!-- Jp Progress -->
					<div class="jp-progress">
						<div class="jp-seek-bar">
							<div class="jp-play-bar"></div>
						</div>
					</div>
					<!-- Playlist -->
					<div class="jp-playl">
						<c:forEach var="playsong" items="${user.plist}">
							<ul>
								<li id="list-${playsong.id}">
									<div>
										<a id="music-artist">${playsong.song.artist}  - </a>
										<a id="music-title" onClick="musicppap('${playsong.song.file}')" >${playsong.song.title}</a>
										<button id="btn-url"  class="jp-next">
											<i class="fa fa-play"></i>
										</button>
										<input type="hidden" id="music-url" value="${playsong.song.file}" />
									</div>
								</li>
							</ul>
						</c:forEach>
						
						
					</div>
				</div>
				<div class="jp-no-solution">
					<span>Update Required</span> To play the media you will need to
					either update your browser to a recent version or update your <a
						href="http://get.adobe.com/flashplayer/" target="_blank">Flash
						plugin</a>
				</div>
			</div>
		</div>

		<p></p>
	</div>
</div>
</div>

	
	
	<script>

	function musicppap(id){
		let url = $("#btn-url").val();
		console.log(id);
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