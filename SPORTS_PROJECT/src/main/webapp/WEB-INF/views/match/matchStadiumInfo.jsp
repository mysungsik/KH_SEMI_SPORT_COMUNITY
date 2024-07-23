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
				<div class=stadium-imageBox>
					<div>
						<div class="stadiumImage">
							<img src="/SPORTS_PROJECT/public/images/mlb_logo.png" id="image1">
							<img src="/SPORTS_PROJECT/public/images/mlb_logo.png" id="image1">
							<img src="/SPORTS_PROJECT/public/images/mlb_logo.png" id="image1">
							<img src="/SPORTS_PROJECT/public/images/mlb_logo.png" id="image1">
							<img src="/SPORTS_PROJECT/public/images/mlb_logo.png" id="image1">
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class=cardBackground>
			<div class="stadium-details card__lblue">
				<div class="stadiumDetailsTop">
					<div>구장 상세 이미지</div>
				</div>
				
				<div class="stadium-imageBox2">
					<div class="image-section top left" data-position="top left">
						<img src="/SPORTS_PROJECT/public/images/stadiumImage.png" alt="Image">
					</div>
					<div class="image-section top right" data-position="top right">
						<img src="/SPORTS_PROJECT/public/images/stadiumImage.png" alt="Image">
					</div>
					<div class="image-section bottom left" data-position="bottom left">
						<img src="/SPORTS_PROJECT/public/images/stadiumImage.png" alt="Image">
					</div>
					<div class="image-section bottom right"  data-position="bottom right">
						<img src="/SPORTS_PROJECT/public/images/stadiumImage.png" alt="Image">
					</div>
				</div>
				
				<div class="overlay" id="overlay">
					<div class="zoomed-image">
						<img src="/SPORTS_PROJECT/public/images/stadiumImage.png" alt="Zoomed Image" id="zoomedImage">
					</div>
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
		<div id="magnify" class="magnify">
			<img src="/SPORTS_PROJECT/public/images/stadiumImage.png" alt="">
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
	</main>
	<jsp:include page="/WEB-INF/views/layouts/footer.jsp" />
</body>

</html>