<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="${contextPath}/src/css/teamPlayers.css">
    <script src="${contextPath}/src/css/teams.js" defer></script>
    <title>TeamPlayers</title>
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
	<main>
		<!-- 플레이어 시작 -->
		<div class="team-players">
			<table class="team-table">
				<tr >
					<td>
						<div class="card-thumbnail">
							<img class="card-thumbnail-img"
								src="${contextPath}/public/images/news_example.jpg">
							<div class="card-thumbnail-infos">
								<div class="card-thumbnail-position ml-10">
									<p class="fs-12 fc__white">투수</p>
								</div>
								<div class="card-thumbnail-content fs-20">
									<a href="#" class="fs-20 fc__white">99 류현진</a>
								</div>
							</div>
						</div>	
					</td>
					<td>
						<div class="card-thumbnail">
							<img class="card-thumbnail-img"
								src="${contextPath}/public/images/news_example.jpg">
							<div class="card-thumbnail-infos">
								<div class="card-thumbnail-position ml-10">
									<p class="fs-12 fc__white">투수</p>
								</div>
								<div class="card-thumbnail-content fs-20">
									<a href="#" class="fs-20 fc__white">99 류현진</a>
								</div>
							</div>
						</div>	
					</td>
					
					<td>
						<div class="card-thumbnail">
							<img class="card-thumbnail-img"
								src="${contextPath}/public/images/news_example.jpg">
							<div class="card-thumbnail-infos">
								<div class="card-thumbnail-position ml-10">
									<p class="fs-12 fc__white">투수</p>
								</div>
								<div class="card-thumbnail-content fs-20">
									<a href="#" class="fs-20 fc__white">99 류현진</a>
								</div>
							</div>
						</div>	
					</td>
					
					<td>
						<div class="card-thumbnail">
							<img class="card-thumbnail-img"
								src="${contextPath}/public/images/news_example.jpg">
							<div class="card-thumbnail-infos">
								<div class="card-thumbnail-position ml-10">
									<p class="fs-12 fc__white">투수</p>
								</div>
								<div class="card-thumbnail-content fs-20">
									<a href="#" class="fs-20 fc__white">99 류현진</a>
								</div>
							</div>
						</div>	
					</td>
			  </tr>
			  
			  <tr>
			  	<td>
			  		<div class="card-thumbnail">
						<img class="card-thumbnail-img"
							src="${contextPath}/public/images/news_example.jpg">
						<div class="card-thumbnail-infos">
							<div class="card-thumbnail-position ml-10">
								<p class="fs-12 fc__white">투수</p>
							</div>
							<div class="card-thumbnail-content fs-20">
								<a href="#" class="fs-20 fc__white">99 류현진</a>
							</div>
						</div>
					</div>	
			  	</td>
			  
			  	<td>
			  		<div class="card-thumbnail">
						<img class="card-thumbnail-img"
							src="${contextPath}/public/images/news_example.jpg">
						<div class="card-thumbnail-infos">
							<div class="card-thumbnail-position ml-10">
								<p class="fs-12 fc__white">투수</p>
							</div>
							<div class="card-thumbnail-content fs-20">
								<a href="#" class="fs-20 fc__white">99 류현진</a>
							</div>
						</div>
					</div>	
			  	</td>
			  	
			  	<td>
			  		<div class="card-thumbnail">
						<img class="card-thumbnail-img"
							src="${contextPath}/public/images/news_example.jpg">
						<div class="card-thumbnail-infos">
							<div class="card-thumbnail-position ml-10">
								<p class="fs-12 fc__white">투수</p>
							</div>
							<div class="card-thumbnail-content fs-20">
								<a href="#" class="fs-20 fc__white">99 류현진</a>
							</div>
						</div>
					</div>	
			  	</td>
			  	
			  	<td>
			  		<div class="card-thumbnail">
						<img class="card-thumbnail-img"
							src="${contextPath}/public/images/news_example.jpg">
						<div class="card-thumbnail-infos">
							<div class="card-thumbnail-position ml-10">
								<p class="fs-12 fc__white">투수</p>
							</div>
							<div class="card-thumbnail-content fs-20">
								<a href="#" class="fs-20 fc__white">99 류현진</a>
							</div>
						</div>
					</div>	
			  	</td>
			  </tr>
			  
			  <tr>
			  	<td>
			  		<div class="card-thumbnail">
						<img class="card-thumbnail-img"
							src="${contextPath}/public/images/news_example.jpg">
						<div class="card-thumbnail-infos">
							<div class="card-thumbnail-position ml-10">
								<p class="fs-12 fc__white">투수</p>
							</div>
							<div class="card-thumbnail-content fs-20">
								<a href="#" class="fs-20 fc__white">99 류현진</a>
							</div>
						</div>
					</div>	
			  	</td>
			  </tr>
			  
		</table>
	</div>
	
	</main>
	<jsp:include page="/WEB-INF/views/layouts/footer.jsp"/>
</body>
</html>