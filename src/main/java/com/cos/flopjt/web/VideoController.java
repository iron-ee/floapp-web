package com.cos.flopjt.web;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.cos.flopjt.domain.video.Video;
import com.cos.flopjt.service.VideoService;

import lombok.RequiredArgsConstructor;


@RequiredArgsConstructor
@Controller
public class VideoController {

	private final VideoService videoService;
	
	@GetMapping("/videoForm")
	public String findAll(Model model, @PageableDefault(sort = "id", direction = Sort.Direction.DESC, size = 4)Pageable pageable) {
		Page<Video> videos = videoService.전체찾기(pageable);
		model.addAttribute("videos", videos);
		return "video/videoForm";
	}
}
