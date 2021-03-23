package com.cos.flopjt.web;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cos.flopjt.domain.music.Music;
import com.cos.flopjt.domain.user.User;
import com.cos.flopjt.service.MusicService;
import com.cos.flopjt.service.UserService;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Controller
public class MusicController {

	private final MusicService musicService;
	private final UserService userService;
	
	@GetMapping("/main/{id}")
	public String main(@PathVariable int id, Model model) {
		User musicEntity = userService.노래보기(id);
		model.addAttribute("user", musicEntity);
		return "test/test1";
	}
	
	@GetMapping("/mainForm")
	public String mainForm() {
		return "index/test";
	}
	
	@GetMapping("/musicAll")
	public @ResponseBody List<Music> findAll() {
		return musicService.전체찾기();
	}
}
