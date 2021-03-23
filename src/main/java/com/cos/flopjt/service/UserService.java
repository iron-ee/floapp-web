package com.cos.flopjt.service;

import org.springframework.stereotype.Service;

import com.cos.flopjt.domain.user.User;
import com.cos.flopjt.domain.user.UserRepository;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class UserService {

	private final UserRepository userRepository;
	
	public User 노래보기(int id) {
			return userRepository.findById(id).get();
		}
}
