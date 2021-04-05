<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>

	<div id="contact" class="contact-home section">
		<div class="category-head">
			<h1>노래 <span class="colored">등록하기</span></h1>
			<p>알맞게 작성하세요 :-)</p>
		</div>

		<div class="container">
			<form action="/admin/songAdd" method="post" enctype="multipart/form-data" name="contact" id="contact-form">
				<div class="field">
					<p>Artist (가수명) <span class="colored">*</span></p>
					<input name="artist" type="text" class="required" title="Please type your ID" placeholder="가수 이름 ...">
				</div>

				<div class="field">
					<p>Title (노래제목) <span class="colored">*</span></p>
					<input name="title" type="text" class="required" title="Please type your Password" placeholder="노래 제목 ...">
				</div>

				<div class="field">
					<p>ReleaseDate (발매날짜) <span class="colored">*</span></p> 
					<input name="releaseDate" type="text" class="required" title="Please type your NickName" placeholder="ex) 2021.3 , 2020.5.13 (년.월.일) 로 작성해주세요">
				</div>
				
				<div class="field">
					<p>Image (앨범재킷) <span class="colored">*</span></p> 
					<input type="file" name="img" accept="image/*" id="input_img">
					
					<div>
						<img src="" alt="" id="img_preview">
					</div>	
				</div>
				
				
				<div class="field">
					<p>mp3 (음악파일) <span class="colored">*</span></p> 
					<input type="file" name="file" accept="mp3/*" id="input_file">	
				</div>
				
				<div class="field">
					<p>Lyric (노래 가사) <span class="colored">*</span></p> 
					<textarea id="lyrics" cols="15" rows="5" class="required" placeholder="노래 가사를 작성해주세요" title="Please type a lyric." name="lyrics"></textarea>
				</div>
					
				<div class="field">
					<p>Category (장르) <span class="colored">*</span></p> 
					<select name="category" class="custom-select mb-3" required>
						<option selected>장르 선택</option>
							<option value="BALLAD">BALLAD</option>
							<option value="POP">POP</option>
							<option value="DANCE">DANCE</option>
							<option value="HIPHOP">HIPHOP</option>
					</select>
				</div>
				
				<div class="button-container">
					<button name="submit" class="button">
						Send <i class="fa fa-envelope"></i>
					</button>
				</div>
			</form>
		</div>
	
	</div>


	<script>
		$("#input_img").on("change", (e)=>{
			let files = e.target.files;
			let filesArr = Array.prototype.slice.call(files);
			filesArr.forEach((f)=>{
				if(!f.type.match("image.*")){
					alert("이미지를 등록해야 합니다.");
					return;
				}

				let reader = new FileReader();
				reader.onload = (e)=>{
					$("#img_preview").attr("src", e.target.result);
				}
				reader.readAsDataURL(f);	// 이 코드 실행시 reader.onload 실행 됨 !!
			});
				
		});
	</script>

<%@ include file="../layout/footer.jsp" %>