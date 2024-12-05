package com.company.dto;

import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

//db와 필드가 같아야함
@Getter @Setter @ToString
public class BoardDTO {
	private Long id;
	private String boardWriter;
	private String boardPass;
	private String boardTitle;
	private String boardContents;
	private int boardHits;
	private Timestamp boardCreatedTime;

}