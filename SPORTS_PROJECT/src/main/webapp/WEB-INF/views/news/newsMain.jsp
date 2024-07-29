<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<jsp:include page="/WEB-INF/views/layouts/header-dependencies.jsp"/>
<link rel="stylesheet" href="${contextPath}/src/css/newsMain.css">
<script src="${contextPath}/src/util/pagination.js" defer></script>
<script src="${contextPath}/src/js/newsMain.js" defer></script>

<title>News Main</title>
</head>
<body>
	<jsp:include page="/WEB-INF/views/layouts/header.jsp"/>
	<!-- Write Main Content -->
	<main class="container">
		<!-- 뉴스 탭 -->
		<div class="news-main">
		<!--  인기뉴스 -->
			<div class="news-main-popular">
				<div class="news-main-header d-flex">
					<p class="fs-20__b mb-10 fc__blue"> 인기 뉴스 </p>
					<a class="text-hover__blue" href="${contextPath}/news/list?searchTerm=recent&teamNo=1"> 전체 뉴스 > </a>
				</div>
				<div class="popular-news-container"></div>
			</div>
		<!--  실시간 뉴스-->
			<div class="news-main-recently">
				<p class="fs-20__b mb-10 fc__blue"> 실시간 뉴스 </p>
				<div class="recent-news-container"></div>
			</div>
		</div>
		
		<!-- 동영상 탭 (영상 인기순 10개)-->
<!-- 		<div class="news-vods-container"> -->
<!-- 			<div class="news-vods-header mb-10 d-flex"> -->
<!-- 				<p class="fs-20__b fc__blue"> 많이 본 영상 </p> -->
<%-- 				<a class="text-hover__blue" href='${contextPath}/news/vods'> 전체 영상 > </a> --%>
<!-- 			</div> -->
<!-- 			<div class="new-vods"> -->
<!-- 	            <div class="card-thumbnail"> -->
<!-- 	            	<p class="rank fc__white fs-28__b">1<p> -->
<%-- 	             	<img class="card-thumbnail-img" src="${contextPath}/public/images/news_example.jpg"> --%>
<!-- 	             	<div class="card-thumbnail-infos"> -->
<!-- 	                 	<div class="card-thumbnail-title"> -->
<!-- 	                     	'9실점 악몽' 준 키움과 2달 만에 ㅁㅁㅁㅁㅁㅁaaaaaaaㅁ ㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁ -->
<!-- 	                 	</div> -->
<!-- 	             	</div> -->
<!-- 	         	</div> -->
<!-- 		        <div class="card-thumbnail"> -->
<!-- 		        	<p class="rank fc__white fs-28__b">2<p> -->
<%-- 		            <img class="card-thumbnail-img" src="${contextPath}/public/images/news_example.jpg"> --%>
<!-- 		            <div class="card-thumbnail-infos"> -->
<!-- 		                <div class="card-thumbnail-title"> -->
<!-- 		                    '9실점 악몽' 준 키움과 2달 만에 ㅁㅁㅁㅁㅁㅁaaaaaaaㅁ ㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁ -->
<!-- 		                </div> -->
<!-- 		            </div> -->
<!-- 		        </div> -->
<!-- 		        		        <div class="card-thumbnail"> -->
<!-- 		        	<p class="rank fc__white fs-28__b">2<p> -->
<%-- 		            <img class="card-thumbnail-img" src="${contextPath}/public/images/news_example.jpg"> --%>
<!-- 		            <div class="card-thumbnail-infos"> -->
<!-- 		                <div class="card-thumbnail-title"> -->
<!-- 		                    '9실점 악몽' 준 키움과 2달 만에 ㅁㅁㅁㅁㅁㅁaaaaaaaㅁ ㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁ -->
<!-- 		                </div> -->
<!-- 		            </div> -->
<!-- 		        </div> -->
<!-- 		        		        <div class="card-thumbnail"> -->
<!-- 		        	<p class="rank fc__white fs-28__b">2<p> -->
<%-- 		            <img class="card-thumbnail-img" src="${contextPath}/public/images/news_example.jpg"> --%>
<!-- 		            <div class="card-thumbnail-infos"> -->
<!-- 		                <div class="card-thumbnail-title"> -->
<!-- 		                    '9실점 악몽' 준 키움과 2달 만에 ㅁㅁㅁㅁㅁㅁaaaaaaaㅁ ㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁ -->
<!-- 		                </div> -->
<!-- 		            </div> -->
<!-- 		        </div> -->
<!-- 		        		        <div class="card-thumbnail"> -->
<!-- 		        	<p class="rank fc__white fs-28__b">2<p> -->
<%-- 		            <img class="card-thumbnail-img" src="${contextPath}/public/images/news_example.jpg"> --%>
<!-- 		            <div class="card-thumbnail-infos"> -->
<!-- 		                <div class="card-thumbnail-title"> -->
<!-- 		                    '9실점 악몽' 준 키움과 2달 만에 ㅁㅁㅁㅁㅁㅁaaaaaaaㅁ ㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁ -->
<!-- 		                </div> -->
<!-- 		            </div> -->
<!-- 		        </div> -->
<!-- 		        		        <div class="card-thumbnail"> -->
<!-- 		        	<p class="rank fc__white fs-28__b">2<p> -->
<%-- 		            <img class="card-thumbnail-img" src="${contextPath}/public/images/news_example.jpg"> --%>
<!-- 		            <div class="card-thumbnail-infos"> -->
<!-- 		                <div class="card-thumbnail-title"> -->
<!-- 		                    '9실점 악몽' 준 키움과 2달 만에 ㅁㅁㅁㅁㅁㅁaaaaaaaㅁ ㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁ -->
<!-- 		                </div> -->
<!-- 		            </div> -->
<!-- 		        </div> -->
<!-- 		        		        		        <div class="card-thumbnail"> -->
<!-- 		        	<p class="rank fc__white fs-28__b">2<p> -->
<%-- 		            <img class="card-thumbnail-img" src="${contextPath}/public/images/news_example.jpg"> --%>
<!-- 		            <div class="card-thumbnail-infos"> -->
<!-- 		                <div class="card-thumbnail-title"> -->
<!-- 		                    '9실점 악몽' 준 키움과 2달 만에 ㅁㅁㅁㅁㅁㅁaaaaaaaㅁ ㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁ -->
<!-- 		                </div> -->
<!-- 		            </div> -->
<!-- 		        </div> -->
<!-- 		        		        		        <div class="card-thumbnail"> -->
<!-- 		        	<p class="rank fc__white fs-28__b">2<p> -->
<%-- 		            <img class="card-thumbnail-img" src="${contextPath}/public/images/news_example.jpg"> --%>
<!-- 		            <div class="card-thumbnail-infos"> -->
<!-- 		                <div class="card-thumbnail-title"> -->
<!-- 		                    '9실점 악몽' 준 키움과 2달 만에 ㅁㅁㅁㅁㅁㅁaaaaaaaㅁ ㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁ -->
<!-- 		                </div> -->
<!-- 		            </div> -->
<!-- 		        </div> -->
<!-- 			</div> -->
<!-- 		</div> -->
	</main>
	<!-- Be sure to include this TAG -->
	<jsp:include page="/WEB-INF/views/layouts/footer.jsp" />


</body>
</html>