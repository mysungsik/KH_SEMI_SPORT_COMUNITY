<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core_1_1" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<jsp:include page="/WEB-INF/views/layouts/header-dependencies.jsp" />
	<link rel="stylesheet" href="${contextPath}/src/css/teamsEachHeader.css">
	<script src="${contextPath}/src/js/header-teams.js" defer></script>
</head>

<body>
	<input type="hidden" name="team" value="${requestScope.team}">
	<input type="hidden" name="page" value="${requestScope.page}">
	<eachTeamHeader>
	<c:if test="${!empty loginUser}">
		
			<div class="header-top">
		        <div class="header-top-logo">
		            <img class="logo" src='${contextPath}/public/images/mlb_logo.png'>
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
		                <li><a class="dropdown-item fs-20__b text-hover__blue" href="${contextPath}/src/pages/personal/myInfo.jsp">내 댓글</a></li>
		                <li><a class="dropdown-item fs-20__b text-hover__blue" href="${contextPath}/src/pages/personal/myInfo.jsp">내 게시글</a></li>
		                <li><a class="dropdown-item fs-20__b text-hover__blue" href="${contextPath}/src/pages/personal/myInfo.jsp">내 스크랩</a></li>
		                
		                <p class="header-title fc__gray fs-20__b"> 개인 정보 </p>
		                <li><a class="dropdown-item fs-20__b text-hover__blue" href="${contextPath}/src/pages/personal/myInfo.jsp">내 정보 관리</a></li>
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
						<!--
		           		<li>
							<a class="fs-20__b ${d.team_color} team-name" href="${contextPath}/team/${requestScope.team}/info">${requestScope.team}</a>
						</li>
						<li>
							<a class="fs-20__b ${d.team_color}" href="${contextPath}/team/${requestScope.team}/players">PLAYERS</a>
						</li>
						<li>
							<a href="${contextPath}/team/${requestScope.team}"><img class="team-logo" src="${d.team_img}"></a>
						</li>
						<li>
							<a class="fs-20__b ${d.team_color}" href="${contextPath}/team/${requestScope.team}/schedule">SCHEDULE</a>
						</li>
						<li>
							<a class="fs-20__b ${d.team_color}" href="${contextPath }/community/communityBoard/cheer">CHEERS</a>
						</li>
						-->
		            </ul>
		        </div>
		    </div>
	</c:if>
	<c:if test="${empty loginUser}">
	
		<div class="header-top">
                <div class="header-top-logo">
                    <img class="logo" src='${contextPath}/public/images/mlb_logo.png'>
                </div>
                <div class="header-top-user box-hover" onclick="location.href = '${contextPath}/login'">
                    <img class="user-image" src='${contextPath}/public/icons/plus.png'>
                    <div class="user-name">
                        <a class="text-hover__gray fc__gray fs-14__b">로그인후 이용해주세요</a>
                    </div>
                </div>
            </div>
            <div class="header-bot">
                <div class="header-nav">
                    <ul class="d-flex team-nav">
						<!--
						<li>
							<a class="fs-20__b ${d.team_color} team-name" href="${contextPath}/team/${requestScope.team}/info">${requestScope.team}</a>
						</li>
						<li>
							<a class="fs-20__b ${d.team_color}" href="${contextPath}/team/${requestScope.team}/players">PLAYERS</a>
						</li>
						<li>
							<a href="${contextPath}/team/${requestScope.team}"><img class="team-logo" src="${d.team_img}"></a>
						</li>
						<li>
							<a class="fs-20__b ${d.team_color}" href="${contextPath}/team/${requestScope.team}/schedule">SCHEDULE</a>
						</li>
						<li>
							<a class="fs-20__b ${d.team_color}" href="${contextPath }/community/communityBoard/cheer">CHEERS</a>
						</li>
						
					-->
                    </ul>
                </div>
            </div>
	</c:if>
	</eachTeamHeader>
</body>
</html>