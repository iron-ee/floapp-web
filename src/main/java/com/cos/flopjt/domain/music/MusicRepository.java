package com.cos.flopjt.domain.music;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface MusicRepository extends JpaRepository<Music, Integer>{

	// 신곡 20
	@Query(value = "select * from music order by releaseDate desc limit 20", nativeQuery = true)
	List<Music> newSong();
	
	
	// 카테고리
	@Query(value = "select * from music where category = 'BALLAD' order by releaseDate desc", nativeQuery = true)
	Page<Music> ballad(Pageable pageable);
	
	@Query(value = "select * from music where category = 'DANCE' order by releaseDate desc", nativeQuery = true)
	Page<Music> dance(Pageable pageable);
	
	@Query(value = "select * from music where category = 'POP' order by releaseDate desc", nativeQuery = true)
	Page<Music> pop(Pageable pageable);
	
	@Query(value = "select * from music where category = 'HIPHOP' order by releaseDate desc", nativeQuery = true)
	Page<Music> hiphop(Pageable pageable);
	
	@Query(value = "select * from music where category = 'TROT' order by releaseDate desc", nativeQuery = true)
	Page<Music> trot(Pageable pageable);
	
	
	// 검색
	@Query(value = "select * from music where artist like %:keyword% or title like %:keyword%", nativeQuery = true)
	Page<Music> searchMusic(String keyword, Pageable pageable);

}
