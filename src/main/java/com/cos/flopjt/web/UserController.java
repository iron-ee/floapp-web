package com.cos.flopjt.web;

import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cos.flopjt.config.auth.PrincipalDetails;

@Controller
public class UserController {

	@GetMapping("/user")
	public @ResponseBody String findAll(@AuthenticationPrincipal PrincipalDetails principalDetails) {
		System.out.println(principalDetails.getUsername());
		return "User";
	}
}
