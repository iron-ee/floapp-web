<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>

	<div id="contact" class="contact-home section">
		<div class="category-head">
			<h1>이게 나야, <span class="colored">회원정보</span></h1>
			<p>★ 이게 나야 ~! 요롱롱 ★</p>
		</div>

		<div class="container">
			<form id="contact-form" name="contact">
				<input type="hidden" id="id" value="${id}"	/>
				<div class="field">
					<p>ID (Email 형식) <span class="colored"></span></p>
					<input id="username" name="username" type="email" readonly="readonly" value="${principal.user.username}">
				</div>

				<div class="field">
					<p>Password <span class="colored">*</span></p>
					<input id="password" name="password" type="password" title="Please type your Password" placeholder="Change your Password" class="required">
				</div>

				<div class="field">
					<p>NickName <span class="colored"></span></p> 
					<input id="nickname" name="nickname" type="text" title="Please type your NickName" placeholder="Your NickName" value="${principal.user.nickname}">
				</div>
				
				<div class="field">
					<p>Email <span class="colored"></span></p> 
					<input id="email" name="email" type="email" title="Please type your Email" placeholder="Your Email" value="${principal.user.email}">
				</div>

				<div class="button-container">
					<button id="btn-update" name="submit" class="button">
						수정완료 <i class="fa fa-envelope"></i>
					</button>
				</div>
			</form>
		</div>
	</div>
	
	<script>
		$("#btn-update").on("click", (e)=>{
			e.preventDefault();
			let data={
					username: $("#username").val(),
					password: $("#password").val(),
					nickname: $("#nickname").val(),
					email: $("#email").val(),
				};

			let id = $("#id").val();

			console.log(data);

			$.ajax({
				type: "PUT",
				url: "/user/"+id,
				data: JSON.stringify(data),
				contentType: "application/json; charset=utf-8",
				dataType: "json"
			}).done((res)=>{
				console.log(res);
				if(res.statusCode == 1){
					alert("수정에 성공하였습니다.");
					location.href = "/";
				}else{
					alert("수정에 실패하였습니다.");
				}
			});
		});
	</script>
<%@ include file="../layout/footer.jsp" %>
