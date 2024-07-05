<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core_1_1" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<link rel="stylesheet" href="${contextPath}/src/common/common.css">

<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<script src="${contextPath}/src/common/common.js" defer></script>
<script>
	function toastPop(message){
		const toastBtn = $('.toastPop')
		const toastLiveExample = $('#liveToast')
		
		// 메시지로 변경
		$(".toast-body").find(".toast-message").text(message);
		
		if (toastBtn) {
			const toastBootstrap = bootstrap.Toast.getOrCreateInstance(toastLiveExample)
			toastBootstrap.show()
	
		}
	}
</script>

</head>
<body>
	<!-- 토스트 -->
	<div class="toast-container position-fixed bottom-0 end-0 p-3">
	  	<div id="liveToast" class="toast base-warn__red " role="alert" aria-live="assertive" aria-atomic="true">
	    	<div class="toast-body">
				<p class="toast-message fc__white">Hello, world! This is a toast message.</p>
				<button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>
	    	</div>
	  	</div>
	</div>
	<%-- 로그인 여부 판단 --%>
    <c:if test="${sessionScope.isLogin == null}">
        <c:set var="isLogin" value="false" scope="session" />
    </c:if>
    
	<header>
	<c:if test="${isLogin}">
			<div class="header-top">
		        <div class="header-top-logo">
		            <img class="logo" src='${contextPath }/public/images/mlb_logo.png'>
		        </div>
		        <div class="header-top-user box-hover dropdown">
		            <img class="user-image" src='${contextPath}/public/images/user_img1.jpg'>
		            <div class="user-name dropdown-toggle" type="button" data-bs-toggle="dropdown">
		                <a class="text-hover__blue fs-14__b">test_user1</a>
		            </div>
		            <ul class="dropdown-menu">
		                <li class="d-flex dropdown-item">
		                    <div class="d-flex">
		                        <img class="user-image" src='${contextPath}/public/images/teams/FL.png'>
		                        <p class="fs-20__ex"> 기아 타이거즈 </p>
		                    </div>
		                    <div class="d-flex">
		                        <a class="text-hover__blue" href="${contextPath}/src/pages/teams/teams.jsp"> 팀페이지 </a>
		                        <a class="text-hover__blue" href="${contextPath}/src/pages/news/news.jsp"> 뉴스 </a>
		                    </div>
		                </li>
		           
	                	<hr class="hr__gray">
	                	<p class="header-title fc__gray fs-20__b"> 컨텐츠</p>
		          
		                <li><a class="dropdown-item fs-20__b text-hover__blue" href="${contextPath}/profile">내 댓글</a></li>
		                <li><a class="dropdown-item fs-20__b text-hover__blue" href="${contextPath}/profile">내 게시글</a></li>
		                <li><a class="dropdown-item fs-20__b text-hover__blue" href="${contextPath}/profile">내 스크랩</a></li>
		                
		                <p class="header-title fc__gray fs-20__b"> 개인 정보 </p>
		                <li><a class="dropdown-item fs-20__b text-hover__blue" href="${contextPath}/profile">내 정보 관리</a></li>
		                <li><a class="dropdown-item fs-20__b text-hover__blue" href="#">회원 탈퇴</a></li>
		            
		            	<li>
		            		<p class="dropdown-item logout fs-12 text-hover__blue" onclick="logout()"> 로그아웃 </p>
		            	</li>
		            </ul>
		        </div>
		    </div>
		    <div class="header-bot">
		        <div class="header-nav">
		            <ul class="d-flex">
		            	<li>
			                <a class="fs-14 fc__white text-hover__white" href="${contextPath}/dashboard">HOME</a>
		            	</li>
		            	<li>
			                <a class="fs-14 fc__white text-hover__white" href="${contextPath}/match">TODAY</a>
		            	</li>
		            	<li>
			                <a class="fs-14 fc__white text-hover__white" href="${contextPath}/news">NEWS</a>
		            	</li>
		            	<li>
			                <a class="fs-14 fc__white text-hover__white" href="${contextPath}/community">COMMUNITY</a>
		            	</li>
		            	<li>
			                <a class="fs-14 fc__white text-hover__white" href="${contextPath}/teams">TEAMS</a>
		            	</li>
		            </ul>
		        </div>
		    </div>
	</c:if>
	<c:if test="${!isLogin}">
		<div class="header-top">
                <div class="header-top-logo">
                    <img class="logo" src='${contextPath}/public/images/mlb_logo.png'>
                </div>
                <div class="header-top-user box-hover" onclick="location.href='${contextPath}/login'">
                    <img class="user-image" src='${contextPath}/public/icons/plus.png'>
                    <div class="user-name">
                        <a class="text-hover__gray fc__gray fs-14__b">로그인후 이용해주세요</a>
                    </div>
                </div>
            </div>
            <div class="header-bot">
                <div class="header-nav">
     		            <ul class="d-flex">
		            	<li>
			                <a class="fs-14 fc__white text-hover__white" href="${contextPath}/dashboard">HOME</a>
		            	</li>
		            	<li>
			                <a class="fs-14 fc__white text-hover__white" href="${contextPath}/match">TODAY</a>
		            	</li>
		            	<li>
			                <a class="fs-14 fc__white text-hover__white" href="${contextPath}/news">NEWS</a>
		            	</li>
		            	<li>
			                <a class="fs-14 fc__white text-hover__white" href="${contextPath}/community">COMMUNITY</a>
		            	</li>
		            	<li>
			                <a class="fs-14 fc__white text-hover__white" href="${contextPath}/teams">TEAMS</a>
		            	</li>
		            </ul>
                </div>
            </div>
	</c:if>
	</header>
</body>
</html>