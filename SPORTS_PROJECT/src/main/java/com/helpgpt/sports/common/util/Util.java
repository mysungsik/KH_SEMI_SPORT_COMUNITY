package com.helpgpt.sports.common.util;

public class Util {
	public static String newLineHandling(String text) {
		// 엔터로 담긴 텍스트 <br> 로 변경하여 처리
		return text.replaceAll("(\n\r|\r\n|\n|\r)", "<br>");
	}
	
	public static String reveseNewLineHandling(String text) {
		// 엔터로 담긴 텍스트 <br> 로 변경하여 처리
		return text.replaceAll("<br>", "\n\r");
	}

	public static String XSSHandling(String text){
		// <, >, &, " 문자를 HTML 코드가 아닌 문자 그대로 보이도록 변경
		text = text.replaceAll("&", "&amp;");
		text = text.replaceAll("<", "&lt;");
		text = text.replaceAll(">", "&gt;");
		text = text.replaceAll("\"", "&quot;");
		
		return text;
	}	
}