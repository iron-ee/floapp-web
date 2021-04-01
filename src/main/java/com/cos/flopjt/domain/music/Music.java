package com.cos.flopjt.domain.music;

import java.sql.Date;
import java.sql.Timestamp;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OrderBy;

import org.hibernate.annotations.CreationTimestamp;

import com.cos.flopjt.domain.reply.Reply;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Entity
public class Music {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	
	@Column(nullable=false)
	private String artist;
	
	@Column(nullable=false)
	private String title;
	
	@Column(nullable=false)
	private Integer mp3;
	
	@Column(nullable=false)
	private String imgUrl;
	
	@Column(nullable=false)
	private Date releaseDate;
	
	@Enumerated(EnumType.STRING)
	private Category category;
	
	@CreationTimestamp
	private Timestamp createDate;
	
	// 양방향 매핑
	@OneToMany(mappedBy = "music", fetch = FetchType.LAZY, cascade = CascadeType.REMOVE)
	@JsonIgnoreProperties({"music"})
	@OrderBy("id desc")
	private List<Reply> replys;
}