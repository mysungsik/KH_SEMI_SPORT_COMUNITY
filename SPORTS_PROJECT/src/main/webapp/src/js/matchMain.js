const rawData = [
    { sequence: 1, teamImg : '/SPORTS_PROJECT/public/images/user_img1.jpg', teamName:'기아 타이거즈', matchCount : 80, win: 55, lose: 25,avg: 8 },
    { sequence: 2, teamImg : '/SPORTS_PROJECT/public/images/user_img1.jpg', teamName:'롯데 자이언트', matchCount : 78, win: 49, lose: 29,avg: 7 },
    { sequence: 3, teamImg : '/SPORTS_PROJECT/public/images/user_img1.jpg', teamName:'삼성 라이온즈', matchCount : 77, win: 50, lose: 27,avg: 6 },
    { sequence: 4, teamImg : '/SPORTS_PROJECT/public/images/user_img1.jpg', teamName:'한화 이글스', matchCount : 72, win: 43, lose: 29,avg: 5 },
    { sequence: 5, teamImg : '/SPORTS_PROJECT/public/images/user_img1.jpg', teamName:'두산 베어스', matchCount : 72, win: 40, lose: 32,avg: 5 }
];

const rawPlayerData = [
    { category: "다승", players: [
        { name: "헤이수스", team: "키움", count: "10승" },
        { name: "엔스", team: "키움", count: "9승" },
        { name: "원커슨", team: "롯데", count: "8승" },
        { name: "후라도", team: "키움", count: "7승" },
        { name: "네일", team: "기아", count: "6승" }
    ]},
    { category: "평균자책", players: [
        { name: "네일", team: "기아", count: "2.44" },
        { name: "하트", team: "NC", count: "2.88" },
        { name: "헤이수스", team: "키움", count: "3.34" },
        { name: "후라도", team: "키움", count: "3.42" },
        { name: "월커슨", team: "롯데", count: "3.61" }
    ]},
    { category: "탈삼진", players: [
        { name: "하트", team: "NC", count: "128개" },
        { name: "네일", team: "기아", count: "115개" },
        { name: "엄상백", team: "KT", count: "114개" },
        { name: "코너", team: "삼성", count: "113개" },
        { name: "헤이수스", team: "키움", count: "112개" }
    ]},
    { category: "세이브", players: [
        { name: "오승환", team: "삼성", count: "25" },
        { name: "정해영", team: "기아", count: "21" },
        { name: "유영찬", team: "LG", count: "18" },
        { name: "문승원", team: "SSG", count: "17" },
        { name: "김원중", team: "롯데", count: "16" }
    ]},
    { category: "WHIP", players: [
        { name: "하트", team: "NC", count: "1.07" },
        { name: "월커슨", team: "롯데", count: "1.18" },
        { name: "헤이수스", team: "키움", count: "1.17" },
        { name: "코너", team: "삼성", count: "1.21" },
        { name: "네일", team: "기아", count: "1.21" }
    ]}
];

document.addEventListener('DOMContentLoaded', function() {
    populateTeamRankings(rawData);
    populatePlayerRankings(rawPlayerData);
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

function populatePlayerRankings(rankings) {
    rankings.forEach(category => {
        const boxRanking = Array.from(document.querySelectorAll('.box-ranking'))
            .find(box => box.querySelector('strong.rankingCategory').textContent === category.category);
        
        const ol = boxRanking.querySelector('ol.list_ranking');
        
        ol.innerHTML = '';

        category.players.forEach(player => {
            const li = document.createElement('li');
            li.innerHTML = `
                <div class="list_detail">
                    <span>${player.name}(${player.team})</span> <span class="count">${player.count}</span>
                </div>
            `;
            ol.appendChild(li);
        });
    });
}
