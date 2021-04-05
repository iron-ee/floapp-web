package com.cos.flopjt.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cos.flopjt.domain.music.Song;
import com.cos.flopjt.domain.music.SongRepository;
import com.cos.flopjt.domain.reply.Reply;
import com.cos.flopjt.domain.reply.ReplyRepository;
import com.cos.flopjt.domain.user.User;
import com.cos.flopjt.web.dto.reply.ReplySaveReqDto;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class ReplyService {

	private final ReplyRepository replyRepository;
	private final SongRepository songRepository;
	
	@Transactional
	public Reply 댓글쓰기(ReplySaveReqDto replySaveReqDto, User user) {
		Song albumEntity = songRepository.findById(replySaveReqDto.getMusicId()).get();
		Reply reply = replySaveReqDto.toEntity();
		reply.setSong(albumEntity);
		reply.setUser(user);
		Reply replyEntity = replyRepository.save(reply);
		
		return replyEntity;
	}
	
	@Transactional
	public int 삭제하기(int id, int userId) {
		Reply replyEntity = replyRepository.findById(id).get();
		if (replyEntity.getUser().getId() == userId) {
			replyRepository.deleteById(id);
			return 1;
		}else {
			return -1;
		}
	}
}
