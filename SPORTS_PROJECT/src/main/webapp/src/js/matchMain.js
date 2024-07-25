$(document).ready(function () {
    fetchTeamRankings();
    fetchPlayerRankings();
});

function fetchTeamRankings() {
    let request_url = `${contextPath}/api/match/teamRankings`;
    $.ajax({
        type: "GET",
        url: request_url,
        dataType: "json",
        success: function (res) {
            populateTeamRankings(res);
        },
        error: function (request, status, error) {
            console.log("Error fetching team rankings:", error);
        }
    });
}

function fetchPlayerRankings() {
    let request_url = `${contextPath}/api/match/playerRankings`;
    $.ajax({
        type: "GET",
        url: request_url,
        dataType: "json",
        success: function (res) {
            populatePlayerRankings(res);
        },
        error: function (request, status, error) {
            console.log("Error fetching player rankings:", error);
        }
    });
}

function populateTeamRankings(rankings) {
    const table = document.querySelector('.teamRanking tbody');
    table.innerHTML = ''; // Clear existing rows

    rankings.forEach((team, index) => {
        const tr = document.createElement('tr');
        tr.innerHTML = `
            <td>${index + 1}</td>
            <td>${team.teamName}</td>
            <td>${team.matchCount}</td>
            <td>${team.win}</td>
            <td>${team.lose}</td>
            <td>${index === 0 ? '-' : (rankings[0].win - team.win)}</td>
        `;
        table.appendChild(tr);
    });
}

function populatePlayerRankings(rankings) {
    rankings.forEach(category => {
        const boxRanking = document.querySelector(`.box-ranking:contains('${category.category}') .list_ranking`);
        boxRanking.innerHTML = ''; // Clear existing items

        category.players.forEach(player => {
            const li = document.createElement('li');
            li.innerHTML = `<span>${player.name} (${player.team})</span> <span class="count">${player.count}</span>`;
            boxRanking.appendChild(li);
        });
    });
}
