package com.cos.flopjt.web;

import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.cos.flopjt.config.auth.PrincipalDetails;
import com.cos.flopjt.domain.reply.Reply;
import com.cos.flopjt.service.ReplyService;
import com.cos.flopjt.web.dto.CMRespDto;
import com.cos.flopjt.web.dto.reply.ReplySaveReqDto;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@RestController
public class ReplyContoller {

	private final ReplyService replyService;
	
	@PostMapping("/reply")
	public CMRespDto<?> save(@RequestBody ReplySaveReqDto replySaveReqDto, @AuthenticationPrincipal PrincipalDetails principalDetails) {
		Reply replyEntity = replyService.댓글쓰기(replySaveReqDto, principalDetails.getUser());
		
		if (replyEntity == null) {
			return new CMRespDto<>(-1, null);
		}else {
			return new CMRespDto<>(1, replyEntity);
		}
	}
	
	@DeleteMapping("/reply/{id}")
	public CMRespDto<?> deleteById(@PathVariable int id, @AuthenticationPrincipal PrincipalDetails principalDetails) {
		int result = replyService.삭제하기(id, principalDetails.getUser().getId());
		return new CMRespDto<>(result, null);
	}
}
