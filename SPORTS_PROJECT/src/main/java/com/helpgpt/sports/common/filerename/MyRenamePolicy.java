package com.helpgpt.sports.common.filerename;

import java.io.File;

import com.oreilly.servlet.multipart.FileRenamePolicy;

public class MyRenamePolicy implements FileRenamePolicy{

	@Override
	public File rename(File originalFile) {
		// 현재시간
		return null;
	}
	
}
