package com.cos.flopjt.domain.music;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface MusicRepository extends JpaRepository<Music, Integer>{

	@Query(value = "select * from music order by releaseDate desc limit 20", nativeQuery = true)
	List<Music> newSong();
	
	
	
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
}
