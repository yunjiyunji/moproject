package org.font.domain;

import lombok.Data;

@Data
public class FontVO {
	
	private int fid; // 폰트번호
	private String name; // 폰트이름
	private String production; // 제작자
	private String coment; // 폰트코멘트

}
