<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>M I M L</title>
</head>
<body>
	<div id="contact" class="contact-home section">
		<div class="category-head">
			<h1>드루와 <span class="colored">로그인</span></h1>
			<p>어서와, 빨리와 현기증나니깐</p>
		</div>

		<div class="container">
			<form action="login" method="post" name="contact" id="contact-form">
				<div class="field">
					<p>ID (Email 형식) <span class="colored">*</span></p>
					<input name="username" type="email" class="required"
						title="Please type your ID" placeholder="Email ...">
				</div>

				<div class="field">
					<p>Password <span class="colored">*</span></p>
					<input name="password" type="password" placeholder="Password ...">
				</div>

				<div class="button-container">
					<button name="submit" class="button">
						Send <i class="fa fa-envelope"></i>
					</button>
				</div>
			</form>
		</div>
	</div>
</body>
</html>
