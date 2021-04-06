package com.cos.flopjt.web.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class CMRespDto<T> {
	private int statusCode; // 1 성공, -1 실패
	private String msg;
	private T data;

}
