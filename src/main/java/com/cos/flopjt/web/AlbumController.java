package com.cos.flopjt.web;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.cos.flopjt.domain.album.Album;
import com.cos.flopjt.service.AlbumService;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Controller
public class AlbumController {

	private final AlbumService albumService;
	
	@GetMapping("/albumForm")
	public String findAll(Model model, @PageableDefault(sort = "id", direction = Sort.Direction.DESC, size = 6)Pageable pageable) {
		Page<Album> albums = albumService.전체찾기(pageable);
		model.addAttribute("albums", albums);
		return "album/albumForm";
	}
	
	@GetMapping("/album/{id}")
	public String Detail(@PathVariable int id, Model model) {
		Album albumEntity = albumService.상세보기(id);
		model.addAttribute("album", albumEntity);
		return "album/albumDetail";
	}
}
