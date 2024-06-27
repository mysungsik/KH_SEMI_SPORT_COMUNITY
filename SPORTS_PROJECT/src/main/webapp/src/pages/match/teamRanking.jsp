<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    
    <link rel="stylesheet" href="./teamRanking.css">
    <script src="./matchResult.js" defer></script>
    <title>TeamRanking</title>
</head>
<body>
    <jsp:include page="/src/common/layouts/header.jsp"/>
    <main>
        <div class="recordTab">
            <a href="#" class="nationalLeague box-hover:hover" onclick=""><span>내셔널 리그</span></a>
            <a href="TRAmerican_.jsp" class="americanLeague box-hover:hover" onclick=""><span>아메리칸 리그</span></a>
        </div>
        <div class="game-records card__lblue ">
            <div class="teamRankingTop ">팀 순위</div>
            <table class="eastRanking">
                <tr>
                    <th class="regionName">동부 지구</th>
                    <th class="teamName">팀 이름</th>
                    <th class="matchCount">경기 수</th>
                    <th class="matchWin">승</th>
                    <th class="matchLose">패</th>
                    <th class="winRate">승률</th>
                    <th class="gameBehind">게임 차 </th>
                    <th class="consequence">연속</th>
                    <th class="battingAverage">타율</th>
                    <th class="ERA">평균 자책</th>
                    <th class="recentMatch">최근 10 경기</th>
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
        <br><br>
        <div class="game-records card__lblue ">
            <table class="midRanking">
                <tr>
                    <th class="regionName">중부 지구</th>
                    <th class="teamName">팀 이름</th>
                    <th class="matchCount">경기 수</th>
                    <th class="matchWin">승</th>
                    <th class="matchLose">패</th>
                    <th class="winRate">승률</th>
                    <th class="gameBehind">게임 차 </th>
                    <th class="consequence">연속</th>
                    <th class="battingAverage">타율</th>
                    <th class="ERA">평균 자책</th>
                    <th class="recentMatch">최근 10 경기</th>
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
        <br><br>
        <div class="game-records card__lblue ">
            <table class="westRanking">
                <tr>
                    <th class="regionName">서부 지구</th>
                    <th class="teamName">팀 이름</th>
                    <th class="matchCount">경기 수</th>
                    <th class="matchWin">승</th>
                    <th class="matchLose">패</th>
                    <th class="winRate">승률</th>
                    <th class="gameBehind">게임 차 </th>
                    <th class="consequence">연속</th>
                    <th class="battingAverage">타율</th>
                    <th class="ERA">평균 자책</th>
                    <th class="recentMatch">최근 10 경기</th>
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
        <br><br>
        <div class="game-records card__lblue ">
            <table class="wildCard">
                <tr>
                    <th class="regionName">와일드카드</th>
                    <th class="teamName">팀 이름</th>
                    <th class="matchCount">경기 수</th>
                    <th class="matchWin">승</th>
                    <th class="matchLose">패</th>
                    <th class="winRate">승률</th>
                    <th class="gameBehind">게임 차 </th>
                    <th class="consequence">연속</th>
                    <th class="battingAverage">타율</th>
                    <th class="ERA">평균 자책</th>
                    <th class="recentMatch">최근 10 경기</th>
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
        </div>
        </table>
    </main>
       <jsp:include page="/src/common/layouts/footer.jsp"/>
</body>

</html>