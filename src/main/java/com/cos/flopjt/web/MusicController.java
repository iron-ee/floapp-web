package com.cos.flopjt.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MusicController {

	@GetMapping("/mainForm")
	public String mainForm() {
		return "index/test";
	}
}
