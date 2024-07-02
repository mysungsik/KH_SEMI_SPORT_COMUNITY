<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
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
            <form name="login-form" class="login-form base__lblue br-15 box-shadow" action="<%=request.getContextPath()%>/api/login/login" method="post">
                <div class="login-essential mt-20">
                    <div>
                        <input class="box-shadow" type="text" name="login_id" placeholder="ID">
                    </div>
                    <div>
                        <input class="box-shadow"  type="password" name="login-password" placeholder="PASSWORD">
                        <img class="password-eye" src="${contextPath}/public/icons/eye-closed.png">
                    </div>
                </div>
                <button class="btn-big__blue">
                    로그인
                </button>
                <div class="term-check-div checkbox__blue">
                    <input type="checkbox" id="term-all" name="term-all">
                    <label for="term-all" class="fs-14">로그인 상태유지</label>
                </div>
                <div class="login-sub">
                    <div>
                        <a class="fc__gray">아이디 찾기</a>
                        |<a class="fc__gray">비밀번호 찾기</a>
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