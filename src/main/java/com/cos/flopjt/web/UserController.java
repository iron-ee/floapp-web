package com.cos.flopjt.web;

import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cos.flopjt.config.auth.PrincipalDetails;
import com.cos.flopjt.service.UserService;
import com.cos.flopjt.web.dto.CMRespDto;
import com.cos.flopjt.web.dto.user.UserUpdateReqDto;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Controller
public class UserController {
	
	private final UserService userService;

	@GetMapping("/user")
	public @ResponseBody String findAll(@AuthenticationPrincipal PrincipalDetails principalDetails) {
		System.out.println(principalDetails.getUsername());
		return "User";
	}
	
	@GetMapping("/user/{id}")
	public String updateForm(@PathVariable int id, Model model) {
		model.addAttribute("id", id);
		return "user/updateForm";
	}
	
	@PutMapping("/user/{id}")
	public @ResponseBody CMRespDto<?> update(@PathVariable int id, @RequestBody UserUpdateReqDto userUpdateReqDto) {
		System.out.println("받은 데이터(update)" + userUpdateReqDto);
		
		userService.회원수정(id, userUpdateReqDto);
		
		return new CMRespDto<>(1, "회원 수정 성공", null);
	}
}
