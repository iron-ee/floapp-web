package com.cos.flopjt.web;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.cos.flopjt.domain.music.Music;
import com.cos.flopjt.service.MusicService;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Controller
public class MusicController {

	private final MusicService musicService;
		
	@GetMapping("/mainForm")
	public String mainForm(Model model) {
		model.addAttribute("musics", musicService.최신음악());
		return "index/test";
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
	
	@GetMapping("/categoryForm")
	public String categoryForm() {
		return "category/categoryForm";
	}
	
	
	
	@GetMapping("/category/ballad")
	public String cBallad(Model model, @PageableDefault(sort = "id", direction = Sort.Direction.DESC, size = 4)Pageable pageable) {
		Page<Music> musics = musicService.발라드(pageable);	
		model.addAttribute("musics", musics);
		return "category/balladForm";
	}
	
	@GetMapping("/category/dance")
	public String cDance(Model model, @PageableDefault(sort = "id", direction = Sort.Direction.DESC, size = 4)Pageable pageable) {
		Page<Music> musics = musicService.댄스(pageable);	
		model.addAttribute("musics", musics);
		return "category/danceForm";
	}
	
	@GetMapping("/category/pop")
	public String cPop(Model model, @PageableDefault(sort = "id", direction = Sort.Direction.DESC, size = 4)Pageable pageable) {
		Page<Music> musics = musicService.팝(pageable);	
		model.addAttribute("musics", musics);
		return "category/popForm";
	}
	
	@GetMapping("/category/hiphop")
	public String cHiphop(Model model, @PageableDefault(sort = "id", direction = Sort.Direction.DESC, size = 4)Pageable pageable) {
		Page<Music> musics = musicService.힙합(pageable);	
		model.addAttribute("musics", musics);
		return "category/hiphopForm";
	}
	
	@GetMapping("/category/trot")
	public String cTrot(Model model, @PageableDefault(sort = "id", direction = Sort.Direction.DESC, size = 6)Pageable pageable) {
		Page<Music> musics = musicService.트로트(pageable);	
		model.addAttribute("musics", musics);
		return "category/trotForm";
	}
}
