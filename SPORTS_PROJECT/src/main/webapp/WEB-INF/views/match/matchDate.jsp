<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<jsp:include page="/WEB-INF/views/layouts/header-dependencies.jsp" />
<link rel="stylesheet" href="${contextPath}/src/css/matchDate.css">
<script src="${contextPath}/src/js/matchDate.js" defer></script>

<title>Match Date</title>
</head>

<body>
	<jsp:include page="/WEB-INF/views/layouts/header.jsp" />
	<main>
		<div class="matchDate_Top fc__dblue">
			<div class="navigation">
				<button onclick="changeDate(-1)">&lt;</button> 
				<span id="currentDate"></span>
				<button onclick="changeDate(1)">&gt;</button>
			</div>
			<div class="days">
				<button onclick="showSchedule('Mon')">월</button>
				<button onclick="showSchedule('Tues')">화</button>
				<button onclick="showSchedule('Wedn')">수</button>
				<button onclick="showSchedule('Thur')">목</button>
				<button onclick="showSchedule('Fri')">금</button>
				<button onclick="showSchedule('Sat')">토</button>
				<button onclick="showSchedule('Sun')">일</button>
			</div>
		</div>
		<div class="game-records card__lblue">
			<div class="game_records">
				<div class="game_recordsTop">
					<div>경기 일정</div>
				</div>
				<div class="game_recordsTable">
					<table id="scheduleTable">
						<thead>
							<tr>
								<th>시간</th>
								<th>경기장 이름</th>
								<th>팀 이름</th>
								<th>팀 로고</th>
								<th>팀 점수</th>
								<th>경기 상태</th>
								<th>팀 점수</th>
								<th>팀 로고</th>
								<th>팀 이름</th>
								<th>리그 이름</th>
								<th>더보기</th>
							</tr>
						</thead>
						<tbody id ="Mon" class="schedule">
							<tr>
								<td>1:10</td>
								<td>트로피카나 월</td>
								<td>시애틀</td>
								<td><img src="/SPORTS_PROJECT/public/images/user_img1.jpg" alt="" width="40" height="40"></td>
								<td>5</td>
								<td>종료</td>
								<td>2</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>탬파베이</td>
								<td>아메리칸리그</td>
								<td><a href="#">상세</a></td>
							</tr>
							<tr>
								<td>2:10</td>
								<td>뉴욕 M</td>
								<td>어디인가</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>6</td>
								<td>종료</td>
								<td>2</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>디트로이트</td>
								<td>내셔널리그</td>
								<td><a href="#">상세</a></td>
							</tr>
							<tr>
								<td>3:10</td>
								<td>워싱턴</td>
								<td>안녕하세요</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>7</td>
								<td>종료</td>
								<td>4</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>미국국</td>
								<td>내셔널리그</td>
								<td><a href="#">상세</a></td>
							</tr>
								<tr>
								<td>1:10</td>
								<td>트로피카나</td>
								<td>시애틀</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>5</td>
								<td>종료</td>
								<td>2</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>탬파베이</td>
								<td>아메리칸리그</td>
								<td><a href="#">상세</a></td>
							</tr>
							<tr>
								<td>1:10</td>
								<td>트로피카나</td>
								<td>시애틀</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>5</td>
								<td>종료</td>
								<td>2</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>탬파베이</td>
								<td>아메리칸리그</td>
								<td><a href="#">상세</a></td>
							</tr>
							<tr>
								<td>1:10</td>
								<td>트로피카나</td>
								<td>시애틀</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>5</td>
								<td>종료</td>
								<td>2</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>탬파베이</td>
								<td>아메리칸리그</td>
								<td><a href="#">상세</a></td>
							</tr>
							<tr>
								<td>1:10</td>
								<td>트로피카나</td>
								<td>시애틀</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>5</td>
								<td>종료</td>
								<td>2</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>탬파베이</td>
								<td>아메리칸리그</td>
								<td><a href="#">상세</a></td>
							</tr>
							<tr>
								<td>1:10</td>
								<td>트로피카나</td>
								<td>시애틀</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>5</td>
								<td>종료</td>
								<td>2</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>탬파베이</td>
								<td>아메리칸리그</td>
								<td><a href="#">상세</a></td>
							</tr>
							<tr>
								<td>1:10</td>
								<td>트로피카나</td>
								<td>시애틀</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>5</td>
								<td>종료</td>
								<td>2</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>탬파베이</td>
								<td>아메리칸리그</td>
								<td><a href="#">상세</a></td>
							</tr>
							<tr>
								<td>1:10</td>
								<td>트로피카나</td>
								<td>시애틀</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>5</td>
								<td>종료</td>
								<td>2</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>탬파베이</td>
								<td>아메리칸리그</td>
								<td><a href="#">상세</a></td>
							</tr>
						</tbody>
						<tbody id ="Tues" class="schedule hidden">
							<tr>
								<td>1:10</td>
								<td>트로피카나 화</td>
								<td>시애틀</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>5</td>
								<td>종료</td>
								<td>2</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>탬파베이</td>
								<td>아메리칸리그</td>
								<td><a href="#">상세</a></td>
							</tr>
							<tr>
								<td>2:10</td>
								<td>뉴욕 M</td>
								<td>어디인가</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>6</td>
								<td>종료</td>
								<td>2</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>디트로이트</td>
								<td>내셔널리그</td>
								<td><a href="#">상세</a></td>
							</tr>
							<tr>
								<td>3:10</td>
								<td>워싱턴</td>
								<td>안녕하세요</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>7</td>
								<td>종료</td>
								<td>4</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>미국국</td>
								<td>내셔널리그</td>
								<td><a href="#">상세</a></td>
							</tr>
								<tr>
								<td>1:10</td>
								<td>트로피카나</td>
								<td>시애틀</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>5</td>
								<td>종료</td>
								<td>2</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>탬파베이</td>
								<td>아메리칸리그</td>
								<td><a href="#">상세</a></td>
							</tr>
							<tr>
								<td>1:10</td>
								<td>트로피카나</td>
								<td>시애틀</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>5</td>
								<td>종료</td>
								<td>2</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>탬파베이</td>
								<td>아메리칸리그</td>
								<td><a href="#">상세</a></td>
							</tr>
							<tr>
								<td>1:10</td>
								<td>트로피카나</td>
								<td>시애틀</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>5</td>
								<td>종료</td>
								<td>2</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>탬파베이</td>
								<td>아메리칸리그</td>
								<td><a href="#">상세</a></td>
							</tr>
							<tr>
								<td>1:10</td>
								<td>트로피카나</td>
								<td>시애틀</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>5</td>
								<td>종료</td>
								<td>2</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>탬파베이</td>
								<td>아메리칸리그</td>
								<td><a href="#">상세</a></td>
							</tr>
							<tr>
								<td>1:10</td>
								<td>트로피카나</td>
								<td>시애틀</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>5</td>
								<td>종료</td>
								<td>2</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>탬파베이</td>
								<td>아메리칸리그</td>
								<td><a href="#">상세</a></td>
							</tr>
							<tr>
								<td>1:10</td>
								<td>트로피카나</td>
								<td>시애틀</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>5</td>
								<td>종료</td>
								<td>2</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>탬파베이</td>
								<td>아메리칸리그</td>
								<td><a href="#">상세</a></td>
							</tr>
							<tr>
								<td>1:10</td>
								<td>트로피카나</td>
								<td>시애틀</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>5</td>
								<td>종료</td>
								<td>2</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>탬파베이</td>
								<td>아메리칸리그</td>
								<td><a href="#">상세</a></td>
							</tr>
						</tbody>
						<tbody id ="Wedn" class="schedule hidden">
							<tr>
								<td>1:10</td>
								<td>트로피카나 수</td>
								<td>시애틀</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>5</td>
								<td>종료</td>
								<td>2</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>탬파베이</td>
								<td>아메리칸리그</td>
								<td><a href="#">상세</a></td>
							</tr>
							<tr>
								<td>2:10</td>
								<td>뉴욕 M</td>
								<td>어디인가</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>6</td>
								<td>종료</td>
								<td>2</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>디트로이트</td>
								<td>내셔널리그</td>
								<td><a href="#">상세</a></td>
							</tr>
							<tr>
								<td>3:10</td>
								<td>워싱턴</td>
								<td>안녕하세요</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>7</td>
								<td>종료</td>
								<td>4</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>미국국</td>
								<td>내셔널리그</td>
								<td><a href="#">상세</a></td>
							</tr>
								<tr>
								<td>1:10</td>
								<td>트로피카나</td>
								<td>시애틀</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>5</td>
								<td>종료</td>
								<td>2</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>탬파베이</td>
								<td>아메리칸리그</td>
								<td><a href="#">상세</a></td>
							</tr>
							<tr>
								<td>1:10</td>
								<td>트로피카나</td>
								<td>시애틀</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>5</td>
								<td>종료</td>
								<td>2</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>탬파베이</td>
								<td>아메리칸리그</td>
								<td><a href="#">상세</a></td>
							</tr>
							<tr>
								<td>1:10</td>
								<td>트로피카나</td>
								<td>시애틀</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>5</td>
								<td>종료</td>
								<td>2</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>탬파베이</td>
								<td>아메리칸리그</td>
								<td><a href="#">상세</a></td>
							</tr>
							<tr>
								<td>1:10</td>
								<td>트로피카나</td>
								<td>시애틀</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>5</td>
								<td>종료</td>
								<td>2</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>탬파베이</td>
								<td>아메리칸리그</td>
								<td><a href="#">상세</a></td>
							</tr>
							<tr>
								<td>1:10</td>
								<td>트로피카나</td>
								<td>시애틀</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>5</td>
								<td>종료</td>
								<td>2</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>탬파베이</td>
								<td>아메리칸리그</td>
								<td><a href="#">상세</a></td>
							</tr>
							<tr>
								<td>1:10</td>
								<td>트로피카나</td>
								<td>시애틀</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>5</td>
								<td>종료</td>
								<td>2</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>탬파베이</td>
								<td>아메리칸리그</td>
								<td><a href="#">상세</a></td>
							</tr>
							<tr>
								<td>1:10</td>
								<td>트로피카나</td>
								<td>시애틀</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>5</td>
								<td>종료</td>
								<td>2</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>탬파베이</td>
								<td>아메리칸리그</td>
								<td><a href="#">상세</a></td>
							</tr>
						</tbody>
						<tbody id ="Thur" class="schedule hidden">
							<tr>
								<td>1:10</td>
								<td>트로피카나 목</td>
								<td>시애틀</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>5</td>
								<td>종료</td>
								<td>2</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>탬파베이</td>
								<td>아메리칸리그</td>
								<td><a href="#">상세</a></td>
							</tr>
							<tr>
								<td>2:10</td>
								<td>뉴욕 M</td>
								<td>어디인가</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>6</td>
								<td>종료</td>
								<td>2</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>디트로이트</td>
								<td>내셔널리그</td>
								<td><a href="#">상세</a></td>
							</tr>
							<tr>
								<td>3:10</td>
								<td>워싱턴</td>
								<td>안녕하세요</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>7</td>
								<td>종료</td>
								<td>4</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>미국국</td>
								<td>내셔널리그</td>
								<td><a href="#">상세</a></td>
							</tr>
								<tr>
								<td>1:10</td>
								<td>트로피카나</td>
								<td>시애틀</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>5</td>
								<td>종료</td>
								<td>2</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>탬파베이</td>
								<td>아메리칸리그</td>
								<td><a href="#">상세</a></td>
							</tr>
							<tr>
								<td>1:10</td>
								<td>트로피카나</td>
								<td>시애틀</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>5</td>
								<td>종료</td>
								<td>2</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>탬파베이</td>
								<td>아메리칸리그</td>
								<td><a href="#">상세</a></td>
							</tr>
							<tr>
								<td>1:10</td>
								<td>트로피카나</td>
								<td>시애틀</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>5</td>
								<td>종료</td>
								<td>2</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>탬파베이</td>
								<td>아메리칸리그</td>
								<td><a href="#">상세</a></td>
							</tr>
							<tr>
								<td>1:10</td>
								<td>트로피카나</td>
								<td>시애틀</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>5</td>
								<td>종료</td>
								<td>2</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>탬파베이</td>
								<td>아메리칸리그</td>
								<td><a href="#">상세</a></td>
							</tr>
							<tr>
								<td>1:10</td>
								<td>트로피카나</td>
								<td>시애틀</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>5</td>
								<td>종료</td>
								<td>2</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>탬파베이</td>
								<td>아메리칸리그</td>
								<td><a href="#">상세</a></td>
							</tr>
							<tr>
								<td>1:10</td>
								<td>트로피카나</td>
								<td>시애틀</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>5</td>
								<td>종료</td>
								<td>2</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>탬파베이</td>
								<td>아메리칸리그</td>
								<td><a href="#">상세</a></td>
							</tr>
							<tr>
								<td>1:10</td>
								<td>트로피카나</td>
								<td>시애틀</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>5</td>
								<td>종료</td>
								<td>2</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>탬파베이</td>
								<td>아메리칸리그</td>
								<td><a href="#">상세</a></td>
							</tr>
						</tbody>
						<tbody id ="Fri" class="schedule hidden">
							<tr>
								<td>1:10</td>
								<td>트로피카나 금</td>
								<td>시애틀</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>5</td>
								<td>종료</td>
								<td>2</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>탬파베이</td>
								<td>아메리칸리그</td>
								<td><a href="#">상세</a></td>
							</tr>
							<tr>
								<td>2:10</td>
								<td>뉴욕 M</td>
								<td>어디인가</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>6</td>
								<td>종료</td>
								<td>2</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>디트로이트</td>
								<td>내셔널리그</td>
								<td><a href="#">상세</a></td>
							</tr>
							<tr>
								<td>3:10</td>
								<td>워싱턴</td>
								<td>안녕하세요</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>7</td>
								<td>종료</td>
								<td>4</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>미국국</td>
								<td>내셔널리그</td>
								<td><a href="#">상세</a></td>
							</tr>
								<tr>
								<td>1:10</td>
								<td>트로피카나</td>
								<td>시애틀</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>5</td>
								<td>종료</td>
								<td>2</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>탬파베이</td>
								<td>아메리칸리그</td>
								<td><a href="#">상세</a></td>
							</tr>
							<tr>
								<td>1:10</td>
								<td>트로피카나</td>
								<td>시애틀</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>5</td>
								<td>종료</td>
								<td>2</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>탬파베이</td>
								<td>아메리칸리그</td>
								<td><a href="#">상세</a></td>
							</tr>
							<tr>
								<td>1:10</td>
								<td>트로피카나</td>
								<td>시애틀</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>5</td>
								<td>종료</td>
								<td>2</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>탬파베이</td>
								<td>아메리칸리그</td>
								<td><a href="#">상세</a></td>
							</tr>
							<tr>
								<td>1:10</td>
								<td>트로피카나</td>
								<td>시애틀</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>5</td>
								<td>종료</td>
								<td>2</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>탬파베이</td>
								<td>아메리칸리그</td>
								<td><a href="#">상세</a></td>
							</tr>
							<tr>
								<td>1:10</td>
								<td>트로피카나</td>
								<td>시애틀</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>5</td>
								<td>종료</td>
								<td>2</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>탬파베이</td>
								<td>아메리칸리그</td>
								<td><a href="#">상세</a></td>
							</tr>
							<tr>
								<td>1:10</td>
								<td>트로피카나</td>
								<td>시애틀</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>5</td>
								<td>종료</td>
								<td>2</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>탬파베이</td>
								<td>아메리칸리그</td>
								<td><a href="#">상세</a></td>
							</tr>
							<tr>
								<td>1:10</td>
								<td>트로피카나</td>
								<td>시애틀</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>5</td>
								<td>종료</td>
								<td>2</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>탬파베이</td>
								<td>아메리칸리그</td>
								<td><a href="#">상세</a></td>
							</tr>
						</tbody>
						<tbody id ="Sat" class="schedule hidden">
							<tr>
								<td>1:10</td>
								<td>트로피카나 토</td>
								<td>시애틀</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>5</td>
								<td>종료</td>
								<td>2</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>탬파베이</td>
								<td>아메리칸리그</td>
								<td><a href="#">상세</a></td>
							</tr>
							<tr>
								<td>2:10</td>
								<td>뉴욕 M</td>
								<td>어디인가</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>6</td>
								<td>종료</td>
								<td>2</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>디트로이트</td>
								<td>내셔널리그</td>
								<td><a href="#">상세</a></td>
							</tr>
							<tr>
								<td>3:10</td>
								<td>워싱턴</td>
								<td>안녕하세요</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>7</td>
								<td>종료</td>
								<td>4</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>미국국</td>
								<td>내셔널리그</td>
								<td><a href="#">상세</a></td>
							</tr>
								<tr>
								<td>1:10</td>
								<td>트로피카나</td>
								<td>시애틀</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>5</td>
								<td>종료</td>
								<td>2</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>탬파베이</td>
								<td>아메리칸리그</td>
								<td><a href="#">상세</a></td>
							</tr>
							<tr>
								<td>1:10</td>
								<td>트로피카나</td>
								<td>시애틀</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>5</td>
								<td>종료</td>
								<td>2</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>탬파베이</td>
								<td>아메리칸리그</td>
								<td><a href="#">상세</a></td>
							</tr>
							<tr>
								<td>1:10</td>
								<td>트로피카나</td>
								<td>시애틀</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>5</td>
								<td>종료</td>
								<td>2</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>탬파베이</td>
								<td>아메리칸리그</td>
								<td><a href="#">상세</a></td>
							</tr>
							<tr>
								<td>1:10</td>
								<td>트로피카나</td>
								<td>시애틀</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>5</td>
								<td>종료</td>
								<td>2</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>탬파베이</td>
								<td>아메리칸리그</td>
								<td><a href="#">상세</a></td>
							</tr>
							<tr>
								<td>1:10</td>
								<td>트로피카나</td>
								<td>시애틀</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>5</td>
								<td>종료</td>
								<td>2</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>탬파베이</td>
								<td>아메리칸리그</td>
								<td><a href="#">상세</a></td>
							</tr>
							<tr>
								<td>1:10</td>
								<td>트로피카나</td>
								<td>시애틀</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>5</td>
								<td>종료</td>
								<td>2</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>탬파베이</td>
								<td>아메리칸리그</td>
								<td><a href="#">상세</a></td>
							</tr>
							<tr>
								<td>1:10</td>
								<td>트로피카나</td>
								<td>시애틀</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>5</td>
								<td>종료</td>
								<td>2</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>탬파베이</td>
								<td>아메리칸리그</td>
								<td><a href="#">상세</a></td>
							</tr>
						</tbody>
						<tbody id ="Sun" class="schedule hidden">
							<tr>
								<td>1:10</td>
								<td>트로피카나 일</td>
								<td>시애틀</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>5</td>
								<td>종료</td>
								<td>2</td>
								<td><img src="" alt="" width="20" height="20"></td>
								<td>탬파베이</td>
								<td>아메리칸리그</td>
								<td><a href="#">상세</a></td>
							</tr>
						
						</tbody>
						
					</table>
				</div>
				
			</div>
		</div>
	</main>
	<jsp:include page="/WEB-INF/views/layouts/footer.jsp" />
</body>

</html>