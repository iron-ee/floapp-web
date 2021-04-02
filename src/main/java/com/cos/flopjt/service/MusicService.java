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
	
	@Transactional(readOnly = true)
	public Page<Music> 뮤직페이징(Pageable pageable) {
		return musicRepository.findAll(pageable);
	}
	
	@Transactional(readOnly = true)
	public Music 상세보기(int id) {
		return musicRepository.findById(id).get();
	}
	
	// 신곡 20
	@Transactional(readOnly = true)
	public List<Music> 최신음악() {
		return musicRepository.newSong();
	}
	
	
	// 카테고리
	@Transactional(readOnly = true)
	public Page<Music> 발라드(Pageable pageable) {
		return musicRepository.ballad(pageable);
	}	
	@Transactional(readOnly = true)
	public Page<Music> 댄스(Pageable pageable) {
		return musicRepository.dance(pageable);
	}	
	@Transactional(readOnly = true)
	public Page<Music> 팝(Pageable pageable) {
		return musicRepository.pop(pageable);
	}	
	@Transactional(readOnly = true)
	public Page<Music> 힙합(Pageable pageable) {
		return musicRepository.hiphop(pageable);
	}	
	@Transactional(readOnly = true)
	public Page<Music> 트로트(Pageable pageable) {
		return musicRepository.trot(pageable);
	}
	
	
	// 검색
	@Transactional(readOnly = true)
	public Page<Music> 노래검색(String keyword, Pageable pageable) {
		System.out.println("서비스 키워드 : "+keyword);
		return musicRepository.searchMusic(keyword, pageable);
	}
}
