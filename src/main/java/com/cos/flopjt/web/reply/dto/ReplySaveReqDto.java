package com.cos.flopjt.web.reply.dto;

import com.cos.flopjt.domain.reply.Reply;

import lombok.Data;

@Data
public class ReplySaveReqDto {

	private Integer albumId;
	
	private String content;
	
	public Reply toEntity() {
		return Reply.builder()
				.content(content)
				.build();
	}
}
