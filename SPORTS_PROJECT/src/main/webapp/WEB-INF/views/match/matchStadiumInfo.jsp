<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<jsp:include page="/WEB-INF/views/layouts/header-dependencies.jsp" />
<link rel="stylesheet"
	href="${contextPath}/src/css/matchStadiumInfo.css">
<script src="${contextPath}/src/js/matchStadiumInfo.js" defer></script>
<script src="${contextPath}/src/js/dashboard.js" defer></script>

<title>Match StadiumInfo</title>
</head>

<body>
	<jsp:include page="/WEB-INF/views/layouts/header.jsp" />
	<main>
		<div class="cardBackground">
			<div class="quick-view card__lblue ">
				<span>빠른 보기</span>
				<div class="final-score base__mblue">
					FINAL SCORE<br>2 : 1
				</div>
				<div class="league-info">
					<div class=league-info-top>
						<div>미국 프로야구 리그</div>
					</div>
					<div class=league-info-mid>
						<div class=league-info-mid-left>
							<div class="league-infoDetail">서피스</div>
							<br>
							<div>잔디코트</div>
						</div>
						<div class=league-info-mid-mid>
							<div class="league-infoDetail">수용 가능 관중 수</div>
							<br>
							<div>38753</div>
						</div>
						<div class=league-info-mid-right>
							<div class="league-infoDetail">Distance</div>
							<br>
							<div>LF 339 ft, CF 391 ft, RF 309 ft</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class=cardBackground>
			<div class="stadium-image card__lblue">
				<div class="stadiumImageTop">
					<div>구장 이미지</div>
				</div>

				<div class="container-bot">
					<div class="hightlight-clip card__lblue swiper swiper-highlight">

						<hr class="hr__gray mt-10 mb-16">
						<!-- 하단 하이라이트 클립 작성 -->
						<div class="news-content-top d-flex swiper-wrapper">
							<div class="card-thumbnail swiper-slide">
								<img class="card-thumbnail-img"
									src="${contextPath}/public/images/news_example.jpg">

							</div>
							<div class="card-thumbnail swiper-slide">
								<img class="card-thumbnail-img"
									src="${contextPath}/public/images/mlb_logo.png">

							</div>
							<div class="card-thumbnail swiper-slide">
								<img class="card-thumbnail-img"
									src="${contextPath}/public/images/user_img1.jpg">

							</div>
							<div class="card-thumbnail swiper-slide">
								<img class="card-thumbnail-img"
									src="${contextPath}/public/images/user_img1.jpg">

							</div>
							<div class="card-thumbnail swiper-slide">
								<img class="card-thumbnail-img"
									src="${contextPath}/public/images/mlb_logo2.jpg">

							</div>
						</div>
						<div class="swiper-pagination"></div>
					</div>
				</div>
			</div>
		</div>


		<div class=cardBackground>
			<div class="stadium-details card__lblue">
				<div class="stadiumDetailsTop">
					<div>구장 상세 이미지</div>
				</div>
				<div class="stadiumDetailWrapper">
					<img class="stadiumDetail"
						src="${contextPath}/public/images/stadiumImage.png">
					<!-- 섹션나누기 -->
					<div class="section" id="section1"
						style="left: 5%; top: 20%; width: 30%; height: 30%;"></div>
					<div class="section" id="section2"
						style="left: 65%; top: 20%; width: 30%; height: 30%;"></div>
					<div class="section" id="section3"
						style="left: 5%; top: 60%; width: 40%; height: 30%;"></div>
					<div class="section" id="section4"
						style="left: 55%; top: 60%; width: 40%; height: 30%;"></div>
				</div>
				<div id="magnify" class="magnify">
					<img src="/SPORTS_PROJECT/public/images/stadiumImage.png" alt="Magnified Image">
				</div>
				<div class="placeDetails">
					<div>구장 상세 내부</div>
					<div class=detailsBox>
						<div class="details">
							<div class="details1">위치 :</div>
							<div class="details2">서울 송파구 잠실동</div>
						</div>
						<div class="details">
							<div class="details1">주요 특징 :</div>
							<div class="details2">롯데 자이언츠와 두산 베어스의 홈구장</div>
						</div>
						<div class="details">
							<div class="details1">교통편 :</div>
							<div class="details2">지하철 2호선 잠실역 5번 출구 도보 10분</div>
						</div>
						<div class="details">
							<div class="details1">먹거리 :</div>
							<div class="details2">경기장 내 다양한 푸드코트, 주변 롯데월드 몰</div>
						</div>
						<div class="details">
							<div class="details1">주차 정보 :</div>
							<div class="details2">경기장 인근 주차장 이용 가능</div>
						</div>
						<div class="details">
							<div class="details1">대중교통 추천</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="comments-section">
			조회수 30 | 댓글 5 | 좋아요 1 | 신고 0<br>
			<div class="comment">
				<div>작성자</div>
				<div>2024-06-18</div>
				<div>댓글입니다 하나 둘 셋 넷 다섯</div>
				<div>좋아요 3 | 신고</div>
			</div>
			<div class="comment">
				<div>작성자</div>
				<div>2024-06-18</div>
				<div>댓글입니다 하나 둘 셋 넷 다섯</div>
				<div>좋아요 3 | 신고</div>
			</div>
			<div class="comment">
				<div>작성자</div>
				<div>2024-06-18</div>
				<div>댓글입니다 하나 둘 셋 넷 다섯</div>
				<div>좋아요 3 | 신고</div>
			</div>
			<div class="comment">
				<div>작성자</div>
				<div>2024-06-18</div>
				<div>댓글입니다 하나 둘 셋 넷 다섯</div>
				<div>좋아요 3 | 신고</div>
			</div>
			<div class="comment">
				<div>작성자</div>
				<div>2024-06-18</div>
				<div>댓글입니다 하나 둘 셋 넷 다섯</div>
				<div>좋아요 3 | 신고</div>
			</div>
		</div>
		<div id="magnify" class="magnify">
			<img src="/SPORTS_PROJECT/public/images/stadiumImage.png" alt="">
		</div>
	</main>
	<jsp:include page="/WEB-INF/views/layouts/footer.jsp" />
</body>

</html>