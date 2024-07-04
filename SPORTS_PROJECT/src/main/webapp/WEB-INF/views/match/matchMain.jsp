<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<title>matchMain</title>
<link rel="stylesheet" href="${contextPath}/src/css/matchMain.css">
<script src="${contextPath}/matchResult.js" defer></script>
</head>

<body>
	<jsp:include page="/WEB-INF/views/layouts/header.jsp" />
	<main>
		<div class="main">
			<div class="main-top">
				<div class="main-top-bar">
					<p>MLB 순위</p>
					<div class="more">
						<a href="${contextPath}/match/teamRanking">더보기</a>
					</div>
				</div>
				<div class="ranking-tab">
					<div>
						<span>AL</span> <a href=""> 동부 </a> <a href=""> 중부 </a> <a href="">
							서부 </a>
					</div>
					<div>
						<span>NL</span> <a href=""> 동부 </a> <a href=""> 중부 </a> <a href="">
							서부 </a>
					</div>
				</div>
				<div>
					<table class="teamRanking">
						<tr>
							<th></th>
							<th>팀명</th>
							<th>경기</th>
							<th>승</th>
							<th>패</th>
							<th>게임차</th>
						</tr>
						<tr>
							<td>1</td>
							<td>뉴욕 Y</td>
							<td>81</td>
							<td>52</td>
							<td>29</td>
							<td>-</td>
						</tr>
						<tr>
							<td>2</td>
							<td>볼티모어</td>
							<td>79</td>
							<td>49</td>
							<td>30</td>
							<td>2</td>
						</tr>
						<tr>
							<td>3</td>
							<td>보스턴</td>
							<td>80</td>
							<td>43</td>
							<td>37</td>
							<td>8.5</td>
						</tr>
						<tr>
							<td>4</td>
							<td>탬파베이</td>
							<td>80</td>
							<td>40</td>
							<td>40</td>
							<td>11.5</td>
						</tr>
						<tr>
							<td>5</td>
							<td>토론토</td>
							<td>79</td>
							<td>36</td>
							<td>43</td>
							<td>15</td>
						</tr>
					</table>
				</div>
			</div>
			<div>
				<a href="${contextPath}/match/matchResult">경기결과</a>
			</div>
			<div class="matchschedule">
				<video class="main-video" autoplay muted loop>
					<source src="/SPORTS_PROJECT/public/video/backgroundVideo.mp4"
						id=backgroundVideo>
				</video>
				<div class="videoText">
					<p>경기 일정</p>
				</div>
			</div>
			<div class="player-ranking">
				<div class="player-ranking-top">
					<p>선수 순위</p>
				</div>
				<div class=player_record>
					<div class="box-ranking">
						<strong class="rankingCategory">다승</strong>
						<div class="profileImage">
							<img src="/SPORTS_PROJECT/public/images/user_img1.jpg" alt="#"
								id="playerImage">
						</div>
						<ol class="list_ranking">
							<li><span>1 헤이수스(키움)</span> <span class="count">10승</span></li>
							<li><span>2 엔스(LG)</span> <span class="count">9승</span></li>
							<li><span>3 원커슨(롯데)</span> <span class="count">8승</span></li>
							<li><span>4 후라도(키움)</span> <span class="count">7승</span></li>
							<li><span>5 네일(KIA)</span> <span class="count">6승</span></li>
						</ol>
					</div>
					<div class="box-ranking">
						<strong class="rankingCategory">평균자책</strong>
						<div class="profileImage">
							<img src="/SPORTS_PROJECT/public/images/user_img1.jpg" alt="#"
								id="playerImage">
						</div>
						<ol class="list_ranking">
							<li>네일(KIA)</li>
							<li>하트(NC)</li>
							<li>원태인(삼성)</li>
							<li>후라도(키움)</li>
							<li>헤이수스(키움)</li>
						</ol>
					</div>
					<div class="box-ranking">
						<strong class="rankingCategory">탈삼진</strong>
						<div class="profileImage">
							<img src="/SPORTS_PROJECT/public/images/user_img1.jpg" alt="#"
								id="playerImage">
						</div>
						<ol class="list_ranking">
							<li>하트(NC)</li>
							<li>네일(KIA)</li>
							<li>코너(삼성)</li>
							<li>엄상백(KT)</li>
							<li>쿠에바스(KT)</li>
						</ol>
					</div>
					<div class="box-ranking">
						<strong class="rankingCategory">세이브</strong>
						<div class="profileImage">
							<img src="/SPORTS_PROJECT/public/images/user_img1.jpg" alt="#"
								id="playerImage">
						</div>
						<ol class="list_ranking">
							<li>오승환(삼성)</li>
							<li>정해영(KIA)</li>
							<li>문승원(SSG)</li>
							<li>유영찬(LG)</li>
							<li>김원중(롯데)</li>
						</ol>
					</div>
					<div class="box-ranking">
						<strong class="rankingCategory">WHIP</strong>
						<div class="profileImage">
							<img src="/SPORTS_PROJECT/public/images/user_img1.jpg" alt="#"
								id="playerImage">
						</div>
						<ol class="list_ranking">
							<li>월커슨(롯데)</li>
							<li>하트(NC)</li>
							<li>헤이수스(키움)</li>
							<li>네일(KIA)</li>
							<li>쿠에바스(KT)</li>
						</ol>
					</div>
				</div>
			</div>
		</div>



	</main>
	<jsp:include page="/WEB-INF/views/layouts/footer.jsp" />
</body>


</html>