<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

<link rel="stylesheet"
	href="${contextPath}/src/css/matchTeamRanking.css">
<jsp:include page="/WEB-INF/views/layouts/header-dependencies.jsp" />
<script src="${contextPath}/matchResult.js" defer></script>
<title>TeamRanking</title>
</head>
<body>
	<jsp:include page="/WEB-INF/views/layouts/header.jsp" />
	<main>
		<div class="recordTab">
			<div>
				<span>KBO 팀 순위</span>
			</div>
		</div>
		<div class="game-records card__lblue">
			<div class="teamRankingTop fs-20">팀 순위</div>
			<hr class="hr__gray mt-10 mb-16">
			<table class="eastRanking">
				<tr class="rankingTop">
					<th class="regionName fs-14__b">순위</th>
					<th class="teamName fs-14__b ">팀 이름</th>
					<th class="matchCount fs-14__b ">경기 수</th>
					<th class="matchWin fs-14__b ">승</th>
					<th class="matchLose fs-14__b ">패</th>
					<th class="winRate fs-14__b ">승률</th>
					<th class="gameBehind fs-14__b ">게임 차</th>
					<th class="consequence fs-14__b ">연속</th>
					<th class="battingAverage fs-14__b ">타율</th>
					<th class="ERA fs-14__b ">평균 자책</th>
					<th class="recentMatch fs-14__b ">최근 10 경기</th>
				</tr>
				<tr>
					<td>1</td>
					<td>
						<div class="teamNameTab">
							<div>
								<img src="/SPORTS_PROJECT/public/images/user_img1.jpg" alt=""
									width="40" height="40">
							</div>
							<div>
								<span>기아 타이거즈</span>
							</div>
						</div>
					</td>
					<td>66</td>
					<td>46</td>
					<td>20</td>
					<td>0.697</td>
					<td>-</td>
					<td>1승</td>
					<td>.254</td>
					<td>2.90</td>
					<td>8승 2패</td>
				</tr>
				<tr>
					<td>2</td>
					<td>
						<div class="teamNameTab">
							<div>
								<img src="/SPORTS_PROJECT/public/images/user_img1.jpg" alt=""
									width="40" height="40">
							</div>
							<div>
								<span>기아 타이거즈</span>
							</div>
						</div>
					</td>
					<td>66</td>
					<td>46</td>
					<td>20</td>
					<td>0.697</td>
					<td>-</td>
					<td>1승</td>
					<td>.254</td>
					<td>2.90</td>
					<td>8승 2패</td>
				</tr>
				<tr>
					<td>3</td>
					<td>
						<div class="teamNameTab">
							<div>
								<img src="/SPORTS_PROJECT/public/images/user_img1.jpg" alt=""
									width="40" height="40">
							</div>
							<div>
								<span>기아 타이거즈</span>
							</div>
						</div>
					</td>
					<td>66</td>
					<td>46</td>
					<td>20</td>
					<td>0.697</td>
					<td>-</td>
					<td>1승</td>
					<td>.254</td>
					<td>2.90</td>
					<td>8승 2패</td>
				</tr>
				<tr>
					<td>4</td>
					<td>
						<div class="teamNameTab">
							<div>
								<img src="/SPORTS_PROJECT/public/images/user_img1.jpg" alt=""
									width="40" height="40">
							</div>
							<div>
								<span>기아 타이거즈</span>
							</div>
						</div>
					</td>
					<td>66</td>
					<td>46</td>
					<td>20</td>
					<td>0.697</td>
					<td>-</td>
					<td>1승</td>
					<td>.254</td>
					<td>2.90</td>
					<td>8승 2패</td>
				</tr>
				<tr>
					<td>5</td>
					<td>
						<div class="teamNameTab">
							<div>
								<img src="/SPORTS_PROJECT/public/images/user_img1.jpg" alt=""
									width="40" height="40">
							</div>
							<div>
								<span>기아 타이거즈</span>
							</div>
						</div>
					</td>
					<td>66</td>
					<td>46</td>
					<td>20</td>
					<td>0.697</td>
					<td>-</td>
					<td>1승</td>
					<td>.254</td>
					<td>2.90</td>
					<td>8승 2패</td>
				</tr>
				<tr>
					<td>6</td>
					<td>
						<div class="teamNameTab">
							<div>
								<img src="/SPORTS_PROJECT/public/images/user_img1.jpg" alt=""
									width="40" height="40">
							</div>
							<div>
								<span>기아 타이거즈</span>
							</div>
						</div>
					</td>
					<td>66</td>
					<td>46</td>
					<td>20</td>
					<td>0.697</td>
					<td>-</td>
					<td>1승</td>
					<td>.254</td>
					<td>2.90</td>
					<td>8승 2패</td>
				</tr>

				<tr>
					<td>7</td>
					<td>
						<div class="teamNameTab">
							<div>
								<img src="/SPORTS_PROJECT/public/images/user_img1.jpg" alt=""
									width="40" height="40">
							</div>
							<div>
								<span>기아 타이거즈</span>
							</div>
						</div>
					</td>
					<td>66</td>
					<td>46</td>
					<td>20</td>
					<td>0.697</td>
					<td>-</td>
					<td>1승</td>
					<td>.254</td>
					<td>2.90</td>
					<td>8승 2패</td>
				</tr>
				<tr>
					<td>8</td>
					<td>
						<div class="teamNameTab">
							<div>
								<img src="/SPORTS_PROJECT/public/images/user_img1.jpg" alt=""
									width="40" height="40">
							</div>
							<div>
								<span>기아 타이거즈</span>
							</div>
						</div>
					</td>
					<td>66</td>
					<td>46</td>
					<td>20</td>
					<td>0.697</td>
					<td>-</td>
					<td>1승</td>
					<td>.254</td>
					<td>2.90</td>
					<td>8승 2패</td>
				</tr>

				<tr>
					<td>9</td>
					<td>
						<div class="teamNameTab">
							<div>
								<img src="/SPORTS_PROJECT/public/images/user_img1.jpg" alt=""
									width="40" height="40">
							</div>
							<div>
								<span>기아 타이거즈</span>
							</div>
						</div>
					</td>
					<td>66</td>
					<td>46</td>
					<td>20</td>
					<td>0.697</td>
					<td>-</td>
					<td>1승</td>
					<td>.254</td>
					<td>2.90</td>
					<td>8승 2패</td>
				</tr>

				<tr>
					<td>10</td>
					<td>
						<div class="teamNameTab">
							<div>
								<img src="/SPORTS_PROJECT/public/images/user_img1.jpg" alt=""
									width="40" height="40">
							</div>
							<div>
								<span>기아 타이거즈</span>
							</div>
						</div>
					</td>
					<td>66</td>
					<td>46</td>
					<td>20</td>
					<td>0.697</td>
					<td>-</td>
					<td>1승</td>
					<td>.254</td>
					<td>2.90</td>
					<td>8승 2패</td>
				</tr>

				<tr>
					<td>11</td>
					<td>
						<div class="teamNameTab">
							<div>
								<img src="/SPORTS_PROJECT/public/images/user_img1.jpg" alt=""
									width="40" height="40">
							</div>
							<div>
								<span>기아 타이거즈</span>
							</div>
						</div>
					</td>
					<td>66</td>
					<td>46</td>
					<td>20</td>
					<td>0.697</td>
					<td>-</td>
					<td>1승</td>
					<td>.254</td>
					<td>2.90</td>
					<td>8승 2패</td>
				</tr>

				<tr>
					<td>12</td>
					<td>
						<div class="teamNameTab">
							<div>
								<img src="/SPORTS_PROJECT/public/images/user_img1.jpg" alt=""
									width="40" height="40">
							</div>
							<div>
								<span>기아 타이거즈</span>
							</div>
						</div>
					</td>
					<td>66</td>
					<td>46</td>
					<td>20</td>
					<td>0.697</td>
					<td>-</td>
					<td>1승</td>
					<td>.254</td>
					<td>2.90</td>
					<td>8승 2패</td>
				</tr>

				<tr>
					<td>13</td>
					<td>
						<div class="teamNameTab">
							<div>
								<img src="/SPORTS_PROJECT/public/images/user_img1.jpg" alt=""
									width="40" height="40">
							</div>
							<div>
								<span>기아 타이거즈</span>
							</div>
						</div>
					</td>
					<td>66</td>
					<td>46</td>
					<td>20</td>
					<td>0.697</td>
					<td>-</td>
					<td>1승</td>
					<td>.254</td>
					<td>2.90</td>
					<td>8승 2패</td>
				</tr>

				<tr>
					<td>14</td>
					<td>
						<div class="teamNameTab">
							<div>
								<img src="/SPORTS_PROJECT/public/images/user_img1.jpg" alt=""
									width="40" height="40">
							</div>
							<div>
								<span>기아 타이거즈</span>
							</div>
						</div>
					</td>
					<td>66</td>
					<td>46</td>
					<td>20</td>
					<td>0.697</td>
					<td>-</td>
					<td>1승</td>
					<td>.254</td>
					<td>2.90</td>
					<td>8승 2패</td>
				</tr>

				<tr>
					<td>15</td>
					<td>
						<div class="teamNameTab">
							<div>
								<img src="/SPORTS_PROJECT/public/images/user_img1.jpg" alt=""
									width="40" height="40">
							</div>
							<div>
								<span>기아 타이거즈</span>
							</div>
						</div>
					</td>
					<td>66</td>
					<td>46</td>
					<td>20</td>
					<td>0.697</td>
					<td>-</td>
					<td>1승</td>
					<td>.254</td>
					<td>2.90</td>
					<td>8승 2패</td>
				</tr>



			</table>
		</div>

	</main>
	<jsp:include page="/WEB-INF/views/layouts/footer.jsp" />
</body>

</html>