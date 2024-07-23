const matchData = [
	{ day: 'Mon', time: '1:10', stadiumName: '기아 챔피언스 필드', team1: 기아, teamImg1: '/SPORTS_PROJECT/public/images/user_img1.jpg', score1: 5, status: 종료, score2: 2, teamImg2: '/SPORTS_PROJECT/public/images/user_img1.jpg', team2: '롯데', league: KBO, detail: '/match/matchResult' },
	{ day: 'Mon', time: '2:10', stadiumName: '대전 한화생명 이글스 파크', team1: 한화, teamImg1: '/SPORTS_PROJECT/public/images/user_img1.jpg', score1: 8, status: 종료, score2: 3, teamImg2: '/SPORTS_PROJECT/public/images/user_img1.jpg', team2: '삼성', league: KBO, detail: '/match/matchResult' },
	{ day: 'Mon', time: '3:10', stadiumName: '롯데 자이언츠 사직야구장', team1: 롯데, teamImg1: '/SPORTS_PROJECT/public/images/user_img1.jpg', score1: 3, status: 종료, score2: 1, teamImg2: '/SPORTS_PROJECT/public/images/user_img1.jpg', team2: 'NC', league: KBO, detail: '/match/matchResult' },
	{ day: 'Mon', time: '4:10', stadiumName: '기아 챔피언스 필드', team1: 기아, teamImg1: '/SPORTS_PROJECT/public/images/user_img1.jpg', score1: 5, status: 종료, score2: 2, teamImg2: '/SPORTS_PROJECT/public/images/user_img1.jpg', team2: '롯데', league: KBO, detail: '/match/matchResult' },
	{ day: 'Mon', time: '5:10', stadiumName: '기아 챔피언스 필드', team1: 기아, teamImg1: '/SPORTS_PROJECT/public/images/user_img1.jpg', score1: 5, status: 종료, score2: 2, teamImg2: '/SPORTS_PROJECT/public/images/user_img1.jpg', team2: '롯데', league: KBO, detail: '/match/matchResult' },
	{ day: 'Mon', time: '6:10', stadiumName: '대전 한화생명 이글스 파크', team1: 한화, teamImg1: '/SPORTS_PROJECT/public/images/user_img1.jpg', score1: 8, status: 종료, score2: 3, teamImg2: '/SPORTS_PROJECT/public/images/user_img1.jpg', team2: '삼성', league: KBO, detail: '/match/matchResult' },
	{ day: 'Mon', time: '7:10', stadiumName: '롯데 자이언츠 사직야구장', team1: 롯데, teamImg1: '/SPORTS_PROJECT/public/images/user_img1.jpg', score1: 3, status: 종료, score2: 1, teamImg2: '/SPORTS_PROJECT/public/images/user_img1.jpg', team2: 'NC', league: KBO, detail: '/match/matchResult' },
	{ day: 'Mon', time: '8:10', stadiumName: '기아 챔피언스 필드', team1: 기아, teamImg1: '/SPORTS_PROJECT/public/images/user_img1.jpg', score1: 5, status: 종료, score2: 2, teamImg2: '/SPORTS_PROJECT/public/images/user_img1.jpg', team2: '롯데', league: KBO, detail: '/match/matchResult' },
	{ day: 'Mon', time: '9:10', stadiumName: '대전 한화생명 이글스 파크', team1: 한화, teamImg1: '/SPORTS_PROJECT/public/images/user_img1.jpg', score1: 8, status: 종료, score2: 3, teamImg2: '/SPORTS_PROJECT/public/images/user_img1.jpg', team2: '삼성', league: KBO, detail: '/match/matchResult' },
	{ day: 'Mon', time: '10:10', stadiumName: '롯데 자이언츠 사직야구장', team1: 롯데, teamImg1: '/SPORTS_PROJECT/public/images/user_img1.jpg', score1: 3, status: 종료, score2: 1, teamImg2: '/SPORTS_PROJECT/public/images/user_img1.jpg', team2: 'NC', league: KBO, detail: '/match/matchResult' },
	{ day: 'Mon', time: '11:10', stadiumName: '기아 챔피언스 필드', team1: 기아, teamImg1: '/SPORTS_PROJECT/public/images/user_img1.jpg', score1: 5, status: 종료, score2: 2, teamImg2: '/SPORTS_PROJECT/public/images/user_img1.jpg', team2: '롯데', league: KBO, detail: '/match/matchResult' },
	{ day: 'Mon', time: '12:10', stadiumName: '대전 한화생명 이글스 파크', team1: 한화, teamImg1: '/SPORTS_PROJECT/public/images/user_img1.jpg', score1: 8, status: 종료, score2: 3, teamImg2: '/SPORTS_PROJECT/public/images/user_img1.jpg', team2: '삼성', league: KBO, detail: '/match/matchResult' },
	{ day: 'Mon', time: '13:10', stadiumName: '롯데 자이언츠 사직야구장', team1: 롯데, teamImg1: '/SPORTS_PROJECT/public/images/user_img1.jpg', score1: 3, status: 종료, score2: 1, teamImg2: '/SPORTS_PROJECT/public/images/user_img1.jpg', team2: 'NC', league: KBO, detail: '/match/matchResult' },

	{ day: 'Tues', time: '1:10', stadiumName: '기아 챔피언스 필드', team1: 기아, teamImg1: '/SPORTS_PROJECT/public/images/user_img1.jpg', score1: 5, status: 종료, score2: 2, teamImg2: '/SPORTS_PROJECT/public/images/user_img1.jpg', team2: '롯데', league: KBO, detail: '/match/matchResult' },
	{ day: 'Tues', time: '2:10', stadiumName: '대전 한화생명 이글스 파크', team1: 한화, teamImg1: '/SPORTS_PROJECT/public/images/user_img1.jpg', score1: 8, status: 종료, score2: 3, teamImg2: '/SPORTS_PROJECT/public/images/user_img1.jpg', team2: '삼성', league: KBO, detail: '/match/matchResult' },
	{ day: 'Tues', time: '3:10', stadiumName: '롯데 자이언츠 사직야구장', team1: 롯데, teamImg1: '/SPORTS_PROJECT/public/images/user_img1.jpg', score1: 3, status: 종료, score2: 1, teamImg2: '/SPORTS_PROJECT/public/images/user_img1.jpg', team2: 'NC', league: KBO, detail: '/match/matchResult' },
	{ day: 'Tues', time: '4:10', stadiumName: '기아 챔피언스 필드', team1: 기아, teamImg1: '/SPORTS_PROJECT/public/images/user_img1.jpg', score1: 5, status: 종료, score2: 2, teamImg2: '/SPORTS_PROJECT/public/images/user_img1.jpg', team2: '롯데', league: KBO, detail: '/match/matchResult' },
	{ day: 'Tues', time: '5:10', stadiumName: '기아 챔피언스 필드', team1: 기아, teamImg1: '/SPORTS_PROJECT/public/images/user_img1.jpg', score1: 5, status: 종료, score2: 2, teamImg2: '/SPORTS_PROJECT/public/images/user_img1.jpg', team2: '롯데', league: KBO, detail: '/match/matchResult' },
	{ day: 'Tues', time: '6:10', stadiumName: '대전 한화생명 이글스 파크', team1: 한화, teamImg1: '/SPORTS_PROJECT/public/images/user_img1.jpg', score1: 8, status: 종료, score2: 3, teamImg2: '/SPORTS_PROJECT/public/images/user_img1.jpg', team2: '삼성', league: KBO, detail: '/match/matchResult' },
	{ day: 'Tues', time: '7:10', stadiumName: '롯데 자이언츠 사직야구장', team1: 롯데, teamImg1: '/SPORTS_PROJECT/public/images/user_img1.jpg', score1: 3, status: 종료, score2: 1, teamImg2: '/SPORTS_PROJECT/public/images/user_img1.jpg', team2: 'NC', league: KBO, detail: '/match/matchResult' },
	{ day: 'Tues', time: '8:10', stadiumName: '기아 챔피언스 필드', team1: 기아, teamImg1: '/SPORTS_PROJECT/public/images/user_img1.jpg', score1: 5, status: 종료, score2: 2, teamImg2: '/SPORTS_PROJECT/public/images/user_img1.jpg', team2: '롯데', league: KBO, detail: '/match/matchResult' },
	{ day: 'Tues', time: '9:10', stadiumName: '대전 한화생명 이글스 파크', team1: 한화, teamImg1: '/SPORTS_PROJECT/public/images/user_img1.jpg', score1: 8, status: 종료, score2: 3, teamImg2: '/SPORTS_PROJECT/public/images/user_img1.jpg', team2: '삼성', league: KBO, detail: '/match/matchResult' },
	{ day: 'Tues', time: '10:10', stadiumName: '롯데 자이언츠 사직야구장', team1: 롯데, teamImg1: '/SPORTS_PROJECT/public/images/user_img1.jpg', score1: 3, status: 종료, score2: 1, teamImg2: '/SPORTS_PROJECT/public/images/user_img1.jpg', team2: 'NC', league: KBO, detail: '/match/matchResult' },
	{ day: 'Tues', time: '11:10', stadiumName: '기아 챔피언스 필드', team1: 기아, teamImg1: '/SPORTS_PROJECT/public/images/user_img1.jpg', score1: 5, status: 종료, score2: 2, teamImg2: '/SPORTS_PROJECT/public/images/user_img1.jpg', team2: '롯데', league: KBO, detail: '/match/matchResult' },
	{ day: 'Tues', time: '12:10', stadiumName: '대전 한화생명 이글스 파크', team1: 한화, teamImg1: '/SPORTS_PROJECT/public/images/user_img1.jpg', score1: 8, status: 종료, score2: 3, teamImg2: '/SPORTS_PROJECT/public/images/user_img1.jpg', team2: '삼성', league: KBO, detail: '/match/matchResult' },
	{ day: 'Tues', time: '13:10', stadiumName: '롯데 자이언츠 사직야구장', team1: 롯데, teamImg1: '/SPORTS_PROJECT/public/images/user_img1.jpg', score1: 3, status: 종료, score2: 1, teamImg2: '/SPORTS_PROJECT/public/images/user_img1.jpg', team2: 'NC', league: KBO, detail: '/match/matchResult' }
];


