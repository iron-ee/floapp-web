package com.cos.flopjt.web.dto.auth;

import com.cos.flopjt.domain.user.User;

import lombok.Data;

@Data
public class AuthJoinReqDto {

	private String username;
	private String password;
	private String nickname;
	
	public User toEntity() {
		return User.builder()
				.username(username)
				.password(password)
				.nickname(nickname)
				.email(username)
				.build();
	}
}
