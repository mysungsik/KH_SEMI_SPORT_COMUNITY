package com.helpgpt.sports.common.util;

import java.io.FileOutputStream;
import java.util.Properties;
import java.util.Scanner;

public class CreateXML {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		System.out.println("XML 파일 이름을 입력하세요(.xml제외)");
		String xmlName = "src/main/java/com/helpgpt/sports/common/sqls/" + sc.nextLine() + ".xml";
		
		System.out.println("XML 파일을 설명해주세요");
		String comments = sc.nextLine();
		
		try {
			FileOutputStream fos = new FileOutputStream(xmlName);
			Properties prop = new Properties();
			prop.storeToXML(fos, comments);
			
			System.out.println("성공적으로 생성하였습니다.");
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		sc.close();
		
	}
}
