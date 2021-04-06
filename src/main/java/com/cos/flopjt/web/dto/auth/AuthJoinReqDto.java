package com.cos.flopjt.web.dto.auth;

import com.cos.flopjt.domain.user.User;

import lombok.Data;

@Data
public class AuthJoinReqDto {

	private String username;
	private String password;
	private String email;
	
	public User toEntity() {
		return User.builder()
				.username(username)
				.password(password)
				.email(email)
				.build();
	}
}
