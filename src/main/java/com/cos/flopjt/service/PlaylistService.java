package com.cos.flopjt.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cos.flopjt.domain.music.Music;
import com.cos.flopjt.domain.music.MusicRepository;
import com.cos.flopjt.domain.playlist.Playlist;
import com.cos.flopjt.domain.playlist.PlaylistRepository;
import com.cos.flopjt.domain.user.User;
import com.cos.flopjt.web.playlist.dto.PlaylistSaveReqDto;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class PlaylistService {

	private final PlaylistRepository playlistRepository;
	private final MusicRepository musicRepository;
	
	@Transactional
	public Playlist 리스트추가(PlaylistSaveReqDto playlistSaveReqDto, User user) {
		Music listEntity = musicRepository.findById(playlistSaveReqDto.getMusicId()).get();
		Playlist playlist = playlistSaveReqDto.toEntity();
		playlist.setMusic(listEntity);
		playlist.setUser(user);
		Playlist playlistEntity = playlistRepository.save(playlist);
		
		return playlistEntity;
	}
	
}
