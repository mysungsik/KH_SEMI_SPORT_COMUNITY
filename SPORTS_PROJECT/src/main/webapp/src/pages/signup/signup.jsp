<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<script src="./signup.js" defer></script>
	<link rel="stylesheet" href="./signup.css">
	<title>MLB - Signup</title>
</head>
<body>
	<jsp:include page="/src/common/layouts/header.jsp"/>
	<main>
        <section class="container">
            <p class="header-text"> 회원가입 </p>
            <hr class="hr__gray">
            <form name="signup-form" class="signup-form base__lblue br-15 box-shadow" action="post">
                <p class="fs-20__b"> 필수 정보</p>
                <div class="signup-essential mt-10">
                    <div>
                        <input class="box-shadow" type="text" name="signup_id" placeholder="ID">
                    </div>
                    <div>
                        <input class="box-shadow"  type="password" name="signup-password" placeholder="PASSWORD">
                        <img class="password-eye" src="/SPORTS_PROJECT/public/icons/eye-closed.png">
                    </div>
                    <div>
                        <input class="box-shadow" type="email" name="signup-email" placeholder="EMAIL">
                    </div>
                    <div>
                        <input class="box-shadow" type="text" name="signup-name" placeholder="NAME">
                    </div>
                </div>
                <p class="fs-20__b"> 추가 정보</p>
                <div class="signup-unnecessary mt-10">
                    <input class="box-shadow" type="text" name="signup-ssn" placeholder="YYYYMMDD">
                    <input class="box-shadow" type="text" name="signup-number" placeholder="PHONE NUMBER">
                    <input class="box-shadow" type="text" name="signup-address" placeholder="ADDRESS">
                    <div class="radio-box-container">
                        <div class="radio-box">
                            <input type="radio" name="signup-gender" id="gender-m" value="m"><label for="gender-m">남자</label>
                            <input type="radio" name="signup-gender" id="gender-f" value="f"><label for="gender-f">여자</label>
                        </div>
                        <div class="radio-box">
                            <input type="radio" name="signup-region" id="region-ko" value="ko"><label for="region-ko">내국인</label>
                            <input type="radio" name="signup-region" id="region-fo" value="fo"><label for="region-fo">외국인</label>
                        </div>
                    </div>
                </div>
            </form>
            <!-- 임시 페이지이동 -->
            <button class="btn-big__blue" onclick="location.href = '/SPORTS_PROJECT/src/pages/login/login.jsp';">    
                회원가입
            </button>
        </section>
    </main>
    
	<jsp:include page="/src/common/layouts/footer.jsp"/>
</body>
</html>