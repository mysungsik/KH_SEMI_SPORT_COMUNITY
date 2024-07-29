$(document).ready(function () {
    loadTeams(); // 페이지 로드 시 팀 목록을 불러옵니다.
    updatePitcherTable('statsTableWin', []);
    updatePitcherTable('statsTableLose', []);
    updateBatterTable('statsTableWinHit', []);
    updateBatterTable('statsTableLoseHit', []);
});

function addRow(tableId) {
    var table = document.getElementById(tableId);
    var row = table.insertRow();
    for (var i = 0; i < 11; i++) {
        var cell = row.insertCell(i);
        cell.innerHTML = '';
    }
}

function removeRow(tableId) {
    var table = document.getElementById(tableId);
    var rowCount = table.rows.length;
    if (rowCount > 2) {
        table.deleteRow(rowCount - 1);
    } else {
        toastPop("warn", "더 이상 삭제할 수 없습니다.");
    }
}

function updatePitcherTable(tableId, data) {
    let html = "";
    for (let d of data) {
        html += `
        <tr>
            <td>${d.name}</td>
            <td>${d.inning}</td>
            <td>${d.pitchCount}</td>
            <td>${d.hitted}</td>
            <td>${d.hittedHomeRun}</td>
            <td>${d.strikeOut}</td>
            <td>${d.deadBall}</td>
            <td>${d.error}</td>
            <td>${d.earnedRun}</td>
            <td>${d.era}</td>
            <td>${d.whip}</td>
        </tr>`;
    }
    $('#' + tableId + ' tbody').html(html);
}

function updateBatterTable(tableId, data) {
    let html = "";
    for (let d of data) {
        html += `
        <tr>
            <td>${d.name}</td>
            <td>${d.atBat}</td>
            <td>${d.hit}</td>
            <td>${d.double}</td>
            <td>${d.triple}</td>
            <td>${d.homeRun}</td>
            <td>${d.run}</td>
            <td>${d.rbi}</td>
            <td>${d.strikeOut}</td>
            <td>${d.walk}</td>
            <td>${d.avg}</td>
        </tr>`;
    }
    $('#' + tableId + ' tbody').html(html);
}

function loadTeams() {
    $.ajax({
        url: `${contextPath}/api/match/getTeams`,
        method: "GET",
        success: function (data) {
            data = JSON.parse(data);
            const winTeamSelect = $("#winTeamSelect");
            const loseTeamSelect = $("#loseTeamSelect");
            winTeamSelect.empty();
            loseTeamSelect.empty();
            winTeamSelect.append('<option value="">----선택하세요----</option>');
            loseTeamSelect.append('<option value="">----선택하세요----</option>');
            data.forEach(team => {
                winTeamSelect.append(`<option value="${team}">${team}</option>`);
                loseTeamSelect.append(`<option value="${team}">${team}</option>`);
            });
        },
        error: function () {
            toastPop("error", "팀 목록을 불러오는데 실패했습니다.");
        }
    });
}

function loadTeamData(teamType) {
    const teamName = $("#" + teamType + "TeamSelect").val();
    if (teamName === "") return;

    $.ajax({
        url: `${contextPath}/api/match/getStadiumsByTeam?teamName=${teamName}`,
        method: "GET",
        success: function (data) {
            data = JSON.parse(data);
            const stadiumSelect = $("#matchPlaceSelect");
            stadiumSelect.empty();
            stadiumSelect.append('<option value="">----선택하세요----</option>');
            data.forEach(stadium => {
                stadiumSelect.append(`<option value="${stadium}">${stadium}</option>`);
            });
        },
        error: function () {
            toastPop("error", "경기장 정보를 가져오는데 실패했습니다.");
        }
    });

    $.ajax({
        url: `${contextPath}/api/match/getPlayersByTeam?teamName=${teamName}`,
        method: "GET",
        success: function (data) {
            data = JSON.parse(data);
            const pitcherSelect = $("#" + teamType + "PitcherSelect");
            pitcherSelect.empty();
            pitcherSelect.append('<option value="">----선택하세요----</option>');
            data.forEach(player => {
                pitcherSelect.append(`<option value="${player}">${player}</option>`);
            });
        },
        error: function () {
            toastPop("error", "선수 정보를 가져오는데 실패했습니다.");
        }
    });
}

