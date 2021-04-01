package com.cos.flopjt.web;

import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

import com.cos.flopjt.config.auth.PrincipalDetails;
import com.cos.flopjt.domain.playlist.Playlist;
import com.cos.flopjt.domain.user.User;
import com.cos.flopjt.service.PlaylistService;
import com.cos.flopjt.service.UserService;
import com.cos.flopjt.web.dto.CMRespDto;
import com.cos.flopjt.web.playlist.dto.PlaylistSaveReqDto;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Controller
public class PlaylistController {

	private final UserService userService;
	private final PlaylistService playlistService;
	
	@GetMapping("/list/{id}")
	public String list(@PathVariable int id, Model model) {
		User listEntity = userService.노래보기(id);
		model.addAttribute("user", listEntity);
		return "test/test1";
	}
	
	@PostMapping("/listAdd")
	public CMRespDto<?> save(@RequestBody PlaylistSaveReqDto playlistSaveReqDto, @AuthenticationPrincipal PrincipalDetails principalDetails) {
		Playlist playlistEntity = playlistService.리스트추가(playlistSaveReqDto, principalDetails.getUser());
		
		if (playlistEntity == null) {
			return new CMRespDto<>(-1, null);
		}else {
			return new CMRespDto<>(1, playlistEntity);
		}
	}
}
