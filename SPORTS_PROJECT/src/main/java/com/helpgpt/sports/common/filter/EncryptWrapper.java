package com.helpgpt.sports.common.filter;

import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Base64;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;


public class EncryptWrapper extends HttpServletRequestWrapper {

	public EncryptWrapper(HttpServletRequest request) {
		super(request);
	}

    @Override
    public String getParameter(String name) {
        String value = null;
        
	   // "inputPw, memberPw" 로 들어온다면 비밀번호 암호화
        switch (name) {
        
            case "inputPw":
            case "memberPw": {
                value = getSha512(super.getParameter(name));
            };break;
        
            // 암호화 할게 아니라면 기존 형태를 유지한다.
            default: value = super.getParameter(name);
        }
        
        return value;
    }

    // 암호화 해시함수
    public String getSha512(String pw) {
        String encrytPw = null;
        
        // 1. 해시함수를 수행할 객체담을 변수
        MessageDigest md = null;
        
        try {
            // 2. SHA-512 방식의 해시함수를 수행할 객체를 얻어옴
            md = MessageDigest.getInstance("SHA-512");
            
            // 3. md 를 이용해 암호화를 진행할 수 있도록 pw 를 byte[] 형태로 변환
            byte[] bytes = pw.getBytes(Charset.forName("UTF-8"));
            
            // 4. 암호화 수행 -> 암호화 결과가 md 내부에 저장됌
            md.update(bytes);
            
            // 5. 암호화된 비밀번호를 encrytPw 에 대입
            //  Base64 인코딩을으로 byte 코드를 문자열로 변환
            encrytPw = Base64.getEncoder().encodeToString(md.digest());
            
        } catch (NoSuchAlgorithmException e) {
            System.out.println("[ERROR] 암호화중 오류 발생");
        
        } catch (Exception e) {
            System.out.println("[ERROR] 암호화중 오류 발생");
        }
        
        return encrytPw;
    }
}
