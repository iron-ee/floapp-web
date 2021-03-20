package com.cos.flopjt.domain.user;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import org.hibernate.annotations.CreationTimestamp;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Entity
public class User {

	@Id
	@GeneratedValue
	private Integer id;
	
	@Column(nullable = true, length = 100)
	private String username;
	
	@Column(nullable = true, length = 100)
	private String password;
	
	@Column(nullable = true, length = 100)
	private String nickname;
	
	
	@Enumerated(EnumType.STRING)
	private RoleType role;
	
	@CreationTimestamp
	private Timestamp createDate;
}