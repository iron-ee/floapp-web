package com.cos.flopjt.service;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cos.flopjt.domain.video.Video;
import com.cos.flopjt.domain.video.VideoRepository;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class VideoService {

	private final VideoRepository videoRepository;
	
	@Transactional
	public Page<Video> 전체찾기(Pageable pageable) {
		return videoRepository.findAll(pageable);
	}
}
