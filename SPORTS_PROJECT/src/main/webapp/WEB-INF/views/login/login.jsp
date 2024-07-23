<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<jsp:include page="/WEB-INF/views/layouts/header-dependencies.jsp"/>
	<link rel="stylesheet" href="${contextPath}/src/css/login.css">
	<script src="${contextPath}/src/js/login.js" defer></script>
	<title>MLB - Login</title>
</head>
<body>
	<jsp:include page="/WEB-INF/views/layouts/header.jsp"/>
	<main>
        <section class="container">
            <p class="header-text"> 로그인 </p>
            <hr class="hr__gray">
            <form name="loginForm" class="login-form base__lblue br-15 box-shadow" action="${contextPath}/api/user/login" method="post">
                <div class="login-essential mt-20">
                    <div>
                        <input class="box-shadow" type="text" name="login_id" placeholder="ID : *소문자를 포함 5~13 글자 / 대문자 및 숫자 사용가능">
                    </div>
                    <div>
                        <input class="box-shadow"  type="password" name="login_pw" placeholder="PW : *최소 한개의 소문자, 대문자, 숫자를 포함 10~20 글자 / 특수문자 사용가능">
                        <img class="password-eye" src="${contextPath}/public/icons/eye-closed.png">
                    </div>
                </div>
                <button class="btn-big__blue">
                    로그인
                </button>
                <div class="term-check-div checkbox__blue">
                    <input type="checkbox" id="stay-login" name="stay_login">
                    <label for="stay-login" class="fs-14">로그인 상태유지</label>
                </div>
                <div class="login-sub">
                    <div>
                        <a class="fc__gray text-hover__gray" href="${contextPath}/findInfo/findId">아이디 찾기</a>
                        |<a class="fc__gray text-hover__gray" href="${contextPath}/findInfo/findPw">비밀번호 찾기</a>
                        |<a class="fc__gray text-hover__gray" href="${contextPath}/signup/signupTerms">회원가입</a>
                    </div>
                    <img src="${contextPath}/public/images/mlb_logo2.jpg">
                </div>
            </form>
        </section>
    </main>
	<jsp:include page="/WEB-INF/views/layouts/footer.jsp"/>
</body>
</html>