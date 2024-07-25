$(document).ready(function () {
    fetchTeamRankings();
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

function populateTeamRankings(rankings) {
    const table = document.querySelector('.teamRanking tbody');
    table.innerHTML = ''; // Clear existing rows

    rankings.forEach((team, index) => {
        const tr = document.createElement('tr');
        tr.innerHTML = `
            <td>${index + 1}</td>
            <td>
                <div class="teamNameTab">
                    <div>
                        <img src="${team.teamImg}" alt="" width="40" height="40">
                    </div>
                    <div>
                        <span>${team.teamName}</span>
                    </div>
                </div>
            </td>
            <td>${team.matchCount}</td>
            <td>${team.win}</td>
            <td>${team.lose}</td>
            <td>${team.winRate}</td>
            <td>${team.consequence}</td>
            <td>${team.battingAverage}</td>
            <td>${team.era}</td>
            <td>${team.recentMatch}</td>
        `;
        table.appendChild(tr);
    });
}
