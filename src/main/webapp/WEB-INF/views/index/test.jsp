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
					<img src="../assets/img/albums/album-iu.png" alt="cover" class="img-responsive">
					<div class="cd-mask">
						<div class="center"></div>
					</div>
					<div class="info">
						<a class="album-name" href="album-single.html">Celebrity <i class="fa fa-arrow-circle-right"></i></a>
						<br>
						<p>아이유(IU)</p>
					</div>
				</div>
			</div>
			<div class="col-sm-4">
				<div class="album">
					<img src="../assets/img/albums/album-shin.png" alt="cover" class="img-responsive">
					<div class="cd-mask">
						<div class="center"></div>
					</div>
					<div class="info">
						<a class="album-name" href="album-single.html">Mind Travel <i class="fa fa-arrow-circle-right"></i></a>
						<br>
						<p>신희재</p>
					</div>
				</div>
			</div>
			<div class="col-sm-4">
				<div class="album">
					<img src="../assets/img/albums/album-blackpink.png" alt="cover" class="img-responsive">
					<div class="cd-mask">
						<div class="center"></div>
					</div>
					<div class="info">
						<a class="album-name" href="album-single.html">Lovesick Girls <i class="fa fa-arrow-circle-right"></i></a>
						<br>
						<p>BLACKPINK</p>
					</div>
				</div>
			</div>
			<div class="col-sm-4">
				<div class="album">
					<img src="../assets/img/albums/album-showme.png" alt="cover" class="img-responsive">
					<div class="cd-mask">
						<div class="center"></div>
					</div>
					<div class="info">
						<a class="album-name" href="album-single.html">쇼미더머니 9 Episode 1 <i class="fa fa-arrow-circle-right"></i></a>
						<br>
						<p>Various Artists</p>
					</div>
				</div>
			</div>
			<div class="col-sm-4">
				<div class="album">
					<img src="../assets/img/albums/album-bts.png" alt="cover" class="img-responsive">
					<div class="cd-mask">
						<div class="center"></div>
					</div>
					<div class="info">
						<a class="album-name" href="album-single.html">Dynamite (DayTime Version) <i class="fa fa-arrow-circle-right"></i></a>
						<br>
						<p>방탄소년단</p>
					</div>
				</div>
			</div>
			<div class="col-sm-4">
				<div class="album">
					<img src="../assets/img/albums/album-diving.png" alt="cover" class="img-responsive">
					<div class="cd-mask">
						<div class="center"></div>
					</div>
					<div class="info">
						<a class="album-name" href="album-single.html">DIVING<i class="fa fa-arrow-circle-right"></i></a>
						<br>
						<p>KAMELEON</p>
					</div>
				</div>
			</div>
		</div>
		<div class="button-container clearfix">
			<a href="albums.html" class="button">View All <i class="fa fa-folder-open"></i></a>
		</div>
	</div>

	<!-- Favorite music -->
	<div class="col-sm-12 album-container-single">
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
					<div class="jp-playlist">
						<ul>
							<li>&nbsp;</li>
						</ul>
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

		<p>This is our best albums launched in 2015. it contains eight
			awesome tracks recorded especially for you. Lorem ipsum dolor sit
			amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt
			ut labore.</p>
	</div>


	<!-- Video Gallery -->
	<div class="container section video-gallery">
		<div class="category-head">
			<h1>New <span class="colored">Video</span></h1>
			<p>Watch our awesome performance from these concerts in 2015. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore.</p>
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
			<a href="video-gallery.html" class="button">View Gallery <i class="fa fa-youtube-play"></i></a>
		</div>
	</div>

</div>


				
	<!-- Footer -->
	<footer>
		<div class="instagram-footer">
			<div id="instagram-carousel" class="owl-carousel clearfix">
			</div>
			<a class="follow" target="_blank" href="https://instagram.com/futurethemes2015/">Follow me on Instragam <br> <span class="user-ins">@futurethemes2015</span></a>
		</div><!-- .instagram-footer -->
		
		<div class="info-footer">
			<h1>The <span class="colored">Artist</span></h1>
			
			<ul class="social-footer">
				<li><a href="#" class="fa fa-facebook"></a></li>
				<li><a href="#" class="fa fa-twitter"></a></li>
				<li><a href="#" class="fa fa-soundcloud"></a></li>
				<li><a href="#" class="fa fa-youtube-play"></a></li>
				<li><a href="#" class="fa fa-vimeo"></a></li>
				<li><a href="#" class="fa fa-google-plus"></a></li>
			</ul>
		</div>

		<div class="copyright-footer">
			<p>Copyright © 2015 FutureThemes / <a href="#">@futurethemes</a></p>
		</div>
	</footer>
	
	
	<script type="text/javascript">
	jQuery(document).ready(function($) {
   		"use strict";

   		var myPlaylist = new jPlayerPlaylist({
			jPlayer: "#jquery_jplayer_1",
			cssSelectorAncestor: "#jp_container_1"
		}, [
			{	
				artist: "IU",
				title:"Celebrity",
				mp3:"../../assets/music/iu-celebrity.mp3",
			},
			{
				artist: "BTS",
				title:"Dynamite",
				mp3:"../../assets/music/bts-dynamite.mp3",
			}
		],{
			playlistOptions: {
			    enableRemoveControls: true
			},
			swfPath: "../../../assets/jplayer/jplayer",
			supplied: "mp3",
			wmode: "window",
			useStateClassSkin: true,
			autoBlur: false,
			smoothPlayBar: true,
			keyEnabled: true,
		});

		// Show The Current Track !!
		$("#jquery_jplayer_1").on(
		    $.jPlayer.event.ready + ' ' + $.jPlayer.event.play,
		   	function(event){
		       	var current = myPlaylist.current;
			    var playlist = myPlaylist.playlist;       
			    $.each(playlist, function (index, obj) {
			        if (index == current) {
			            $("#nowPlaying .artist-name").html(obj.artist + " - ");
			            $("#nowPlaying .track-name").html(obj.title);
			        }
			    });
		   	}
		);

   		
		var myPlaylist2 = new jPlayerPlaylist({
			jPlayer: "#jquery_jplayer_2",
			cssSelectorAncestor: "#jp_container_2"
		}, [
			{	
				artist: "IU",
				title:"Celebrity",
				mp3:"../../../assets/music/iu-celebrity.mp3",
			},
			{
				artist: "BTS",
				title:"Dynamite",
				mp3:"../../../assets/music/bts-dynamite.mp3",
			}
		], {
			playlistOptions: {
			    enableRemoveControls: true
			},
			swfPath: "../../../assets/jplayer/jplayer",
			supplied: "mp3",
			wmode: "window",
			useStateClassSkin: true,
			autoBlur: false,
			smoothPlayBar: true,
			keyEnabled: true,
		});
		
		// Show The Current Track !!
		$("#jquery_jplayer_2").on(
		    $.jPlayer.event.ready + ' ' + $.jPlayer.event.play,
		   	function(event){
		       	var current = myPlaylist2.current;
			    var playlist = myPlaylist2.playlist;       
			    $.each(playlist, function (index, obj) {
			        if (index == current) {
			            $("#nowPlaying2 .artist-name").html(obj.artist + " - ");
			            $("#nowPlaying2 .track-name").html(obj.title);
			        }
			    });
		   	}
		);
		$("#jquery_jplayer_2").on($.jPlayer.event.play, function(event) {
		       $('#player-bars').addClass('animated');
		   	}
		);

	});
	</script>


</body>
</html>