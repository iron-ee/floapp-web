package com.cos.flopjt.domain.music;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface SongRepository extends JpaRepository<Song, Integer>{

	// 신곡 20
	@Query(value = "select * from song order by releaseDate desc limit 20", nativeQuery = true)
	List<Song> newSong();
	
	
	// 카테고리
	@Query(value = "select * from song where category = 'BALLAD' order by releaseDate desc", nativeQuery = true)
	Page<Song> ballad(Pageable pageable);
	
	@Query(value = "select * from song where category = 'DANCE' order by releaseDate desc", nativeQuery = true)
	Page<Song> dance(Pageable pageable);
	
	@Query(value = "select * from song where category = 'POP' order by releaseDate desc", nativeQuery = true)
	Page<Song> pop(Pageable pageable);
	
	@Query(value = "select * from song where category = 'HIPHOP' order by releaseDate desc", nativeQuery = true)
	Page<Song> hiphop(Pageable pageable);
	
	@Query(value = "select * from song where category = 'TROT' order by releaseDate desc", nativeQuery = true)
	Page<Song> trot(Pageable pageable);
	
	
	// 검색
	@Query(value = "select * from song where artist like %:keyword% or title like %:keyword%", nativeQuery = true)
	Page<Song> searchMusic(String keyword, Pageable pageable);

}
