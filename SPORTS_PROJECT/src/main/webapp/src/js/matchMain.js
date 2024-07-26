$(document).ready(function () {
    fetchTeamRankingsForMain();
    fetchPlayerRankings();
});

function fetchTeamRankingsForMain() {
    $.ajax({
        type: "GET",
        url: `${contextPath}/api/match/teamRankingsForMain`,
        dataType: "json",
        success: function (res) {
            populateTeamRankingsForMain(res);
        },
        error: function (request, status, error) {
            console.log(request);
            console.log(status);
            console.log(error);
        }
    });
}

function populateTeamRankingsForMain(rankings) {
    const table = document.querySelector('.teamRanking');
    const tbody = table.querySelector('tbody');
    
    tbody.innerHTML = ''; // Clear existing rows

    rankings.forEach((team, index) => {
        const tr = document.createElement('tr');
        
        tr.innerHTML = `
            <td>${index + 1}</td>
            <td>
                <div class="teamNameTab">
                    <div>
                        <span>${team.teamName}</span>
                    </div>
                </div>
            </td>
            <td>${team.matchCount}</td>
            <td>${team.win}</td>
            <td>${team.lose}</td>
            <td>${team.gameDifference}</td>
        `;
        
        tbody.appendChild(tr);
    });
}

function fetchPlayerRankings() {
    const categories = ["Win", "ERA", "Strikeouts", "Hits", "WHIP"];
    categories.forEach(category => {
        $.ajax({
            type: "GET",
            url: `${contextPath}/api/match/playerRanking${category}`, 
            dataType: "json",
            success: function (res) {
                populatePlayerRankings(category, res);
            },
            error: function (request, status, error) {
                console.log(request);
                console.log(status);
                console.log(error);
            }
        });
    });
}

function populatePlayerRankings(category, rankings) {
    const boxRanking = Array.from(document.querySelectorAll('.box-ranking'))
        .find(box => box.querySelector('strong.rankingCategory').textContent === translateCategory(category));
    
    const ol = boxRanking.querySelector('ol.list_ranking');
    
    ol.innerHTML = '';

    rankings.forEach(player => {
        const li = document.createElement('li');
        li.innerHTML = `
            <div class="list_detail">
                <span>${player.playerName}(${player.teamName})</span> <span class="count">${getPlayerCount(category, player)}</span>
            </div>
        `;
        
                ol.appendChild(li);
    });
}

function translateCategory(category) {
    switch (category) {
        case "Win": return "다승";
        case "ERA": return "평균자책";
        case "Strikeouts": return "탈삼진";
        case "Hits": return "안타";
        case "WHIP": return "WHIP";
        default: return "";
    }
}

function getPlayerCount(category, player) {
    switch (category) {
        case "Win": return player.winCount;
        case "ERA": return player.era;
        case "Strikeouts": return player.strikeouts;
        case "Hits": return player.hit;
        case "WHIP": return player.whip;
        default: return "";
    }
}
