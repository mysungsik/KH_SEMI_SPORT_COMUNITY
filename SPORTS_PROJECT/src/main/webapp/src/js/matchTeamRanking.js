$(document).ready(function () {
    fetchTeamRankingsForTeamRanking();
});

function fetchTeamRankingsForTeamRanking() {
    $.ajax({
        type: "GET",
        url: `${contextPath}/api/match/teamRankingsForTeamRanking`,
        dataType: "json",
        success: function (res) {
            populateTeamRankingsForTeamRanking(res);
        },
        error: function (request, status, error) {
            console.log(request);
            console.log(status);
            console.log(error);
        }
    });
}

function populateTeamRankingsForTeamRanking(rankings) {
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
            <td>${team.winRate}%</td>
            <td>${team.battingAvg}</td>
            <td>${team.era}</td>
            <td>${team.recentMatch}</td>
        `;
        
        tbody.appendChild(tr);
    });
}
