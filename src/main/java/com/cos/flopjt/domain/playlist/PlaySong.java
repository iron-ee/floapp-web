package com.cos.flopjt.domain.playlist;

import java.sql.Timestamp;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import org.hibernate.annotations.CreationTimestamp;

import com.cos.flopjt.domain.music.Song;
import com.cos.flopjt.domain.user.User;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Entity
public class PlaySong {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	
	@ManyToOne
	@JoinColumn(name = "userId")
	private User user;
	
	//@JsonIgnoreProperties({"replys"})
	@ManyToOne
	@JoinColumn(name = "songId")
	private Song song;
	
	@CreationTimestamp
	private Timestamp createDate;
}
