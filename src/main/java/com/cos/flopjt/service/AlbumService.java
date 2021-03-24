package com.cos.flopjt.service;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cos.flopjt.domain.album.Album;
import com.cos.flopjt.domain.album.AlbumRepository;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class AlbumService {

	private final AlbumRepository albumRepository;
	
	@Transactional
	public Page<Album> 전체찾기(Pageable pageable) {
		return albumRepository.findAll(pageable);
	}
}
