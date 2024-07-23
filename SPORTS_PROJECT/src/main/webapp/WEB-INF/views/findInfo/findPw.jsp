<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<jsp:include page="/WEB-INF/views/layouts/header-dependencies.jsp"/>
	<link rel="stylesheet" href="${contextPath}/src/css/login.css">
	<script src="${contextPath}/src/js/findInfo.js" defer></script>
	<title>MLB - findPassWord</title>
</head>
<body>
	<jsp:include page="/WEB-INF/views/layouts/header.jsp"/>
	<main>
        <section class="container">
            <p class="header-text"> 비밀번호 찾기 </p>
            <hr class="hr__gray">
            <form name="findPwForm" class="login-form base__lblue br-15 box-shadow" onsubmit="findPw(event)">
                <div class="login-essential mt-20">
                    <div>
                        <input class="box-shadow"  type="text" name="find_id" placeholder="ID : *가입에 사용하신 ID를 입력해주세요">
                    </div>
                    <div>
                        <input class="box-shadow" type="text" name="find_email" placeholder="EMAIL : *가입에 사용하신 이메일을 입력해주세요">
                    </div>
                </div>
                <button class="btn-big__blue">
                    비밀번호 찾기
                </button>
                <div class="login-sub">
                    <div>
                        <a class="fc__gray text-hover__gray" href="${contextPath}/findInfo/findId">아이디 찾기</a>
                        |<a class="fc__gray text-hover__gray" href="${contextPath}/login">로그인</a>
                    </div>
                    <img src="${contextPath}/public/images/mlb_logo2.jpg">
                </div>
            </form>
        </section>
    </main>
    <!-- Modal -->
	<div class="modal" id="changePwModal" tabindex="-1" data-bs-backdrop="static" data-bs-keyboard="false">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h1 class="modal-title fs-5" id="commonModalLabel"></h1>
	      </div>
	      <div class="modal-body">
	      </div>
	      <div class="modal-footer">
	      	<input type="hidden" name="modalType" value=""/>
	        <button id="cancelBtn" type="button" class="btn btn-medium__gray" data-bs-dismiss="modal"> 취소 </button>
	        <button id="confirmBtn" type="button" class="btn btn-medium__blue" onclick="modalConfirm()"> 변경 </button>
	      </div>
	    </div>
	  </div>
	</div>
	<jsp:include page="/WEB-INF/views/layouts/footer.jsp"/>
</body>
</html>