package com.cos.flopjt.service;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cos.flopjt.domain.user.User;
import com.cos.flopjt.domain.user.UserRepository;
import com.cos.flopjt.web.dto.user.UserUpdateReqDto;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class UserService {

	private final UserRepository userRepository;
	private final BCryptPasswordEncoder bCryptPasswordEncoder;
	
	public User 노래보기(int id) {
			return userRepository.findById(id).orElseThrow(()->{
				return new IllegalArgumentException("id를 찾을 수 없습니다.");
			});
		}
	
	@Transactional
	public User 회원수정(int id, UserUpdateReqDto userUpdateReqDto) {
		User userEntity = userRepository.findById(id).orElseThrow(()->{
			return new IllegalArgumentException("id를 찾을 수 없습니다.");
		});
		String encPassword = bCryptPasswordEncoder.encode(userUpdateReqDto.getPassword());
		
		userEntity.setPassword(encPassword);
		userEntity.setEmail(userUpdateReqDto.getEmail());
		
		return userEntity;
	}
}
