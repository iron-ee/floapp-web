package com.cos.flopjt.service;

import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;
import java.util.UUID;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cos.flopjt.domain.music.Song;
import com.cos.flopjt.domain.music.SongRepository;
import com.cos.flopjt.utils.ProjectPath;
import com.cos.flopjt.web.dto.song.SongReqDto;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class MusicService {

	private final SongRepository songRepository;
	
	@Transactional
	public List<Song> 전체찾기() {
		List<Song> musicEntity = songRepository.findAll();
		return musicEntity;
	}
	
	@Transactional(readOnly = true)
	public Page<Song> 뮤직페이징(Pageable pageable) {
		return songRepository.findAll(pageable);
	}
	
	@Transactional(readOnly = true)
	public Song 상세보기(int id) {
		return songRepository.findById(id).get();
	}
	
	@Transactional
	public void 노래업로드(SongReqDto songReqDto) {
		
		UUID uuid = UUID.randomUUID();
		String imgFileName = uuid+"_"+songReqDto.getImg().getOriginalFilename();
		String mp3FileName = uuid+"_"+songReqDto.getFile().getOriginalFilename();
		System.out.println("img파일명 : "+imgFileName);
		System.out.println("mp3파일명 :"+mp3FileName);
		
		Path imgFilePathWeb = Paths.get(ProjectPath.IMGUPLOADFOLDERWEB+imgFileName);
		Path imgFilePathApp = Paths.get(ProjectPath.IMGUPLOADFOLDERAPP+imgFileName);
		
		Path mp3FilePathWeb = Paths.get(ProjectPath.MP3UPLOADFOLDERWEB+mp3FileName);
		Path mp3FilePathApp = Paths.get(ProjectPath.MP3UPLOADFOLDERAPP+mp3FileName);
		System.out.println("img파일패스 :"+imgFilePathWeb);
		System.out.println("img파일패스 :"+imgFilePathApp);
		System.out.println("mp3파일패스 :"+mp3FilePathWeb);
		System.out.println("mp3파일패스 :"+mp3FilePathApp);
		try {
			Files.write(imgFilePathWeb, songReqDto.getImg().getBytes());
			Files.write(imgFilePathApp, songReqDto.getImg().getBytes());
			
			Files.write(mp3FilePathWeb, songReqDto.getFile().getBytes());
			Files.write(mp3FilePathApp, songReqDto.getFile().getBytes());
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		Song song = songReqDto.toEntity(imgFileName, mp3FileName);
		songRepository.save(song);

	}
	
	
	
	// 신곡 20
	@Transactional(readOnly = true)
	public List<Song> 최신음악() {
		return songRepository.newSong();
	}
	
	
	// 카테고리
	@Transactional(readOnly = true)
	public Page<Song> 발라드(Pageable pageable) {
		return songRepository.ballad(pageable);
	}	
	@Transactional(readOnly = true)
	public Page<Song> 댄스(Pageable pageable) {
		return songRepository.dance(pageable);
	}	
	@Transactional(readOnly = true)
	public Page<Song> 팝(Pageable pageable) {
		return songRepository.pop(pageable);
	}	
	@Transactional(readOnly = true)
	public Page<Song> 힙합(Pageable pageable) {
		return songRepository.hiphop(pageable);
	}	
	@Transactional(readOnly = true)
	public Page<Song> 트로트(Pageable pageable) {
		return songRepository.trot(pageable);
	}
	
	
	// 검색
	@Transactional(readOnly = true)
	public Page<Song> 노래검색(String keyword, Pageable pageable) {
		System.out.println("서비스 키워드 : "+keyword);
		return songRepository.searchMusic(keyword, pageable);
	}
}
