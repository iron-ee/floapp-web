package com.cos.flopjt.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cos.flopjt.domain.music.Song;
import com.cos.flopjt.domain.music.SongRepository;
import com.cos.flopjt.domain.playlist.PlaySong;
import com.cos.flopjt.domain.playlist.PlaylistRepository;
import com.cos.flopjt.domain.user.User;
import com.cos.flopjt.web.dto.playlist.PlaylistSaveReqDto;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class PlaylistService {

	private final PlaylistRepository playlistRepository;
	private final SongRepository songRepository;
	
	@Transactional
	public PlaySong 리스트추가(PlaylistSaveReqDto playlistSaveReqDto, User user) {
		Song listEntity = songRepository.findById(playlistSaveReqDto.getMusicId()).get();
		PlaySong playSong = playlistSaveReqDto.toEntity();
		playSong.setSong(listEntity);
		playSong.setUser(user);
		PlaySong playlistEntity = playlistRepository.save(playSong);
		
		return playlistEntity;
	}
	
}
