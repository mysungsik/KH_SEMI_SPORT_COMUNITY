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
			<div class="game_recordsBox">
				<div class="game_recordsTop base__mblue">
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
						<tbody id="Mon" class="schedule"></tbody>
						<tbody id="Tues" class="schedule hidden"></tbody>
						<tbody id="Wedn" class="schedule hidden"></tbody>
						<tbody id="Thur" class="schedule hidden"></tbody>
						<tbody id="Fri" class="schedule hidden"></tbody>
						<tbody id="Sat" class="schedule hidden"></tbody>
						<tbody id="Sun" class="schedule hidden"></tbody>
					</table>
				</div>
			</div>
		</div>
	</main>
	<jsp:include page="/WEB-INF/views/layouts/footer.jsp" />
</body>
</html>
