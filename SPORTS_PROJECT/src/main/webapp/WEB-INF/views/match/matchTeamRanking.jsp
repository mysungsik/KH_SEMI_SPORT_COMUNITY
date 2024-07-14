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
				<a href="#" class="nationalLeague text-hover__white:hover"><span>내셔널
						리그</span></a>
			</div>
			<div>
				<a href="TRAmerican_.jsp" class="americanLeague box-hover:hover"><span>아메리칸
						리그</span></a>
			</div>
		</div>
		<div class="game-records card__lblue">
			<div class="teamRankingTop fs-20__b fc__blue ">팀 순위</div>
			<hr class="hr__gray mt-10 mb-16">
			<table class="eastRanking">
				<tr class="rankingTop">
					<th class="regionName fs-14__b fc__blue">동부 지구</th>
					<th class="teamName fs-14__b fc__blue">팀 이름</th>
					<th class="matchCount fs-14__b fc__blue">경기 수</th>
					<th class="matchWin fs-14__b fc__blue">승</th>
					<th class="matchLose fs-14__b fc__blue">패</th>
					<th class="winRate fs-14__b fc__blue">승률</th>
					<th class="gameBehind fs-14__b fc__blue">게임 차</th>
					<th class="consequence fs-14__b fc__blue">연속</th>
					<th class="battingAverage fs-14__b fc__blue">타율</th>
					<th class="ERA fs-14__b fc__blue">평균 자책</th>
					<th class="recentMatch fs-14__b fc__blue">최근 10 경기</th>
				</tr>
				<tr>
					<td>1</td>
					<td>필라델피아</td>
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
					<td>뉴욕 M</td>
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
					<td>워싱턴</td>
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
					<td>아틀랜타</td>
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
					<td>마이애미</td>
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
		<br> <br>
		<div class="game-records card__lblue ">
			<table class="midRanking ">
				<tr class="rankingTop">
					<th class="regionName fs-14__b fc__blue">중부 지구</th>
					<th class="teamName fs-14__b fc__blue">팀 이름</th>
					<th class="matchCount fs-14__b fc__blue">경기 수</th>
					<th class="matchWin fs-14__b fc__blue">승</th>
					<th class="matchLose fs-14__b fc__blue">패</th>
					<th class="winRate fs-14__b fc__blue">승률</th>
					<th class="gameBehind fs-14__b fc__blue">게임 차</th>
					<th class="consequence fs-14__b fc__blue">연속</th>
					<th class="battingAverage fs-14__b fc__blue">타율</th>
					<th class="ERA fs-14__b fc__blue">평균 자책</th>
					<th class="recentMatch fs-14__b fc__blue">최근 10 경기</th>
				</tr>
				<br>
				<tr>
					<td>1</td>
					<td>필라델피아</td>
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
					<td>뉴욕 M</td>
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
					<td>워싱턴</td>
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
					<td>아틀랜타</td>
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
					<td>마이애미</td>
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
		<br> <br>
		<div class="game-records card__lblue ">
			<table class="westRanking">
				<tr class="rankingTop">
					<th class="regionName fs-14__b fc__blue">서부 지구</th>
					<th class="teamName fs-14__b fc__blue">팀 이름</th>
					<th class="matchCount fs-14__b fc__blue">경기 수</th>
					<th class="matchWin fs-14__b fc__blue">승</th>
					<th class="matchLose fs-14__b fc__blue">패</th>
					<th class="winRate fs-14__b fc__blue">승률</th>
					<th class="gameBehind fs-14__b fc__blue">게임 차</th>
					<th class="consequence fs-14__b fc__blue">연속</th>
					<th class="battingAverage fs-14__b fc__blue">타율</th>
					<th class="ERA fs-14__b fc__blue">평균 자책</th>
					<th class="recentMatch fs-14__b fc__blue">최근 10 경기</th>
				</tr>
				<br>
				<tr>
					<td>1</td>
					<td>필라델피아</td>
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
					<td>뉴욕 M</td>
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
					<td>워싱턴</td>
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
					<td>아틀랜타</td>
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
					<td>마이애미</td>
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
		<br> <br>
		<div class="game-records card__lblue ">
			<table class="wildCard">
			<div>
				<tr class="rankingTop">
					<th class="regionName fs-14__b fc__blue">남부 지구</th>
					<th class="teamName fs-14__b fc__blue">팀 이름</th>
					<th class="matchCount fs-14__b fc__blue">경기 수</th>
					<th class="matchWin fs-14__b fc__blue">승</th>
					<th class="matchLose fs-14__b fc__blue">패</th>
					<th class="winRate fs-14__b fc__blue">승률</th>
					<th class="gameBehind fs-14__b fc__blue">게임 차</th>
					<th class="consequence fs-14__b fc__blue">연속</th>
					<th class="battingAverage fs-14__b fc__blue">타율</th>
					<th class="ERA fs-14__b fc__blue">평균 자책</th>
					<th class="recentMatch fs-14__b fc__blue">최근 10 경기</th>
				</tr>
				
				<tr>
					<td>1</td>
					<td>필라델피아</td>
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
					<td>뉴욕 M</td>
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
					<td>워싱턴</td>
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
					<td>아틀랜타</td>
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
					<td>마이애미</td>
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