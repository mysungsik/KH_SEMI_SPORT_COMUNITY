<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="${contextPath}/src/css/teamsEachHeader.css">
<link rel="stylesheet" href="${contextPath}/src/css/player.css">

<jsp:include page="/WEB-INF/views/layouts/header-teams-dependencies.jsp"/>
<jsp:include page="/WEB-INF/views/layouts/header-dependencies.jsp"/>

<script src="${contextPath}/src/util/pagination.js" defer></script>
<script src="${contextPath}/src/js/player.js" defer></script>

<title>Player</title>

</head>
<body>
	<jsp:include page="/WEB-INF/views/layouts/header-teams.jsp" />
	
	<input type="hidden" value="${playerNo}" name="playerNo">
	
	<!-- 페이지 커버 -->
	<div class="pagecover">
		<div class="pagecover-img">
			<div class="fc__white fs-28__b">선수 소개</div>

			<div class="fc__white">
				<i class="fa-solid fa-house"></i> > PLAYERS > 선수 소개
			</div>
		</div>
		<!-- 소개띠 -->
		<div class="pagecover-bottom">
			<div class="pagecover-bottom-inner d-flex fc__white">
				<ul>
				</ul>
			</div>
		</div>
		<!-- 소개띠 끝 -->
	</div>
	<!-- 페이지 커버 끝 -->

	<!-- 메인 시작 -->
	<div class="main-background-img">
	<main class="container">
		<div class="player-info">
		</div>
		<div class="player-card">
			
		</div>
		<!-- 카드 끝  -->

		<!-- 상세 프로필 -->
		<div class="player-profile  card__lblue ">
		</div>

		<!-- 상세  프로필 끝 -->

		<!-- 하이라이트 뉴스 -->
		<!-- 명식이형 고마워 김승연 장하다 -->
		<div class="main-news card__lblue">
			<div class="main-news-content mt-10 swiper swiper-news">
				<div class="news-content-top d-flex swiper-wrapper">
					<div class="card-thumbnail swiper-slide">
								<a href="${contextPath }/news/detail/1">
									<img class="card-thumbnail-img" src="${contextPath }/public/images/profile/202407207110760_63885.jpg"/>
									<div class="card-thumbnail-infos">
										<div class="card-thumbnail-title">
											<p>한화 이글스 기아에게 충격 패배</p>
										</div>
										<div class="card-thumbnail-content">
											<p>
												♡ <span>5</span>
											</p>
											<p>KBO 리그</p>
										</div>
									</div>
								</a>
							</div>
							<div class="card-thumbnail swiper-slide">
								<a href="${contextPath }/news/detail/2">
									<img class="card-thumbnail-img" src="${contextPath }/public/images/profile/house.jpeg"/>
									<div class="card-thumbnail-infos">
										<div class="card-thumbnail-title">
											<p>빰 빠라밤밤밤밤 축33333하 !</p>
										</div>
										<div class="card-thumbnail-content">
											<p>
												♡ <span>3</span>
											</p>
											<p>KBO 리그</p>
										</div>
									</div>
								</a>
							</div>
							<div class="card-thumbnail swiper-slide">
								<a href="${contextPath }/news/detail/3">
									<img class="card-thumbnail-img" src="${contextPath }/public/images/profile/202407205000776_12975.jpg"/>
									<div class="card-thumbnail-infos">
										<div class="card-thumbnail-title">
											<p>빰 빠라밤밤밤밤 축2222하 !</p>
										</div>
										<div class="card-thumbnail-content">
											<p>
												♡ <span>3</span>
											</p>
											<p>KBO 리그</p>
										</div>
									</div>
								</a>
							</div>
							<div class="card-thumbnail swiper-slide">
								<a href="${contextPath }/news/detail/4">
									<img class="card-thumbnail-img" src="${contextPath }/public/images/profile/9d43577286a94ca918d47c8e7df4bdc5.jpg"/>
									<div class="card-thumbnail-infos">
										<div class="card-thumbnail-title">
											<p> 롯데 타이거즈 기아에게 충격 패배</p>
										</div>
										<div class="card-thumbnail-content">
											<p>
												♡ <span>2</span>
											</p>
											<p>KBO 리그</p>
										</div>
									</div>
								</a>
							</div>
							<div class="card-thumbnail swiper-slide">
								<a href="${contextPath }/news/detail/5">
									<img class="card-thumbnail-img" src="${contextPath }/public/images/profile/user_img1.jpg"/>
									<div class="card-thumbnail-infos">
										<div class="card-thumbnail-title">
											<p> 빰 빠라밤밤밤밤 축하 !</p>
										</div>
										<div class="card-thumbnail-content">
											<p>
												♡ <span>2</span>
											</p>
											<p>KBO 리그</p>
										</div>
									</div>
								</a>
							</div>
				</div>
				<div class="swiper-pagination"></div>
			</div>
			<div class="navigation-wrapper">
				<!-- 화살표 -->
				<div class="swiper-button-prev"></div>
				<div class="swiper-button-next"></div>
			</div>
		</div>
		<!-- 투수 기록 - 김박사님 감사합니다 -->
		<div class="pitching-records">
			<table class="pitching-records-table">
				<thead>
					<tr class="pitching-records-table-title">
						<th colspan="12">통산기록</th>
					</tr>
					<tr>
						<th>시카고C</th>
						<th>이닝</th>
						<th>투구수</th>
						<th>피안타</th>
						<th>피홈런</th>
						<th>탈삼진</th>
						<th>볼넷</th>
						<th>사사구</th>
						<th>실점</th>
						<th>자책</th>
						<th>ERA</th>
						<th>WHIP</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>김동준</td>
						<td>6</td>
						<td>83</td>
						<td>7</td>
						<td>1</td>
						<td>5</td>
						<td>0</td>
						<td>3</td>
						<td>3</td>
						<td>3</td>
						<td>3.02</td>
						<td>1.20</td>
					</tr>
					<tr>
						<td>동동동</td>
						<td>6</td>
						<td>83</td>
						<td>7</td>
						<td>1</td>
						<td>5</td>
						<td>0</td>
						<td>3</td>
						<td>3</td>
						<td>3</td>
						<td>3.02</td>
						<td>1.20</td>
					</tr>
					<tr>
						<td>김김김</td>
						<td>6</td>
						<td>83</td>
						<td>7</td>
						<td>1</td>
						<td>5</td>
						<td>0</td>
						<td>3</td>
						<td>3</td>
						<td>3</td>
						<td>3.02</td>
						<td>1.20</td>
					</tr>
					<tr>
						<td>준준준</td>
						<td>6</td>
						<td>83</td>
						<td>7</td>
						<td>1</td>
						<td>5</td>
						<td>0</td>
						<td>3</td>
						<td>3</td>
						<td>3</td>
						<td>3.02</td>
						<td>1.20</td>
					</tr>
					<tr>
						<td>djkim</td>
						<td>6</td>
						<td>83</td>
						<td>7</td>
						<td>1</td>
						<td>5</td>
						<td>0</td>
						<td>3</td>
						<td>3</td>
						<td>3</td>
						<td>3.02</td>
						<td>1.20</td>
					</tr>
				</tbody>
			</table>
		</div>

		<!-- 통산 기록 끝 -->

		<!-- 상세 기록 시작 -->
		<div class="pitching-records">
			<table class="pitching-records-table">
				<thead>
					<tr class="pitching-records-table-title">
						<th colspan="12">상세기록</th>
					</tr>
					<tr>
						<th>시카고C</th>
						<th>이닝</th>
						<th>투구수</th>
						<th>피안타</th>
						<th>피홈런</th>
						<th>탈삼진</th>
						<th>볼넷</th>
						<th>사사구</th>
						<th>실점</th>
						<th>자책</th>
						<th>ERA</th>
						<th>WHIP</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>김동준</td>
						<td>6</td>
						<td>83</td>
						<td>7</td>
						<td>1</td>
						<td>5</td>
						<td>0</td>
						<td>3</td>
						<td>3</td>
						<td>3</td>
						<td>3.02</td>
						<td>1.20</td>
					</tr>
					<tr>
						<td>동동동</td>
						<td>6</td>
						<td>83</td>
						<td>7</td>
						<td>1</td>
						<td>5</td>
						<td>0</td>
						<td>3</td>
						<td>3</td>
						<td>3</td>
						<td>3.02</td>
						<td>1.20</td>
					</tr>
					<tr>
						<td>김김김</td>
						<td>6</td>
						<td>83</td>
						<td>7</td>
						<td>1</td>
						<td>5</td>
						<td>0</td>
						<td>3</td>
						<td>3</td>
						<td>3</td>
						<td>3.02</td>
						<td>1.20</td>
					</tr>
					<tr>
						<td>준준준</td>
						<td>6</td>
						<td>83</td>
						<td>7</td>
						<td>1</td>
						<td>5</td>
						<td>0</td>
						<td>3</td>
						<td>3</td>
						<td>3</td>
						<td>3.02</td>
						<td>1.20</td>
					</tr>
					<tr>
						<td>djkim</td>
						<td>6</td>
						<td>83</td>
						<td>7</td>
						<td>1</td>
						<td>5</td>
						<td>0</td>
						<td>3</td>
						<td>3</td>
						<td>3</td>
						<td>3.02</td>
						<td>1.20</td>
					</tr>
				</tbody>
			</table>
		</div>
		<!-- 상세 기록 끝 -->

		<!-- 투수 기록 시작 -->
		<div class="pitching-records">
			<table class="pitching-records-table">
				<thead>
					<tr class="pitching-records-table-title">
						<th colspan="12">투수기록</th>
					</tr>
					<tr>
						<th>시카고C</th>
						<th>이닝</th>
						<th>투구수</th>
						<th>피안타</th>
						<th>피홈런</th>
						<th>탈삼진</th>
						<th>볼넷</th>
						<th>사사구</th>
						<th>실점</th>
						<th>자책</th>
						<th>ERA</th>
						<th>WHIP</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>김동준</td>
						<td>6</td>
						<td>83</td>
						<td>7</td>
						<td>1</td>
						<td>5</td>
						<td>0</td>
						<td>3</td>
						<td>3</td>
						<td>3</td>
						<td>3.02</td>
						<td>1.20</td>
					</tr>
					<tr>
						<td>동동동</td>
						<td>6</td>
						<td>83</td>
						<td>7</td>
						<td>1</td>
						<td>5</td>
						<td>0</td>
						<td>3</td>
						<td>3</td>
						<td>3</td>
						<td>3.02</td>
						<td>1.20</td>
					</tr>
					<tr>
						<td>김김김</td>
						<td>6</td>
						<td>83</td>
						<td>7</td>
						<td>1</td>
						<td>5</td>
						<td>0</td>
						<td>3</td>
						<td>3</td>
						<td>3</td>
						<td>3.02</td>
						<td>1.20</td>
					</tr>
					<tr>
						<td>준준준</td>
						<td>6</td>
						<td>83</td>
						<td>7</td>
						<td>1</td>
						<td>5</td>
						<td>0</td>
						<td>3</td>
						<td>3</td>
						<td>3</td>
						<td>3.02</td>
						<td>1.20</td>
					</tr>
					<tr>
						<td>djkim</td>
						<td>6</td>
						<td>83</td>
						<td>7</td>
						<td>1</td>
						<td>5</td>
						<td>0</td>
						<td>3</td>
						<td>3</td>
						<td>3</td>
						<td>3.02</td>
						<td>1.20</td>
					</tr>
				</tbody>
			</table>
		</div>
		<!-- 투수 기록 끝 -->

		<!-- 컨디션 기록 -->
		<div class="pitching-records-condition">
			<div class="pitching-comment-content">
				<div class="title">컨디션기록</div>
				<div class="pitching-button-area">
					<button id="era-button">방어율</button>
					<button id="victory-button">승리</button>
					<button id="odd-button">승률</button>
					<button id="k-button">탈삼진</button>
				</div>
				
				<div class="chart-container">
				  <canvas id="myChart"></canvas>
				</div>
				
				<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
				
			</div>
		</div>
		

		<!-- 응원 댓글 -->
		<div class="player-comment card__lblue">
			<div class="player-comment-content">
				<div class="title">응원댓글</div>
				<div class="former-comment">
					<!-- <section class="reply-area">
						<div id="player-data">
						</div>
					</section>
					<div id="player-pagination"></div> -->
					
					<section class="reply-container">
						<div id="reply-data"></div>
					</section>
					
					
				</div>
				
				<section class="reply-input-container">
					<form action="insertReply">
						<textarea style="resize: none" placeholder="댓글을 입력해주세요."  name="reply-content"></textarea>
						<button  onclick="insertReply()" type="button">댓글</button>
					</form>
				</section>
				
				<section class="reply-container">
					
					<div id="reply-pagination"></div>
				</section>
			</div>
		</div>
	</main>
	</div>
	  	
	
</body>
</html>