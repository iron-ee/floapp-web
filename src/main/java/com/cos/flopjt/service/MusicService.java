package com.cos.flopjt.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.cos.flopjt.domain.music.Music;
import com.cos.flopjt.domain.music.MusicRepository;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class MusicService {

	private final MusicRepository musicRepository;
	
	public List<Music> 전체찾기() {
		List<Music> musicEntity = musicRepository.findAll();
		return musicEntity;
	}
	
}
