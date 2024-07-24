<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" href="${contextPath}/src/css/player.css">

<script src="${contextPath}/src/util/pagination.js" defer></script>
<script src="${contextPath}/src/js/player.js" defer></script>

<title>Player</title>
<script src="https://kit.fontawesome.com/cb5f1fee4d.js" crossorigin="anonymous"></script>

</head>
<body>
	<jsp:include page="/WEB-INF/views/layouts/header-teams.jsp" />
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
					<li>코칭스태프</li> 
					<li><span>|</span></li>
					<li>투수</li> 
					<li><span>|</span></li>
					<li>포수</li> 
					<li><span>|</span></li>
					<li>내야수</li> 
					<li><span>|</span></li>
					<li>외야수</li>
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
						<img class="card-thumbnail-img"
							src="${contextPath}/public/images/news_example.jpg">
						<div class="card-thumbnail-infos">
							<div class="card-thumbnail-title">
								<p>'9실점 악몽' 준 키움과 2달 만에 ㅁㅁㅁㅁㅁㅁaaaaaaaㅁ
									ㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁ</p>
							</div>
							<div class="card-thumbnail-content">
								<p>
									♡ <span>9999</span>
								</p>
								<p>KBO 리그</p>
							</div>
						</div>
					</div>
					<div class="card-thumbnail swiper-slide">
						<img class="card-thumbnail-img"
							src="${contextPath}/public/images/news_example.jpg">
						<div class="card-thumbnail-infos">
							<div class="card-thumbnail-title">
								<p>'9실점 악몽' 준 키움과 2달 만에 ㅁㅁㅁㅁㅁㅁaaaaaaaㅁ
									ㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁ</p>
							</div>
							<div class="card-thumbnail-content">
								<p>
									♡ <span>9999</span>
								</p>
								<p>KBO 리그</p>
							</div>
						</div>
					</div>
					<div class="card-thumbnail swiper-slide">
						<img class="card-thumbnail-img"
							src="${contextPath}/public/images/news_example.jpg">
						<div class="card-thumbnail-infos">
							<div class="card-thumbnail-title">
								<p>'9실점 악몽' 준 키움과 2달 만에 ㅁㅁㅁㅁㅁㅁaaaaaaaㅁ
									ㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁ</p>
							</div>
							<div class="card-thumbnail-content">
								<p>
									♡ <span>9999</span>
								</p>
								<p>KBO 리그</p>
							</div>
						</div>
					</div>
					<div class="card-thumbnail swiper-slide">
						<img class="card-thumbnail-img"
							src="${contextPath}/public/images/news_example.jpg">
						<div class="card-thumbnail-infos">
							<div class="card-thumbnail-title">
								<p>'9실점 악몽' 준 키움과 2달 만에 ㅁㅁㅁㅁㅁㅁaaaaaaaㅁ
									ㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁ</p>
							</div>
							<div class="card-thumbnail-content">
								<p>
									♡ <span>9999</span>
								</p>
								<p>KBO 리그</p>
							</div>
						</div>
					</div>
					<div class="card-thumbnail swiper-slide">
						<img class="card-thumbnail-img"
							src="${contextPath}/public/images/news_example.jpg">
						<div class="card-thumbnail-infos">
							<div class="card-thumbnail-title">
								<p>'9실점 악몽' 준 키움과 2달 만에 ㅁㅁㅁㅁㅁㅁaaaaaaaㅁ
									ㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁ</p>
							</div>
							<div class="card-thumbnail-content">
								<p>
									♡ <span>9999</span>
								</p>
								<p>KBO 리그</p>
							</div>
						</div>
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
					<section class="reply-area">
						<div id="player-data">
						</div>
					</section>
					<div id="player-pagination"></div>
				</div>
				
				<section class="input-area">
					<form>
						<textarea style="resize: none" placeholder="댓글을 입력해주세요."></textarea>
						<button>댓글</button>
					</form>
				</section>
				
				
			</div>
		</div>
	</main>
	</div>

</body>
</html>