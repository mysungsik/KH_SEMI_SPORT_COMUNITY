<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="${contextPath}/src/css/teamInfo.css">
    <script src="${contextPath}/src/css/teams.js" defer></script>
    <title>TeamsInfo</title>
    <script src="https://kit.fontawesome.com/cb5f1fee4d.js" crossorigin="anonymous"></script>
</head>
<body>
	<jsp:include page="/WEB-INF/views/layouts/header-teams.jsp"/>
	<!-- 페이지 커버 -->
	<div class="pagecover">
		<div class="pagecover-img">
			<div class="fc__white fs-28__b">구단 소개</div>
			
			<div class="fc__white">
				<i class="fa-solid fa-house"></i>
				 > BLUE JAYS > 구단 소개
			</div>
			
		</div>
		<!-- 소개띠 -->
		<div class="pagecover-bottom">
			<div class="pagecover-bottom-inner d-flex">
				<div class="fc__white fs-20 team-name mt-10">BLUE JAYS</div>
			</div>
		</div>
		<!-- 소개띠 끝 -->
	</div>
	<!-- 페이지 커버 끝 -->
	
	<!-- 메인 -->
	<main>
		<div class="container team-video mt-20 mb-20">
			<video class="main-video" autoplay muted loop>
				<source src="${contextPath }/public/video/backgroundVideo.mp4"
					id=backgroundVideo>
			</video>
		</div>
		<hr>
		<div class="container team-story mt-20 mb-20 d-flex">
			<p class="fs-28__b mb-10">OUR STORY</p>
			<p class="fs-14">When the sun goes down, the city comes alive and is illuminated by a myriad of lights, from bustling bars, to lively restaurants and towering skyscrapers. ​ The Blue Jays City Connect uniform enters night mode, with a vibrant, dynamic blue and pop of Canadiana red that moves with rhythmic energy and illuminates the Toronto skyline as it reflects on the pitch blue of Lake Ontario. ​ Every detail of the uniform, from the sharp lines to the bold colours, is a tribute to Toronto’s nightlife, capturing its spirit of adventure, its passion for sports and its unwavering love for the city’s unique culture. ​ At the centre of the skyline are the CN Tower and Rogers Centre that are beacons in the night sky calling us home.</p>
		</div>
		<hr>
		<div class="container team-ci mt-20 mb-20 d-flex">
			<p class="fs-28__b mb-10">BLUE JAYS CI</p>
			<div class="team-ci-content d-flex">
				<div>
					<p class="fs-14">The Blue Jays City Connect uniform enters night mode, with a vibrant, dynamic blue and pop of Canadiana red that moves with rhythmic energy and illuminates the Toronto skyline as it reflects on the pitch blue of Lake Ontario. ​ Every detail of the uniform, from the sharp lines to the bold colours, is a tribute to Toronto’s nightlife, capturing its spirit of adventure, its passion for sports and its unwavering love for the city’s unique culture. ​ At the centre of the skyline are the CN Tower and Rogers Centre that are beacons in the night sky calling us home.</p>
				</div>
				<div class="team-ci-content-img">
					<img alt="" src="${contextPath }/public/images/user_img1.jpg">
				</div>
			</div>
		</div>
		<hr>
		<div class="container team-logo mt-20 d-flex">
			<p class="fs-28__b mb-10">BLUE JAYS LOGO</p>
			<div class="team-logo-content d-flex">
				<div>
					<p class="fs-14">The Blue Jays City Connect uniform enters night mode, with a vibrant, dynamic blue and pop of Canadiana red that moves with rhythmic energy and illuminates the Toronto skyline as it reflects on the pitch blue of Lake Ontario. ​ Every detail of the uniform, from the sharp lines to the bold colours, is a tribute to Toronto’s nightlife, capturing its spirit of adventure, its passion for sports and its unwavering love for the city’s unique culture. ​ At the centre of the skyline are the CN Tower and Rogers Centre that are beacons in the night sky calling us home.</p>
				</div>
				<div class="team-logo-content-img">
					<img alt="" src="${contextPath }/public/images/user_img1.jpg">
				</div>
			</div>
		</div>
	</main>
	
	<jsp:include page="/WEB-INF/views/layouts/footer.jsp"/>
</body>
</html>