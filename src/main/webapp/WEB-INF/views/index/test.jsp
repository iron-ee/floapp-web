<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>

<div class="container">
	<!-- Featured Albums -->
	<div id="albums" class="container section featured-albums-home">
		<div class="category-head">
			<h1>New <span class="colored">Albums</span></h1>
			<p>누구보다 빠르게 남들과는 다르게 색다르게 리듬을 타는 비트위에 나그네.</p>
		</div>

		<div class="albums row">
			<div class="col-sm-4">
				<div class="album">
					<img src="http://localhost:8080/assets/img/albums/album-iu-lilac.png" alt="cover" class="img-responsive">
					<div class="cd-mask">
						<div class="center"></div>
					</div>
					<div class="info">
						<a class="album-name" href="/album/12">라일락 <i class="fa fa-arrow-circle-right"></i></a>
						<br>
						<p>아이유(IU)</p>
					</div>
				</div>
			</div>
			<div class="col-sm-4">
				<div class="album">
					<img src="http://localhost:8080/assets/img/albums/album-jessi-howare.png" alt="cover" class="img-responsive">
					<div class="cd-mask">
						<div class="center"></div>
					</div>
					<div class="info">
						<a class="album-name" href="/album/21">어떤X <i class="fa fa-arrow-circle-right"></i></a>
						<br>
						<p>제시 (Jessi)</p>
					</div>
				</div>
			</div>
			<div class="col-sm-4">
				<div class="album">
					<img src="http://localhost:8080/assets/img/albums/album-rose-ontheground.png" alt="cover" class="img-responsive">
					<div class="cd-mask">
						<div class="center"></div>
					</div>
					<div class="info">
						<a class="album-name" href="/album/11">On The Ground <i class="fa fa-arrow-circle-right"></i></a>
						<br>
						<p>ROSE (로제)</p>
					</div>
				</div>
			</div>
			<div class="col-sm-4">
				<div class="album">
					<img src="http://localhost:8080/assets/img/albums/album-ashisland-melody.png" alt="cover" class="img-responsive">
					<div class="cd-mask">
						<div class="center"></div>
					</div>
					<div class="info">
						<a class="album-name" href="/album/22">멜로디<i class="fa fa-arrow-circle-right"></i></a>
						<br>
						<p>ASH ISLAND</p>
					</div>
				</div>
			</div>
			<div class="col-sm-4">
				<div class="album">
					<img src="http://localhost:8080/assets/img/albums/album-iu-celebrity.png" alt="cover" class="img-responsive">
					<div class="cd-mask">
						<div class="center"></div>
					</div>
					<div class="info">
						<a class="album-name" href="/album/1">Celebrity<i class="fa fa-arrow-circle-right"></i></a>
						<br>
						<p>아이유 (IU)</p>
					</div>
				</div>
			</div>
			<div class="col-sm-4">
				<div class="album">
					<img src="http://localhost:8080/assets/img/albums/album-yangdail-hurt.png" alt="cover" class="img-responsive">
					<div class="cd-mask">
						<div class="center"></div>
					</div>
					<div class="info">
						<a class="album-name" href="/album/17">아파<i class="fa fa-arrow-circle-right"></i></a>
						<br>
						<p>양다일</p>
					</div>
				</div>
			</div>
		</div>
		<div class="button-container clearfix">
			<a href="/albumForm" class="button">View All <i class="fa fa-folder-open"></i></a>
		</div>
	</div>

	<!-- Favorite music -->
	<div id="songs" class="container section artists">
		<div class="category-head">
			<h1>New <span class="colored">Song</span></h1>
			<p>신곡 20</p>
			<p>아직도 안 들어본 흑우 읎쩨 ?</p>
		</div>
	
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
							<c:forEach var="music" items="${musics}">
								<ul>
									<li id="newSong-${music.id}">
										<div>
											<a id="music-artist">${music.artist}  - </a>
											<a id="music-title" onClick="musicppap(${music.mp3})" >${music.title}</a>
											<button id="btn-url"  class="jp-next">
												<i class="fa fa-play"></i>
											</button>
											<input type="hidden" id="music-url" value="${music.mp3}" />
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
	

	<!-- Video Gallery -->
	<div id="videos"class="container section video-gallery">
		<div class="category-head">
			<h1>New <span class="colored">Video</span></h1>
			<p>아직도 안 본 흑우 읎제~</p>
		</div>
		
		<div class="videos-container row">
			<div class="col-sm-6 embed-video">
				<iframe src="https://youtube.com/embed/0-q1KafFCLU" width="500" height="281" allowfullscreen></iframe>
				<div>[MV] IU(아이유) _ Celebrity</div>
			</div>
			<div class="col-sm-6 embed-video">
				<iframe src="https://youtube.com/embed/gdZLi9oWNZg" width="500" height="281" allowfullscreen></iframe>
				<div>BTS (방탄소년단) 'Dynamite' Official MV</div>
			</div>
			<div class="col-sm-6 embed-video">
				<iframe src="https://youtube.com/embed/HYfkUCKiVGw" width="500" height="281" allowfullscreen></iframe>
				<div>[ENG] SMTM9 [6회/풀버전] 'VVS' - 머쉬베놈 X 미란이 @음원 배틀 Full ver. EP.6 201120</div>
			</div>
			<div class="col-sm-6 embed-video">
				<iframe src="https://youtube.com/embed/dyRsYk0LyA8" width="500" height="281" allowfullscreen></iframe>
				<div>BLACKPINK – ‘Lovesick Girls’ M/V</div>
			</div>
		</div>

		<div class="button-container">
			<a href="/videoForm" class="button">Video Gallery <i class="fa fa-youtube-play"></i></a>
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
				mp3:"http://localhost:8080/assets/music/"+(id+1)+".mp3",
			},
			{	
				mp3:"http://localhost:8080/assets/music/"+id+".mp3",
			},
			{	
				mp3:"http://localhost:8080/assets/music/"+(id-1)+".mp3",
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