function calculateResults() {
    const winnerScore = parseInt($('#winnerScore').val());
    const loserScore = parseInt($('#loserScore').val());
    const winTeamName = $('#winTeamSelect').val();
    const loseTeamName = $('#loseTeamSelect').val();

    if (isNaN(winnerScore) || isNaN(loserScore)) {
        toastPop("warn", "스코어를 입력하세요");
        return;
    }

    if (winTeamName === loseTeamName) {
        toastPop("warn", "승리팀과 패배팀은 같을 수 없습니다.");
        return;
    }

    const hrWinner = getRandomInt(0, Math.min(winnerScore, 5));
    const hrLoser = getRandomInt(0, Math.min(loserScore, 5));
    const hitsWinner = getRandomInt(winnerScore, winnerScore + 10);
    const hitsLoser = getRandomInt(loserScore, loserScore + 10);

    const soWinner = getRandomInt(5, 15);
    const soLoser = getRandomInt(5, 15);
    const sbWinner = getRandomInt(0, 5);
    const sbLoser = getRandomInt(0, 5);
    const dpWinner = getRandomInt(0, 5);
    const dpLoser = getRandomInt(0, 5);
    const erWinner = getRandomInt(0, 5);
    const erLoser = getRandomInt(0, 5);

    $('#hitsWinner').val(hitsWinner);
    $('#hrWinner').val(hrWinner);
    $('#soWinner').val(soWinner);
    $('#sbWinner').val(sbWinner);
    $('#dpWinner').val(dpWinner);
    $('#erWinner').val(erWinner);

    $('#hitsLoser').val(hitsLoser);
    $('#hrLoser').val(hrLoser);
    $('#soLoser').val(soLoser);
    $('#sbLoser').val(sbLoser);
    $('#dpLoser').val(dpLoser);
    $('#erLoser').val(erLoser);

    let winPitcherCount = getRandomInt(2, 4);
    let losePitcherCount = getRandomInt(2, 4);
    let winBatterCount = getRandomInt(4, 6);
    let loseBatterCount = getRandomInt(4, 6);

    $.ajax({
        url: `${contextPath}/api/match/getPlayersByTeam?teamName=${winTeamName}`,
        method: "GET",
        success: function (data) {
            data = JSON.parse(data);
            const winPitchers = generateRandomPitcherData(winPitcherCount, data);
            updatePitcherTable('statsTableWin', winPitchers);
        },
        error: function () {
            toastPop("error", "승리팀 선수 정보를 가져오는데 실패했습니다.");
        }
    });

    $.ajax({
        url: `${contextPath}/api/match/getPlayersByTeam?teamName=${loseTeamName}`,
        method: "GET",
        success: function (data) {
            data = JSON.parse(data);
            const losePitchers = generateRandomPitcherData(losePitcherCount, data);
            updatePitcherTable('statsTableLose', losePitchers);
        },
        error: function () {
            toastPop("error", "패배팀 선수 정보를 가져오는데 실패했습니다.");
        }
    });

    $.ajax({
        url: `${contextPath}/api/match/getPlayersByTeam?teamName=${winTeamName}`,
        method: "GET",
        success: function (data) {
            data = JSON.parse(data);
            const winBatters = generateRandomBatterData(winBatterCount, data);
            updateBatterTable('statsTableWinHit', winBatters);
        },
        error: function () {
            toastPop("error", "승리팀 타자 정보를 가져오는데 실패했습니다.");
        }
    });

    $.ajax({
        url: `${contextPath}/api/match/getPlayersByTeam?teamName=${loseTeamName}`,
        method: "GET",
        success: function (data) {
            data = JSON.parse(data);
            const loseBatters = generateRandomBatterData(loseBatterCount, data);
            updateBatterTable('statsTableLoseHit', loseBatters);
        },
        error: function () {
            toastPop("error", "패배팀 타자 정보를 가져오는데 실패했습니다.");
        }
    });
}

function generateRandomPitcherData(count, players) {
    let data = [];
    for (let i = 0; i < count; i++) {
        let player = players[getRandomInt(0, players.length - 1)];
        data.push({
            name: player,
            inning: getRandomInt(5, 9),
            pitchCount: getRandomInt(70, 120),
            hitted: getRandomInt(0, 10),
            hittedHomeRun: getRandomInt(0, 2),
            strikeOut: getRandomInt(3, 10),
            deadBall: getRandomInt(0, 4),
            error: getRandomInt(0, 3),
            earnedRun: getRandomInt(0, 5),
            era: (getRandomInt(0, 5) / getRandomInt(5, 9)).toFixed(2),
            whip: ((getRandomInt(0, 10) + getRandomInt(0, 4)) / getRandomInt(5, 9)).toFixed(2)
        });
    }
    return data;
}

function generateRandomBatterData(count, players) {
    let data = [];
    for (let i = 0; i < count; i++) {
        let player = players[getRandomInt(0, players.length - 1)];
        let atBat = getRandomInt(3, 5);
        let hit = getRandomInt(0, atBat);
        data.push({
            name: player,
            atBat: atBat,
            hit: hit,
            double: getRandomInt(0, hit),
            triple: getRandomInt(0, hit),
            homeRun: getRandomInt(0, 2),
            run: getRandomInt(0, 3),
            rbi: getRandomInt(0, hit),
            strikeOut: getRandomInt(0, atBat - hit),
            walk: getRandomInt(0, 3),
            avg: (hit / atBat).toFixed(3)
        });
    }
    return data;
}

function submitForm() {
    const matchData = {
        date: $("#matchDate").val(),
        winTeam: $("#winTeamSelect").val(),
        loseTeam: $("#loseTeamSelect").val(),
        matchPlace: $("#matchPlaceSelect").val(),
        winnerScore: $("#winnerScore").val(),
        loserScore: $("#loserScore").val(),
        winPitcher: $("#winPitcherSelect").val(),
        losePitcher: $("#losePitcherSelect").val(),
        hitsWinner: $("#hitsWinner").val(),
        hrWinner: $("#hrWinner").val(),
        soWinner: $("#soWinner").val(),
        sbWinner: $("#sbWinner").val(),
        dpWinner: $("#dpWinner").val(),
        erWinner: $("#erWinner").val(),
        hitsLoser: $("#hitsLoser").val(),
        hrLoser: $("#hrLoser").val(),
        soLoser: $("#soLoser").val(),
        sbLoser: $("#sbLoser").val(),
        dpLoser: $("#dpLoser").val(),
        erLoser: $("#erLoser").val()
    };

    $.ajax({
        url: `${contextPath}/api/match/saveMatchResult`,
        method: "POST",
        contentType: "application/json",
        data: JSON.stringify(matchData),
        success: function () {
            toastPop("success", "경기 결과가 성공적으로 등록되었습니다.");
            window.location.href = `${contextPath}/match/matchResultDetail`;
        },
        error: function () {
            toastPop("error", "경기 결과 등록에 실패했습니다.");
        }
    });
}

function getRandomInt(min, max) {
    return Math.floor(Math.random() * (max - min + 1)) + min;
}
