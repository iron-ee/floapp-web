package com.cos.flopjt.handler;

import java.util.ArrayList;
import java.util.List;

import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import com.cos.flopjt.domain.error.ErrorLog;
import com.cos.flopjt.domain.error.ErrorRepository;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Component
public class MyBatch {
	
	private final ExceptionList exceptionList;
	private final ErrorRepository errorRepository;

	@Scheduled(fixedDelay = 1000*60*10)	// 정기적 실행 (10분)
	public void excute() {
		List<String> exList = exceptionList.getExList();
		
		// DB insert
		List<ErrorLog> errorLogs = new ArrayList<>();
		for(String error : exList) {
			errorLogs.add(new ErrorLog(null, error, null));
		}
		errorRepository.saveAll(errorLogs);
		
		exList.clear();
	}
}
