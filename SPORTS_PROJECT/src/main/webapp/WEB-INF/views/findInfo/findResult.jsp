<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<jsp:include page="/WEB-INF/views/layouts/header-dependencies.jsp"/>
	<link rel="stylesheet" href="${contextPath}/src/css/login.css">
	<script src="${contextPath}/src/js/login.js" defer></script>
	<title>MLB - findPassWord</title>
</head>
<body>
	<jsp:include page="/WEB-INF/views/layouts/header.jsp"/>
	<main>
        <section class="container">
            <p class="header-text"> 아이디 찾기 </p>
            <hr class="hr__gray">
            <div class="findResultForm base__lblue br-15 box-shadow">
                <p> 고객님 아이디 찾기 결과입니다. </p>
                <div class="login-essential mt-20">
                   <p> 입력한 정보로 조회된 아이디는 <span>AAAAA</span> 입니다.</p>
	                <div>
	                	<p> 이름 : <span> 이이이름 </span></p>
	                	<p> 이메일 : <span> eamil@email.com </span></p>
	                </div>
                </div>
                <a class="btn-big__blue" href="${contextPath}/login">
                    로그인 페이지로 이동
                </a>
                <div class="login-sub">
                    <div>
                        <a class="fc__gray text-hover__gray" href="${contextPath}/findInfo/findPw">비밀번호 찾기</a>
                        |<a class="fc__gray text-hover__gray" href="${contextPath}/login">로그인</a>
                    </div>
                    <img src="${contextPath}/public/images/mlb_logo2.jpg">
                </div>
            </div>
        </section>
    </main>
	<jsp:include page="/WEB-INF/views/layouts/footer.jsp"/>
</body>
</html>