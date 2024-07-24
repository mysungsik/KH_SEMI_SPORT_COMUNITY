const rawData = [
	{ sequence: 1, teamImg : '/SPORTS_PROJECT/public/images/user_img1.jpg', teamName:'기아 타이거즈', matchCount : 80, win: 55, lose: 25,avg: 8 },
	{ sequence: 2, teamImg : '/SPORTS_PROJECT/public/images/user_img1.jpg', teamName:'롯데 자이언트', matchCount : 78, win: 49, lose: 29,avg: 7 },
	{ sequence: 3, teamImg : '/SPORTS_PROJECT/public/images/user_img1.jpg', teamName:'삼성 라이온즈', matchCount : 77, win: 50, lose: 27,avg: 6 },
	{ sequence: 4, teamImg : '/SPORTS_PROJECT/public/images/user_img1.jpg', teamName:'한화 이글스', matchCount : 72, win: 43, lose: 29,avg: 5 },
	{ sequence: 5, teamImg : '/SPORTS_PROJECT/public/images/user_img1.jpg', teamName:'두산 베어스', matchCount : 72, win: 40, lose: 32,avg: 5 }
];

document.addEventListener('DOMContentLoaded', function() {
    populateTeamRankings(rawData);
});

function populateTeamRankings(rankings) {
    const table = document.querySelector('.teamRanking');
    const tbody = table.querySelector('tbody');
    
    tbody.innerHTML = ''; 

    rankings.forEach((team, index) => {
        const tr = document.createElement('tr');
        
        tr.innerHTML = `
            <td>${team.sequence}</td>
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
            <td>${index === 0 ? '-' : (rankings[0].win - team.win)}</td>
        `;
        
        tbody.appendChild(tr);
    });
}