package com.helpgpt.sports.common.filerename;

import java.io.File;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import com.oreilly.servlet.multipart.FileRenamePolicy;

public class MyRenamePolicy implements FileRenamePolicy{

	@Override
	public File rename(File originalFile) {
		// 현재시간 + 5자리 랜덤 숫자로 이루어진 파일명 생성
		LocalDateTime date = LocalDateTime.now();
		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("YYYYMMDDHHMMSS");
		String formattedDate = date.format(dtf);
		
		int ranNum = (int)(Math.random() * 100000); 	// 5자리 랜덤숫자
		String str = String.format("%05d", ranNum);		// 오른쪽 정렬된 십진 정수(d) 5자리(5)형태로 변경. 빈자리는 0
		
		String name = originalFile.getName();
		String ext = null;
		
		int dot = name.lastIndexOf(".");
		
		if (dot != -1) {	// . 이 있다면
			ext = name.substring(dot);
		} else {
			ext = "";
		}
		
		String fileName = formattedDate + "_" + str + ext;
		
		File newFile = new File(originalFile.getParent(), fileName);
		
		return newFile;
	}
	
}
