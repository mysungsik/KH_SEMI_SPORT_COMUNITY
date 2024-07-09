<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="${contextPath}/src/css/player.css">
    
	<script src="${contextPath}/src/util/pagination.js" defer></script>
    <script src="${contextPath}/src/js/communityDetail.js" defer></script>
    <script src="${contextPath}/src/js/teams.js" defer></script>
	<script src="${contextPath}/src/js/player.js" defer></script>
    
    <title>Player</title>
    <script src="https://kit.fontawesome.com/cb5f1fee4d.js" crossorigin="anonymous"></script>
</head>
<body>
	<jsp:include page="/WEB-INF/views/layouts/header-teams.jsp"/>
	<!-- 페이지 커버 -->
	<div class="pagecover">
		<div class="pagecover-img">
			<div class="fc__white fs-28__b">선수 소개</div>
			
			<div class="fc__white">
				<i class="fa-solid fa-house"></i>
				 > PLAYERS > 선수 소개
			</div>
		</div>
		<!-- 소개띠 -->
		<div class="pagecover-bottom">
			<div class="pagecover-bottom-inner d-flex fc__white">
				<ul>
					<li>코칭스태프</li>
					|
					<li>투수</li>
					|
					<li>포수</li>
					|
					<li>내야수</li>
					|
					<li>외야수</li>
				</ul>
			</div>
		</div>
		<!-- 소개띠 끝 -->
	</div>
	<!-- 페이지 커버 끝 -->

	<!-- 메인 시작 -->
	<main class="container">
		<div class="player-info">
			<div class="player-info-content">
				<div class="info-content">
					<div class="info-content-top">
						<p class="position fs-20">투수 / 좌투좌타</p>
						<span class="player-num">54</span>
						<span class="player-name"> 양현종</span>
						<i class="fa-solid fa-heart" id="heart"></i>
					</div>
					<table class="info-content-bottom">
						<tr>
							<th class="fs-20__b">생년월일</th>
							<td class="fs-20">1988년 03월 01일</td>
						</tr>
						<tr>
							<th class="fs-20__b">프로입단</th>
							<td class="fs-20">2007년</td>
						</tr>
						<tr>
							<th class="fs-20__b">신장/체중</th>
							<td class="fs-20">183cm/91kg</td>
						</tr>
						<tr>
							<th class="fs-20__b">출신학교</th>
							<td class="fs-20">학강초 - 광주동성중 - 광주동성고 - KIA - 텍사스</td>
						</tr>
						<tr>
							<th class="fs-20__b">연봉</th>
							<td class="fs-20">50,000만원</td>
						</tr>
					</table>

				</div>

			</div>
			<div class="player-info-img">
				<img src="https://tigers.co.kr/files/playerImg/tigersImg2/2024_54_C.png" alt="">
			</div>
			
		</div>

		<div class="player-card">
			<div class="card-thumbnail">
				<div class="card-thumbnail-infos">
					<div class="card-thumbnail-position fc__white">
						ERA
					</div>
					<hr>
					<div class="card-thumbnail-content fc__white">
						3.91
					</div>
				</div>
			</div>

			<div class="card-thumbnail">
				<div class="card-thumbnail-infos">
					<div class="card-thumbnail-position fc__white">
						승
					</div>
					<hr>
					<div class="card-thumbnail-content fc__white">
						6
					</div>
				</div>
			</div>

			<div class="card-thumbnail">
				<div class="card-thumbnail-infos">
					<div class="card-thumbnail-position fc__white">
						패
					</div>
					<hr>
					<div class="card-thumbnail-content fc__white">
						3
					</div>
				</div>
			</div>

			<div class="card-thumbnail">
				<div class="card-thumbnail-infos">
					<div class="card-thumbnail-position fc__white">
						세이브
					</div>
					<hr>
					<div class="card-thumbnail-content fc__white">
						-
					</div>
				</div>
			</div>

			<div class="card-thumbnail">
				<div class="card-thumbnail-infos">
					<div class="card-thumbnail-position fc__white">
						탈삼진
					</div>
					<hr>
					<div class="card-thumbnail-content fc__white">
						69
					</div>
				</div>
			</div>
		</div>
		<!-- 카드 끝  -->

		<!-- 상세 프로필 -->
		<div class="player-profile  card__lblue ">
			<table class="player-profile-detail">
				<tr>
					<th>생년월일</th>
					<td>1988년 03월 01일</td>
					<th rowspan="7">경력사항</th>
					<td rowspan="7">
						<pre>
2007 KIA타이거즈
2021 텍사스 레인저스
2022 KIA 타이거즈

"2010 아시안게임 국가대표
2017 WBC 국가대표
2014, 2017 최동원상 수상
2017 KBO리그 정규시즌 다승왕(20승)
2017 KBO리그 정규시즌 MVP
2017 KBO 한국시리즈 MVP
2017 KBO 골든글러브 수상
2018 아시안게임 국가대표"
						</pre>
					</td>
				</tr>
				<tr>
					<th>신장/체중</th>
					<td>183cm / 91kg</td>
				</tr>
				<tr>
					<th>투타</th>
					<td>좌투좌타</td>
				</tr>
				<tr>
					<th>출신학교</th>
					<td>학강초-광주동성중-광주동성고-KIA-텍사스</td>
				</tr>
				<tr>
					<th>프로입단</th>
					<td>2007년</td>
				</tr>
				<tr>
					<th>연봉</th>
					<td>50,000만원</td>
				</tr>
				<tr>
					<th>입대/제대</th>
					<td>-</td>
				</tr>
			</table>
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
		<div class="pitching-records card__lblue">
				<table class="pitching-records-table">
					<thead>
						<tr class="pitching-records-table-title">
							<th  colspan="12">통산기록</th>
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
		<div class="pitching-records card__lblue">
			<table class="pitching-records-table">
				<thead>
					<tr class="pitching-records-table-title">
						<th  colspan="12">상세기록</th>
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
		<div class="pitching-records card__lblue">
			<table class="pitching-records-table">
				<thead>
					<tr class="pitching-records-table-title">
						<th  colspan="12">투수기록</th>
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
		<div class="pitching-records card__lblue">
			<table class="pitching-records-table">
				<thead>
					<tr class="pitching-records-table-title">
						<th  colspan="12">컨디션기록</th>
					</tr>
					
				</thead>
				<tbody>
				</tbody>
			</table>
		</div>

		<!-- 응원 댓글 -->
		<div class="player-comment card__lblue">
			<div class="player-comment-content">
				<div class="title">응원댓글</div>
				<div class="former-comment">
					
				<section class="reply-area">
					<div id="community-data"></div>
				</section>
				
				<section class="page-area">
					<div id="community-pagination"></div>
				</section>
				
				<section class="input-area">
					<form>
						<textarea style="resize: none" placeholder="댓글을 입력해주세요."></textarea>
						<button>댓글</button>						
					</form>
				</section>
				
			</div>
		</div>
	</main>
	
</body>
</html>