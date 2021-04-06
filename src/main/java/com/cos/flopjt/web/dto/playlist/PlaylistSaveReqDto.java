package com.cos.flopjt.web.dto.playlist;

import com.cos.flopjt.domain.playlist.PlaySong;

import lombok.Data;

@Data
public class PlaylistSaveReqDto {

	private Integer musicId;
	
	public PlaySong toEntity() {
		return PlaySong.builder().build();
	}
}
