package com.cos.flopjt.web.dto.user;

import lombok.Data;

@Data
public class UserUpdateReqDto {

	private String username;
	private String password;
	private String email;
	
	// toEntity 안 만드는 이유는 그냥 더티체킹 할려고
}