function createRow(match) {
	const row = document.createElement('tr');

	row.innerHTML = `
                <td>${match.time}</td>
                <td>${match.stadiumName}</td>
                <td>${match.team1}</td>
                <td><img src="${match.teamImg1}" alt="" width="40" height="40"></td>
                <td>${match.score1}</td>
                <td>${match.status}</td>
                <td>${match.score2}</td>
                <td><img src="${match.teamImg2}" alt="" width="40" height="40"></td>
                <td>${match.team2}</td>
                <td>${match.league}</td>
                <td><a href="${match.detail}">상세</a></td>
            `;

	return (row);
}




//const days =['일','월', '화', '수', '목', '금', '토'];
let currentDate = new Date();
function updateDate() {
	const year = currentDate.getFullYear();
	const month = String(currentDate.getMonth() + 1).padStart(2, '0');
	const date = String(currentDate.getDate()).padStart(2, '0'); // getDate()로 변경
	const days = ['일', '월', '화', '수', '목', '금', '토']; // 요일 배열 추가
	const day = days[currentDate.getDay()]; // getDay()로 요일 인덱스 가져오기
	const dayShort = ['Sun', 'Mon', 'Tues', 'Wedn', 'Thur', 'Fri', 'Sat'][currentDate.getDay()]; // 요일 약어

	// 현재 날짜 표시
	document.getElementById('currentDate').textContent = `${year}.${month}.${date}(${day})`;
	// 해당 요일 스케줄 표시
	showSchedule(dayShort);
}
//function updateDate() {
//	const year = currentDate.getFullYear();
//	const month = String(currentDate.getMonth() +1).padStart(2, '0');
//	const date = String(currentDate.getMonth()).padStart(2, '0');
//	const day = days[currentDate.getDay()];
//	document.getElementById('currentDate').textContent =`${year}.${month}.${date}(${day})`;
//	            showSchedule(day);
//}

function changeDate(offSet) {
	currentDate.setDate(currentDate.getDate() + offSet);
	updateDate();
}

function showSchedule(day) {

	document.querySelectorAll('.schedule').forEach(function(element) {
		element.classList.add('hidden');
	});
	const scheduleElement = document.getElementById(day);
	if (scheduleElement) {
		scheduleElement.classList.remove('hidden');
	} else {
		// 해당 요일에 일정이 없으면 기본 메시지 표시 (선택사항)
		console.log("해당 날짜에 일정이 없습니다.");
	}
}

document.addEventListener('DOMContentLoaded', function() {
	updateDate();
});




