<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <jsp:include page="/WEB-INF/views/layouts/header-dependencies.jsp"/>
    <link rel="stylesheet" href="${contextPath}/src/css/matchResultPlus.css">
    <script src="${contextPath}/src/js/matchResultPlus.js" defer></script>
    <title>Match Result Plus</title>
</head>
<body>
    <jsp:include page="/WEB-INF/views/layouts/header.jsp"/>
    <main>
        <div class="cardBackground">
            <div class="matchEnroll card__lblue">
                <div class="matchEnroll">
                    <div class="matchEnroll_Top">
                        <div>경기 등록</div>
                    </div>
                    <div class="matchEnroll_Mid">
                        <div class="dateSelectBox">
                            <div class="dateSelect">
                                <div>날짜 선택</div>
                            </div>
                            <div class="dateSelectDetail">
                                <input type="date" id="matchDate">
                            </div>
                        </div>
                        <div class="winTeamBox">
                            <div class="winTeam">
                                <div>승리 팀 이름</div>
                            </div>
                            <div class="winTeamDetail">
                                <select name="winTeamSelect" id="winTeamSelect" onchange="loadTeamData('win')">
                                    <option value="">----선택하세요----</option>
                                </select>
                            </div>
                        </div>
                        <div class="loseTeamBox">
                            <div class="loseTeam">
                                <div>패배 팀 이름</div>
                            </div>
                            <div class="loseTeamDetail">
                                <select name="loseTeamSelect" id="loseTeamSelect" onchange="loadTeamData('lose')">
                                    <option value="">----선택하세요----</option>
                                </select>
                            </div>
                        </div>
                        <div class="matchPlaceBox">
                            <div class="matchPlace">
                                <div>경기장 이름</div>
                            </div>
                            <div class="matchPlaceDetail">
                                <select name="matchPlaceSelect" id="matchPlaceSelect">
                                    <option value="">----선택하세요----</option>
                                </select>
                            </div>
                        </div>
                        <div class="winTeamScoreBox">
                            <div class="winTeamScore">
                                <div>승리 팀 스코어</div>
                            </div>
                            <div class="winTeamScoreDetail">
                                <input type="number" id="winnerScore" min="0">
                            </div>
                        </div>
                        <div class="loseTeamScoreBox">
                            <div class="loseTeamScore">
                                <div>패배 팀 스코어</div>
                            </div>
                            <div class="loseTeamScoreDetail">
                                <input type="number" id="loserScore" min="0">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="cardBackground">
            <div class="matchDetail card__lblue">
                <div class="matchDetail">
                    <div class="matchDetail_Top">
                        <div>경기 상세</div>
                    </div>
                    <div class="matchDetail_Mid">
                        <div class="winPitcherBox">
                            <div class="winPitcher">
                                <div>승리 투수</div>
                            </div>
                            <div class="winPitcherDetail">
                                <select id="winPitcherSelect"></select>
                            </div>
                        </div>
                        <div class="losePitcherBox">
                            <div class="losePitcher">
                                <div>패배 투수</div>
                            </div>
                            <div class="losePitcherDetail">
                                <select id="losePitcherSelect"></select>
                            </div>
                        </div>
                        <div class="hitBox">
                            <div class="hit">
                                <div>안타</div>
                            </div>
                            <div class="hitDetail">
                                <div>승리 팀</div>
                                <input type="number" id="hitsWinner">
                                <div>패배 팀</div>
                                <input type="number" id="hitsLoser">
                            </div>
                        </div>
                        <div class="homeRunBox">
                            <div class="homeRun">
                                <div>홈런</div>
                            </div>
                            <div class="homeRunDetail">
                                <div>승리 팀</div>
                                <input type="number" id="hrWinner">
                                <div>패배 팀</div>
                                <input type="number" id="hrLoser">
                            </div>
                        </div>
                        <div class="threeStrikeBox">
                            <div class="threeStrike">
                                <div>삼진</div>
                            </div>
                            <div class="threeStrikeDetail">
                                <div>승리 팀</div>
                                <input type="number" id="soWinner">
                                <div>패배 팀</div>
                                <input type="number" id="soLoser">
                            </div>
                        </div>
                        <div class="stoleBaseBox">
                            <div class="stoleBase">
                                <div>도루</div>
                            </div>
                            <div class="stoleBaseDetail">
                                <div>승리 팀</div>
                                <input type="number" id="sbWinner">
                                <div>패배 팀</div>
                                <input type="number" id="sbLoser">
                            </div>
                        </div>
                        <div class="doublePlayBox">
                            <div class="doublePlay">
                                <div>병살</div>
                            </div>
                            <div class="doublePlayDetail">
                                <div>승리 팀</div>
                                <input type="number" id="dpWinner">
                                <div>패배 팀</div>
                                <input type="number" id="dpLoser">
                            </div>
                        </div>
                        <div class="errorBox">
                            <div class="error">
                                <div>실책</div>
                            </div>
                            <div class="errorDetail">
                                <div>승리 팀</div>
                                <input type="number" id="erWinner">
                                <div>패배 팀</div>
                                <input type="number" id="erLoser">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <button onclick="calculateResults()">결과 계산</button>
        <div class="cardBackground">
            <div class="matchDetail card__lblue">
                <div class="matchDetail">
                    <div class="matchDetail_Top">
                        <div>승리 팀 투수 기록</div>
                        <div class="buttons">
                            <button onclick="addRow('statsTableWin')">+</button>
                            <button onclick="removeRow('statsTableWin')">-</button>
                        </div>
                    </div>
                    <table id="statsTableWin">
                        <thead>
                            <tr>
                                <th>선수이름</th>
                                <th>이닝</th>
                                <th>투구 수</th>
                                <th>피안타</th>
                                <th>피홈런</th>
                                <th>탈삼진</th>
                                <th>사사구</th>
                                <th>실점</th>
                                <th>자책</th>
                                <th>ERA</th>
                                <th>whip</th>
                            </tr>
                        </thead>
                        <tbody>
                            <!-- 데이터는 자바스크립트에서 추가됨 -->
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <div class="cardBackground">
            <div class="matchDetail card__lblue">
                <div class="matchDetail">
                    <div class="matchDetail_Top">
                        <div>패배 팀 투수 기록</div>
                        <div class="buttons">
                            <button onclick="addRow('statsTableLose')">+</button>
                            <button onclick="removeRow('statsTableLose')">-</button>
                        </div>
                    </div>
                    <table id="statsTableLose">
                        <thead>
                            <tr>
                                <th>선수이름</th>
                                <th>이닝</th>
                                <th>투구 수</th>
                                <th>피안타</th>
                                <th>피홈런</th>
                                <th>탈삼진</th>
                                <th>사사구</th>
                                <th>실점</th>
                                <th>자책</th>
                                <th>ERA</th>
                                <th>whip</th>
                            </tr>
                        </thead>
                        <tbody>
                            <!-- 데이터는 자바스크립트에서 추가됨 -->
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <div class="cardBackground">
            <div class="matchDetail card__lblue">
                <div class="matchDetail">
                    <div class="matchDetail_Top">
                        <div>승리 팀 타자 기록</div>
                        <div class="buttons">
                            <button onclick="addRow('statsTableWinHit')">+</button>
                            <button onclick="removeRow('statsTableWinHit')">-</button>
                        </div>
                    </div>
                    <table id="statsTableWinHit">
                        <thead>
                            <tr>
                                <th>선수이름</th>
                                <th>타수</th>
                                <th>안타</th>
                                <th>2타</th>
                                <th>3타</th>
                                <th>홈런</th>
                                <th>득점</th>
                                <th>타점</th>
                                <th>삼진</th>
                                <th>사사구</th>
                                <th>타율</th>
                            </tr>
                        </thead>
                        <tbody>
                            <!-- 데이터는 자바스크립트에서 추가됨 -->
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <div class="cardBackgroundLast">
            <div class="matchDetail card__lblue">
                <div class="matchDetail">
                    <div class="matchDetail_Top">
                        <div>패배 팀 타자 기록</div>
                        <div class="buttons">
                            <button onclick="addRow('statsTableLoseHit')">+</button>
                            <button onclick="removeRow('statsTableLoseHit')">-</button>
                        </div>
                    </div>
                    <table id="statsTableLoseHit">
                        <thead>
                            <tr>
                                <th>선수이름</th>
                                <th>타수</th>
                                <th>안타</th>
                                <th>2타</th>
                                <th>3타</th>
                                <th>홈런</th>
                                <th>득점</th>
                                <th>타점</th>
                                <th>삼진</th>
                                <th>사사구</th>
                                <th>타율</th>
                            </tr>
                        </thead>
                        <tbody>
                            <!-- 데이터는 자바스크립트에서 추가됨 -->
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <div class="enrollButton">
            <button class="btn-medium__dblue" onclick="submitForm()">등록</button>
        </div>
        <div>
            <a href="${contextPath}/match/matchResultEdit">경기결과 수정 /삭제</a>
        </div>
    </main>
    <jsp:include page="/WEB-INF/views/layouts/footer.jsp"/>
</body>
</html>
