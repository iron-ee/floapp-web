package com.cos.flopjt.web.dto.reply;

import com.cos.flopjt.domain.reply.Reply;

import lombok.Data;

@Data
public class ReplySaveReqDto {

	private Integer musicId;
	
	private String content;
	
	public Reply toEntity() {
		return Reply.builder()
				.content(content)
				.build();
	}
}
