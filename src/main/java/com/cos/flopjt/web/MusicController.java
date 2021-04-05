package com.cos.flopjt.web;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.cos.flopjt.domain.music.Song;
import com.cos.flopjt.service.MusicService;
import com.cos.flopjt.web.dto.song.SongReqDto;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Controller
public class MusicController {

	private final MusicService musicService;
		
	@GetMapping("/mainForm")
	public String mainForm(Model model) {
		model.addAttribute("songs", musicService.최신음악());
		return "index/mainForm";
	}

	@GetMapping("/albumForm")
	public String albumForm(Model model, @PageableDefault(sort = "id", direction = Sort.Direction.DESC, size = 6)Pageable pageable) {
		Page<Song> songs = musicService.뮤직페이징(pageable);
		model.addAttribute("songs", songs);
		return "music/albumForm";
	}
	
	@GetMapping("/album/{id}")
	public String Detail(@PathVariable int id, Model model) {
		Song albumEntity = musicService.상세보기(id);
		model.addAttribute("song", albumEntity);
		return "music/albumDetail";
	}
	
	@GetMapping("/admin/songAddForm")
	public String songAddForm() {
		return "music/songAddForm";
	}
	
	@PostMapping("/admin/songAdd")
	public String songAdd(SongReqDto songReqDto) {
		musicService.노래업로드(songReqDto);
		
		return "redirect:/mainForm";
	}
	
	
	
	
	
	@GetMapping("/categoryForm")
	public String categoryForm() {
		return "category/categoryForm";
	}
	@GetMapping("/category/ballad")
	public String cBallad(Model model, @PageableDefault(sort = "id", direction = Sort.Direction.DESC, size = 4)Pageable pageable) {
		Page<Song> songs = musicService.발라드(pageable);	
		model.addAttribute("songs", songs);
		return "category/balladForm";
	}	
	@GetMapping("/category/dance")
	public String cDance(Model model, @PageableDefault(sort = "id", direction = Sort.Direction.DESC, size = 4)Pageable pageable) {
		Page<Song> songs = musicService.댄스(pageable);	
		model.addAttribute("songs", songs);
		return "category/danceForm";
	}	
	@GetMapping("/category/pop")
	public String cPop(Model model, @PageableDefault(sort = "id", direction = Sort.Direction.DESC, size = 4)Pageable pageable) {
		Page<Song> songs = musicService.팝(pageable);	
		model.addAttribute("songs", songs);
		return "category/popForm";
	}
	@GetMapping("/category/hiphop")
	public String cHiphop(Model model, @PageableDefault(sort = "id", direction = Sort.Direction.DESC, size = 4)Pageable pageable) {
		Page<Song> songs = musicService.힙합(pageable);	
		model.addAttribute("songs", songs);
		return "category/hiphopForm";
	}	

	@GetMapping("/search")
	public String search(String keyword, Model model, @PageableDefault(sort = "id", direction = Sort.Direction.DESC, size = 4)Pageable pageable) {
		System.out.println("키워드 : "+keyword);
		Page<Song> songs = musicService.노래검색(keyword, pageable);
		model.addAttribute("songs", songs);
		model.addAttribute("keyword", keyword);
		
		return "music/searchForm";		
	}
}
