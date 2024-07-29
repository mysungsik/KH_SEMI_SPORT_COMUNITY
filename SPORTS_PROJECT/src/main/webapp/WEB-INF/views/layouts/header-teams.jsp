<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core_1_1" %>


<!-- 토스트 -->
<div class="toast-container position-fixed bottom-0 end-0 p-3">
  	<div id="liveToast" class="toast " role="alert" aria-live="assertive" aria-atomic="true">
    	<div class="toast-body">
			<p class="toast-message fc__white">Hello, world! This is a toast message.</p>
			<button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>
    	</div>
  	</div>
</div>


<teamHeader>
	<c:if test="${!empty loginUser}">
		<div class="header-top">
	        <div class="header-top-logo">
	            <img class="logo" src='${contextPath }/public/images/mlb_logo.png'>
	        </div>
	        <div class="header-top-user box-hover dropdown">
	        	<c:if test="${empty loginUser.getUserProfileImg()}">
	        		 <img class="user-image" src="${contextPath}/public/images/profile/user_img1.jpg">
	        	</c:if>
		   		<c:if test="${!empty loginUser.getUserProfileImg()}">
		    		<img class="user-image"  src="${loginUser.getUserProfileImg()}"/>
		    	</c:if>
	            <div class="user-name dropdown-toggle" data-bs-toggle="dropdown">
	                <a class="text-hover__blue fs-14__b"> ${loginUser.getUserId()}</a>
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
	          
	                <li><a class="dropdown-item fs-20__b text-hover__blue" href="${contextPath}/profile/myComment">내 댓글</a></li>
	                <li><a class="dropdown-item fs-20__b text-hover__blue" href="${contextPath}/profile/myBoard">내 게시글</a></li>
	                <li><a class="dropdown-item fs-20__b text-hover__blue" href="${contextPath}/profile/myScrab">내 스크랩</a></li>
	                
	                <p class="header-title fc__gray fs-20__b"> 개인 정보 </p>
	                <li><a class="dropdown-item fs-20__b text-hover__blue" href="${contextPath}/profile/myInfo">내 정보 관리</a></li>
	                <li><a class="dropdown-item fs-20__b text-hover__blue" href="${contextPath}/profile/resign">회원 탈퇴</a></li>
	            
	            	<c:if test="${loginUser.getUserAuthority() == 'A' }">
		                <p class="header-title fc__gray fs-20__b"> 회원 관리 </p>
		                <li><a class="dropdown-item fs-20__b text-hover__blue" href="${contextPath}/admin/profile/userManagement">유저 관리</a></li>
		                <li><a class="dropdown-item fs-20__b text-hover__blue" href="${contextPath}/admin/profile/reportManagement">신고 관리</a></li>
					</c:if>
	            	<li>
	            		<p class="dropdown-item logout fs-12 text-hover__blue" onclick="logout()"> 로그아웃 </p>
	            	</li>
	            </ul>
	        </div>
	    </div>
	</c:if>
	<c:if test="${empty loginUser}">
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
	</c:if>
	<div class="header-bot">
		 <div class="header-nav">
		     <ul class="d-flex team-nav">
		     	<li>
					<a class="fs-20__b  team-name" href="${contextPath}/team/${team}/info">${team}</a>
				</li>
				<li>
					<a class="fs-20__b " href="${contextPath}/team/${team}/players">PLAYERS</a>
				</li>
				<li>
                    <a href="${contextPath}/team/${team}"><img class="team-logo" src="${contextPath}${oneTeam.imgOriginal1}"></a>
				</li>
				<li>
					<a class="fs-20__b " href="${contextPath}/team/${team}/schedule">SCHEDULE</a>
				</li>
				<li>
					<a class="fs-20__b " href="${contextPath}/community/communityBoard/cheer">CHEERS</a>
				</li>
	        </ul>
	    </div>
	</div>
</teamHeader>






