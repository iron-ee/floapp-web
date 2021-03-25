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
					<img src="http://localhost:8080/assets/img/albums/album-iu.png" alt="cover" class="img-responsive">
					<div class="cd-mask">
						<div class="center"></div>
					</div>
					<div class="info">
						<a class="album-name" href="/album/1">Celebrity <i class="fa fa-arrow-circle-right"></i></a>
						<br>
						<p>아이유(IU)</p>
					</div>
				</div>
			</div>
			<div class="col-sm-4">
				<div class="album">
					<img src="http://localhost:8080/assets/img/albums/album-shin.png" alt="cover" class="img-responsive">
					<div class="cd-mask">
						<div class="center"></div>
					</div>
					<div class="info">
						<a class="album-name" href="/album/3">Mind Travel <i class="fa fa-arrow-circle-right"></i></a>
						<br>
						<p>신희재</p>
					</div>
				</div>
			</div>
			<div class="col-sm-4">
				<div class="album">
					<img src="http://localhost:8080/assets/img/albums/album-blackpink.png" alt="cover" class="img-responsive">
					<div class="cd-mask">
						<div class="center"></div>
					</div>
					<div class="info">
						<a class="album-name" href="/album/5">Lovesick Girls <i class="fa fa-arrow-circle-right"></i></a>
						<br>
						<p>BLACKPINK</p>
					</div>
				</div>
			</div>
			<div class="col-sm-4">
				<div class="album">
					<img src="http://localhost:8080/assets/img/albums/album-showme.png" alt="cover" class="img-responsive">
					<div class="cd-mask">
						<div class="center"></div>
					</div>
					<div class="info">
						<a class="album-name" href="/album/2">쇼미더머니 9 Episode 1 <i class="fa fa-arrow-circle-right"></i></a>
						<br>
						<p>Various Artists</p>
					</div>
				</div>
			</div>
			<div class="col-sm-4">
				<div class="album">
					<img src="http://localhost:8080/assets/img/albums/album-bts.png" alt="cover" class="img-responsive">
					<div class="cd-mask">
						<div class="center"></div>
					</div>
					<div class="info">
						<a class="album-name" href="/album/4">Dynamite (DayTime Version) <i class="fa fa-arrow-circle-right"></i></a>
						<br>
						<p>방탄소년단</p>
					</div>
				</div>
			</div>
			<div class="col-sm-4">
				<div class="album">
					<img src="http://localhost:8080/assets/img/albums/album-diving.png" alt="cover" class="img-responsive">
					<div class="cd-mask">
						<div class="center"></div>
					</div>
					<div class="info">
						<a class="album-name" href="/album/6">DIVING<i class="fa fa-arrow-circle-right"></i></a>
						<br>
						<p>KAMELEON</p>
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
				<div class="col-sm-4 artist">
					<div class="artist-wrapper">
						<img src="http://localhost:8080/assets/img/artists/artist-1.jpg" alt="Artist" class="img-responsive">
						<div class="mask">
							<h1>POP</h1>
							<p>Pop Collection</p>
							<ul class="social">
								<li><a href="#" class="fa fa-arrow-circle-right"></a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-sm-4 artist">
					<div class="artist-wrapper">
						<img src="http://localhost:8080/assets/img/artists/artist-3.jpg" alt="Artist" class="img-responsive">
						<div class="mask">
							<h1>ACOUSTIC</h1>
							<p>Acoustic Collection</p>
							<ul class="social">
								<li><a href="#" class="fa fa-arrow-circle-right"></a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-sm-4 artist">
					<div class="artist-wrapper">
						<img src="http://localhost:8080/assets/img/artists/artist-2.jpg" alt="Artist" class="img-responsive">
						<div class="mask">
							<h1>BALLAD</h1>
							<p>Ballad Collection</p>
							<ul class="social">
								<li><a href="#" class="fa fa-arrow-circle-right"></a></li>
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
	//<audio src="http://localhost:8080/assets/music/IU-Celebrity.mp3" volume="20%"></audio>
	//fetch("/musicAll").then((response)=>response.json()).then((data)=>console.log(data))

	//musicList(music).then((data))=>console.log("data:", data)

	//async function music(){
		//await fetch("/musicAll").then((response)=>response.json()).then((data)=>console.log(data));
	//};
	//music()
	//$("#btn-findAll").on("click", (e)=>{
		//e.preventDefault();
		//fetch("/musicAll").then((response)=>response.json()).then((data)=>console.log(data))
	//});
	let list = fetch("/musicAll").then((response)=>response.json());

	var a = "IU";
	var b = "Celebrity";
	var c = "http://localhost:8080/assets/music/"+a+"-"+b+".mp3";
	var plist = [{artist:a,title:b,mp3:c},{artist:a,title:b,mp3:c},{artist:a,title:b,mp3:c}];
	console.log(plist);

	$("#btn-findAll").on("click", (e)=>{
		e.preventDefault();
		let da = $("#title-url").val();
		console.log(da);
		jQuery(document).ready(function($) {
		
	   		"use strict";
			
	   		var myPlaylist = new jPlayerPlaylist({
				jPlayer: "#jquery_jplayer_1",
				cssSelectorAncestor: "#jp_container_1"
			},[
				{	
					id:1,
					artist: "IU",
					title:"Celebrity",
					mp3:"http://localhost:8080/assets/music/"+da+".mp3",
				},
				{
					id:2,
					artist: "BTS",
					title:"Dynamite",
					mp3:"http://localhost:8080/assets/music/"+da+".mp3",
				}
			],{
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

			// Show The Current Track !!
			$("#jquery_jplayer_1").on(
			    $.jPlayer.event.ready + ' ' + $.jPlayer.event.play,
			   	function(event){
			       	var current = myPlaylist.current;
			       	console.log(current);
				    var playlist = myPlaylist.playlist;
				    console.log(playlist);       
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
					id:1,
					artist: "IU",
					title:"Celebrity",
					mp3:"http://localhost:8080/assets/music/IU-Celebrity.mp3",
				},
				{
					id:2,
					artist: "BTS",
					title:"Dynamite",
					mp3:"http://localhost:8080/assets/music/BTS-Dynamite.mp3",
				}
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
	});
	
	</script>

<%@ include file="../layout/footer.jsp" %>