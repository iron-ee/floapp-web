package com.cos.flopjt.web.playlist.dto;

import com.cos.flopjt.domain.playlist.Playlist;

import lombok.Data;

@Data
public class PlaylistSaveReqDto {

	private Integer musicId;
	
	public Playlist toEntity() {
		return Playlist.builder().build();
	}
}
