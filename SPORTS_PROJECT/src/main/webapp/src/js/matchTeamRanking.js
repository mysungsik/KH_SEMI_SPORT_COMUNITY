const rawTeamRankingData = [
    { teamImg: '/SPORTS_PROJECT/public/images/user_img1.jpg', teamName: '기아 타이거즈', matchCount: 66, win: 46, lose: 20, winRate: '0.697', consequence: '1승', battingAverage: '.254', era: '2.90', recentMatch: '8승 2패' },
    { teamImg: '/SPORTS_PROJECT/public/images/user_img1.jpg', teamName: '롯데 자이언트', matchCount: 65, win: 40, lose: 25, winRate: '0.615', consequence: '2승', battingAverage: '.267', era: '3.10', recentMatch: '7승 3패' },
    { teamImg: '/SPORTS_PROJECT/public/images/user_img1.jpg', teamName: '삼성 라이온즈', matchCount: 64, win: 39, lose: 25, winRate: '0.609', consequence: '1패', battingAverage: '.249', era: '3.20', recentMatch: '6승 4패' },
    { teamImg: '/SPORTS_PROJECT/public/images/user_img1.jpg', teamName: '한화 이글스', matchCount: 63, win: 38, lose: 25, winRate: '0.603', consequence: '3승', battingAverage: '.245', era: '3.00', recentMatch: '5승 5패' },
    { teamImg: '/SPORTS_PROJECT/public/images/user_img1.jpg', teamName: '두산 베어스', matchCount: 62, win: 35, lose: 27, winRate: '0.565', consequence: '1패', battingAverage: '.258', era: '3.40', recentMatch: '4승 6패' },
    { teamImg: '/SPORTS_PROJECT/public/images/user_img1.jpg', teamName: 'LG 트윈스', matchCount: 61, win: 34, lose: 27, winRate: '0.557', consequence: '2승', battingAverage: '.262', era: '3.50', recentMatch: '7승 3패' },
    { teamImg: '/SPORTS_PROJECT/public/images/user_img1.jpg', teamName: 'SSG 랜더스', matchCount: 60, win: 32, lose: 28, winRate: '0.533', consequence: '3승', battingAverage: '.252', era: '3.70', recentMatch: '6승 4패' },
    { teamImg: '/SPORTS_PROJECT/public/images/user_img1.jpg', teamName: 'NC 다이노스', matchCount: 59, win: 30, lose: 29, winRate: '0.508', consequence: '1패', battingAverage: '.248', era: '3.60', recentMatch: '5승 5패' },
    { teamImg: '/SPORTS_PROJECT/public/images/user_img1.jpg', teamName: 'KT 위즈', matchCount: 58, win: 28, lose: 30, winRate: '0.483', consequence: '2패', battingAverage: '.246', era: '3.80', recentMatch: '4승 6패' },
    { teamImg: '/SPORTS_PROJECT/public/images/user_img1.jpg', teamName: '키움 히어로즈', matchCount: 57, win: 25, lose: 32, winRate: '0.439', consequence: '3패', battingAverage: '.243', era: '3.90', recentMatch: '3승 7패' }
];

document.addEventListener('DOMContentLoaded', function() {
    populateTeamRankings(rawTeamRankingData);
});

function populateTeamRankings(rankings) {
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
        
        tbody.appendChild(tr);
    });
}
