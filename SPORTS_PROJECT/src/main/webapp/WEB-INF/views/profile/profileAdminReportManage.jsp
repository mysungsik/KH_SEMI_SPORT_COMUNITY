<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <jsp:include page="/WEB-INF/views/layouts/header-dependencies.jsp"/>
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
                <p class="content-title fs-28__b"> 신고 관리</p>
                <hr class="hr__gray mt-20">
                <div class="content-header d-flex">
                 	<div class="search-area">
						<select class="search-category" name="search_category">
							<option value="REPORT_TYPE" selected> 신고 유형 </option>
							<option value="VIO_TYPE" > 위반 유형 </option>
							<option value="REPORT_CONTENT" > 신고 내용 </option>
							<option value="TARGET_CONTENT" > 게시글 내용 </option>
						</select>
						<input type="text" name="search_input">
						<button class="search" onclick="searchReport()">검색</button>
					</div>
                </div>
                
                <!-- 컨텐츠 > 메인 -->
                <div class="content-main">
                    <div id="report-data" class="content-elements"></div>
                </div>
                <div id="report-pagination"></div>
                <!-- 컨텐츠 메인 종료 -->
            </div>
        </section>
    </main>
    <!-- Modal -->
	<div class="modal" id="adminModal" tabindex="-1" aria-hidden="true">
      <input type="hidden" name="modalType" value=""/>
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header base__blue">
	        <h1 class="modal-title" id="commonModalLabel"></h1>
	        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	      </div>
	      <div class="modal-body"></div>
	    </div>
	  </div>
	</div>
	<jsp:include page="/WEB-INF/views/layouts/footer.jsp"/>
</body>
</html>