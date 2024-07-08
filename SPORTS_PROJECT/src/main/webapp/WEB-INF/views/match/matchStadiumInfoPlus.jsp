<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<jsp:include page="/WEB-INF/views/layouts/header-dependencies.jsp" />
<link rel="stylesheet"
	href="${contextPath}/src/css/matchStadiumInfoPlus.css">
<script src="${contextPath}/src/js/matchStadiumInfoPlus.js" defer></script>

<title>Match Result Plus</title>
</head>

<body>
	<jsp:include page="/WEB-INF/views/layouts/header.jsp" />
	<main>
		<div class=cardBackground>
			<div class="matchPlaceEnroll card__lblue ">
				<div class="matchPlaceEnroll">
					<div class="matchPlaceEnroll_Top">
						<div>경기장 등록</div>
					</div>
					<div class="matchPlaceEnroll_Mid">
						<div class="matchPlaceBox">
							<div class="matchPlaceName">
								<div>경기장 이름</div>
							</div>
							<div class="matchPlaceDetail">
								<input type="text">
							</div>
						</div>
						<div class="maxPeopleBox">
							<div class="maxPeople">
								<div>최대 수용 인원</div>
							</div>
							<div class="maxPeopleDetail">
								<input type="text">
							</div>
						</div>
						<div class="placeWidthBox">
							<div class="placeWidth">
								<div>경기장 면적</div>
							</div>
							<div class="placeWidthDetail">
								<input type="text">
							</div>
						</div>
						<div class="matchPlaceImageBox">
							<div class="matchPlaceImage">
								<div>경기장 이미지</div>
							</div>
							<div class="matchPlaceImageDetail">
								<input type="text">
								<div class="buttons">
									<button onclick="addRow()">+</button>
									<button onclick="removeRow()">-</button>
								</div>
							</div>
						</div>
						<div class="matchPlaceSeatBox">
							<div class="matchPlaceSeat">
								<div>경기장 좌석 이미지</div>
							</div>
							<div class="matchPlaceSeatDetail">
								<input type="text">
								<div class="buttons">
									<button onclick="addRow()">+</button>
									<button onclick="removeRow()">-</button>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>

	</main>
	<jsp:include page="/WEB-INF/views/layouts/footer.jsp" />
</body>

</html>