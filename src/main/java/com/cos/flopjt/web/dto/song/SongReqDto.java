package com.cos.flopjt.web.dto.song;

import org.springframework.web.multipart.MultipartFile;

import com.cos.flopjt.domain.music.CategoryType;
import com.cos.flopjt.domain.music.Song;

import lombok.Data;

@Data
public class SongReqDto {
	
	private String artist;
	private String title;
	private String releaseDate;
	private CategoryType category;
	private String lyrics;
	private MultipartFile file;
	private MultipartFile img;
	
	public Song toEntity(String img, String file) {
		return Song.builder()
				.artist(artist)
				.title(title)
				.releaseDate(releaseDate)
				.category(category)
				.lyrics(lyrics)
				.img(img)
				.file(file)
				.build();
	}
}
