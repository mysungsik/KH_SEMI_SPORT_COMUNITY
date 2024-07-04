<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link rel="stylesheet" href="${contextPath}/src/css/profile.css">
    <script src="${contextPath}/src/util/pagination.js" defer></script>
    <script src="${contextPath}/src/js/profileAdmin.js" defer></script>
    
    <title>MLB - Na</title>
</head>
<body>
    <jsp:include page="/WEB-INF/views/layouts/header.jsp"/>

    <main>
        <section class="container">
        	<!-- 사이드바 -->
            <jsp:include page="/WEB-INF/views/profile/profileSidebar.jsp"></jsp:include>
            
            <!-- 메인컨텐츠 -->
            <div class="profile-content">
            	<!-- 컨텐츠 > 헤더 -->
                <p class="content-title fs-28__b"> 유저 관리</p>
                <hr class="hr__gray mt-20">
                <div class="content-header d-flex">
                 	검색 칸입니다.
                </div>
                
                <!-- 컨텐츠 > 메인 -->
                <div class="content-main">
                    <div id="user-data" class="content-elements"></div>
                </div>
                <div id="user-pagination"></div>
                <!-- 컨텐츠 메인 종료 -->
            </div>
        </section>
    </main>
    <!-- Modal -->
	<div class="modal" id="adminModal" tabindex="-1" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h1 class="modal-title fs-5" id="commonModalLabel"></h1>
	        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	      </div>
	      <div class="modal-body">
	      </div>
	      <div class="modal-footer">
	      	<input type="hidden" name="modalType" value=""/>
	        <button id="cancelBtn" type="button" class="btn btn-secondary" data-bs-dismiss="modal" onclick="modalCancel()"> 취소 </button>
	        <button id="confirmBtn" type="button" class="btn btn-primary" data-bs-dismiss="modal" onclick="modalConfirm()"> 확인 </button>
	      </div>
	    </div>
	  </div>
	</div>
	<jsp:include page="/WEB-INF/views/layouts/footer.jsp"/>
</body>
</html>