const rawData = [
	{ time: '1:10', stadiumName: '기아 챔피언스 필드', team1: '기아', teamImg1: '/SPORTS_PROJECT/public/images/user_img1.jpg', score1: 5, status: "종료", score2: 2, teamImg2: '/SPORTS_PROJECT/public/images/user_img1.jpg', team2: '롯데', league: "KBO", detail: '/match/matchResult', dayOfWeek: 'Mon' },
	{ time: '2:10', stadiumName: '대전 한화생명 이글스 파크', team1: '한화', teamImg1: '/SPORTS_PROJECT/public/images/user_img1.jpg', score1: 8, status: "종료", score2: 3, teamImg2: '/SPORTS_PROJECT/public/images/user_img1.jpg', team2: '삼성', league: "KBO", detail: '/match/matchResult', dayOfWeek: 'Tues' },
	{ time: '3:10', stadiumName: '롯데 자이언츠 사직야구장', team1: '롯데', teamImg1: '/SPORTS_PROJECT/public/images/user_img1.jpg', score1: 3, status: "종료", score2: 1, teamImg2: '/SPORTS_PROJECT/public/images/user_img1.jpg', team2: 'NC', league: "KBO", detail: '/match/matchResult', dayOfWeek: 'Wedn' },
	{ time: '4:10', stadiumName: '기아 챔피언스 필드', team1: '기아', teamImg1: '/SPORTS_PROJECT/public/images/user_img1.jpg', score1: 5, status: "종료", score2: 2, teamImg2: '/SPORTS_PROJECT/public/images/user_img1.jpg', team2: '롯데', league: "KBO", detail: '/match/matchResult', dayOfWeek: 'Thur' },
	{ time: '5:10', stadiumName: '기아 챔피언스 필드', team1: '기아', teamImg1: '/SPORTS_PROJECT/public/images/user_img1.jpg', score1: 5, status: "종료", score2: 2, teamImg2: '/SPORTS_PROJECT/public/images/user_img1.jpg', team2: '롯데', league: "KBO", detail: '/match/matchResult', dayOfWeek: 'Fri' },
	{ time: '6:10', stadiumName: '대전 한화생명 이글스 파크', team1: '한화', teamImg1: '/SPORTS_PROJECT/public/images/user_img1.jpg', score1: 8, status: "종료", score2: 3, teamImg2: '/SPORTS_PROJECT/public/images/user_img1.jpg', team2: '삼성', league: "KBO", detail: '/match/matchResult', dayOfWeek: 'Sat' },
	{ time: '7:10', stadiumName: '롯데 자이언츠 사직야구장', team1: '롯데', teamImg1: '/SPORTS_PROJECT/public/images/user_img1.jpg', score1: 3, status: "종료", score2: 1, teamImg2: '/SPORTS_PROJECT/public/images/user_img1.jpg', team2: 'NC', league: "KBO", detail: '/match/matchResult', dayOfWeek: 'Sun' },
	{ time: '8:10', stadiumName: '기아 챔피언스 필드', team1: '기아', teamImg1: '/SPORTS_PROJECT/public/images/user_img1.jpg', score1: 5, status: "종료", score2: 2, teamImg2: '/SPORTS_PROJECT/public/images/user_img1.jpg', team2: '롯데', league: "KBO", detail: '/match/matchResult', dayOfWeek: 'Mon' },
	{ time: '9:10', stadiumName: '대전 한화생명 이글스 파크', team1: '한화', teamImg1: '/SPORTS_PROJECT/public/images/user_img1.jpg', score1: 8, status: "종료", score2: 3, teamImg2: '/SPORTS_PROJECT/public/images/user_img1.jpg', team2: '삼성', league: "KBO", detail: '/match/matchResult', dayOfWeek: 'Tues' },
	{ time: '10:10', stadiumName: '롯데 자이언츠 사직야구장', team1: '롯데', teamImg1: '/SPORTS_PROJECT/public/images/user_img1.jpg', score1: 3, status: "종료", score2: 1, teamImg2: '/SPORTS_PROJECT/public/images/user_img1.jpg', team2: 'NC', league: "KBO", detail: '/match/matchResult', dayOfWeek: 'Wedn' },
	{ time: '11:10', stadiumName: '기아 챔피언스 필드', team1: '기아', teamImg1: '/SPORTS_PROJECT/public/images/user_img1.jpg', score1: 5, status: "종료", score2: 2, teamImg2: '/SPORTS_PROJECT/public/images/user_img1.jpg', team2: '롯데', league: "KBO", detail: '/match/matchResult', dayOfWeek: 'Thur' },
	{ time: '12:10', stadiumName: '대전 한화생명 이글스 파크', team1: '한화', teamImg1: '/SPORTS_PROJECT/public/images/user_img1.jpg', score1: 8, status: "종료", score2: 3, teamImg2: '/SPORTS_PROJECT/public/images/user_img1.jpg', team2: '삼성', league: "KBO", detail: '/match/matchResult', dayOfWeek: 'Fri' },
	{ time: '13:10', stadiumName: '롯데 자이언츠 사직야구장', team1: '롯데', teamImg1: '/SPORTS_PROJECT/public/images/user_img1.jpg', score1: 3, status: "종료", score2: 1, teamImg2: '/SPORTS_PROJECT/public/images/user_img1.jpg', team2: 'NC', league: "KBO", detail: '/match/matchResult', dayOfWeek: 'Sat' },
];

function populateSchedule() {
    const days = {
        "Mon": document.getElementById("Mon"),
        "Tues": document.getElementById("Tues"),
        "Wedn": document.getElementById("Wedn"),
        "Thur": document.getElementById("Thur"),
        "Fri": document.getElementById("Fri"),
        "Sat": document.getElementById("Sat"),
        "Sun": document.getElementById("Sun")
    };

    rawData.forEach(match => {
        const row = document.createElement("tr");
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
        days[match.dayOfWeek].appendChild(row);
    });
}

function showSchedule(day) {
    document.querySelectorAll('.schedule').forEach(schedule => {
        schedule.classList.add('hidden');
    });

    document.getElementById(day).classList.remove('hidden');
}

document.addEventListener('DOMContentLoaded', populateSchedule);

let currentDate = new Date();
function updateDate() {
    const year = currentDate.getFullYear();
    const month = String(currentDate.getMonth() + 1).padStart(2, '0');
    const date = String(currentDate.getDate()).padStart(2, '0');
    const days = ['일', '월', '화', '수', '목', '금', '토'];
    const day = days[currentDate.getDay()];
    const dayShort = ['Sun', 'Mon', 'Tues', 'Wedn', 'Thur', 'Fri', 'Sat'][currentDate.getDay()];

    document.getElementById('currentDate').textContent = `${year}.${month}.${date}(${day})`;
    showSchedule(dayShort);
}

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
        console.log("해당 날짜에 일정이 없습니다.");
    }

    const request_url = `${contextPath}/api/match/list`;
    $.ajax({
        type: "POST",
        url: request_url,
        data: {
            day
        },
        async: false,
        dataType: "json",
        success: function(res) {
            var listData = res.matches;
            listData.forEach(match => {
                const row = document.createElement("tr");
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
                scheduleElement.appendChild(row);
            });
        },
        error: function(request, status, error) {
            console.log(request);
            console.log(status);
            console.log(error);
        }
    });
}

document.addEventListener('DOMContentLoaded', function() {
    updateDate();
});