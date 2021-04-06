package com.cos.flopjt.handler;

import java.security.GeneralSecurityException;
import java.sql.SQLException;

import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.security.authentication.InternalAuthenticationServiceException;
import org.springframework.security.core.AuthenticationException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestController;

import com.cos.flopjt.web.dto.CMRespDto;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@RestController
@ControllerAdvice
public class GlobalExceptionHandler {

	private final ExceptionList exceptionList;
	
	@ExceptionHandler(value = DataIntegrityViolationException.class)
	public CMRespDto<?> dataIntegrityViolationException(Exception e){
		
		exceptionList.addExceptionList(e.getMessage());
		return new CMRespDto<>(-1, "실패1",null);
	}
	
	@ExceptionHandler(value = IllegalArgumentException.class)
	public CMRespDto<?> illegalArgumentException(Exception e){
		exceptionList.addExceptionList(e.getMessage());
		return new CMRespDto<>(-1,"실패2",null);
	}
	
	@ExceptionHandler(value = EmptyResultDataAccessException.class)
	public CMRespDto<?> emptyResultDataAccessException(Exception e){
		exceptionList.addExceptionList(e.getMessage());
		return new CMRespDto<>(-1, "실패3", null);
	}
	
	@ExceptionHandler(value = SQLException.class)
	public CMRespDto<?> sQLException(Exception e){
		exceptionList.addExceptionList(e.getMessage());
		return new CMRespDto<>(-1, "실패4", null);
	}
	
	@ExceptionHandler(value = GeneralSecurityException.class)
	public CMRespDto<?> generalSecurityException(Exception e){
		exceptionList.addExceptionList(e.getMessage());
		return new CMRespDto<>(-1, "시큐리티 관련 에러발생", null);
	}

	@ExceptionHandler(value = AuthenticationException.class)
	public CMRespDto<?> authenticationException(Exception e){
		exceptionList.addExceptionList(e.getMessage());
		return new CMRespDto<>(-1, "인증 에러", null);
	}
	
	@ExceptionHandler(value = InternalAuthenticationServiceException.class)
	public CMRespDto<?> internalAuthenticationServiceException(Exception e){
		exceptionList.addExceptionList(e.getMessage());
		return new CMRespDto<>(-1, "로그인 중복", null);
	}
	
	@ExceptionHandler(value = Exception.class)
	public CMRespDto<?> exception(Exception e){ //익셉션 찾기 귀찮다..
		exceptionList.addExceptionList(e.getMessage());
		return new CMRespDto<>(-1, "익셉션 터짐", null);
	}
}
