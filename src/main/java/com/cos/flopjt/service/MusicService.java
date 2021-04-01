package com.cos.flopjt.service;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cos.flopjt.domain.music.Music;
import com.cos.flopjt.domain.music.MusicRepository;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class MusicService {

	private final MusicRepository musicRepository;
	
	@Transactional
	public List<Music> 전체찾기() {
		List<Music> musicEntity = musicRepository.findAll();
		return musicEntity;
	}
	
	@Transactional
	public Page<Music> 뮤직페이징(Pageable pageable) {
		return musicRepository.findAll(pageable);
	}
	
	@Transactional
	public Music 상세보기(int id) {
		return musicRepository.findById(id).get();
	}
	
}
