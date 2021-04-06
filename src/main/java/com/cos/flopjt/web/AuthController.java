package com.cos.flopjt.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cos.flopjt.service.AuthService;
import com.cos.flopjt.utils.Script;
import com.cos.flopjt.web.dto.auth.AuthJoinReqDto;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Controller
public class AuthController {

	private final AuthService authService;
	
	@GetMapping("/loginForm")
	public String loginForm() {
		return "auth/loginForm";
	}
	
	@GetMapping("/joinForm")
	public String joinForm() {
		return "auth/joinForm";
	}
	
	@PostMapping("/join")
	public @ResponseBody String join(AuthJoinReqDto authJoinReqDto) {
		authService.회원가입(authJoinReqDto.toEntity());
		return Script.href("회원가입에 성공하였습니다 !", "/loginForm");
	}
}
