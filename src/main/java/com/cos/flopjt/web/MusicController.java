package com.cos.flopjt.web;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cos.flopjt.domain.music.Music;
import com.cos.flopjt.service.MusicService;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Controller
public class MusicController {

	private final MusicService musicService;
		
	@GetMapping("/mainForm")
	public String mainForm() {
		return "index/test";
	}
	
	@GetMapping("/musicAll")
	public @ResponseBody List<Music> findAll() {
		return musicService.전체찾기();
	}

	@GetMapping("/albumForm")
	public String albumForm(Model model, @PageableDefault(sort = "id", direction = Sort.Direction.DESC, size = 6)Pageable pageable) {
		Page<Music> musics = musicService.뮤직페이징(pageable);
		model.addAttribute("musics", musics);
		return "album/albumForm";
	}
	
	@GetMapping("/album/{id}")
	public String Detail(@PathVariable int id, Model model) {
		Music albumEntity = musicService.상세보기(id);
		model.addAttribute("music", albumEntity);
		return "album/albumDetail";
	}
}
